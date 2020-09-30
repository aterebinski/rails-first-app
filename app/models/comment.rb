class Comment < ApplicationRecord
  belongs_to :post
  validates :body, presence: :true
  validates :author, presence: {message: "Musisz podać autora"}

  before_create :check_author

  private

  def check_author
    self.author = self.author.to_s.titleize
  end
end
