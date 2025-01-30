class Pitch < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :favourites, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }

  # def content
  #  client = OpenAI::Client.new
  #  chatgpt_response = client.chat(parameters: {
  #    model: "gpt-4o-mini",
  #    messages: [{ role: "user", content: "We are creating a presentation called #{name} based on #{description}. Generate 3 bullet points for a slide outlining potential problems based on #{name} and #{description}"}]
  #  })
  #  return chatgpt_response["choices"][0]["message"]["content"]
  # end
end
