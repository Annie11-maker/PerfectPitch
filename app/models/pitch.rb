class Pitch < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :favourites, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }

  def content
    client = OpenAI::Client.new
    chatgpt_response = client.chat(parameters: {
      model: "gpt-4o-mini",
      messages: [
        { role: "user", content: "We are creating a presentation called #{name} based on #{description}. Generate 4 bullet points describing the potential problems/pain points for the second slide. Generate 4 bullet points describing the target audience for the third slide. Generate 4 bullet points describing the solution for the fourth slide. Do not include any introductory phrases like 'Here are the points'—just the bullet points." }
      ]
    })
    return chatgpt_response["choices"][0]["message"]["content"]
    # "Pain point 1\nPain point 2\nPain point 3\nPain point 4\nAudience point 1\nAudience point 2\nAudience point 3\nAudience point 4\nSolution point 1\nSolution point 2\nSolution point 3\nSolution point 4"

  end

  def related_image
    fetcher = ImageFetcher.new(name)
    fetcher.fetch_image
  end


end
