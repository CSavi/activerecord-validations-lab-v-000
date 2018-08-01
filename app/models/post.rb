class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: {in: %w(Fiction Non-Fiction),
    message: "%{value} is not a valid category"}

  validate :clickbait?


  def clickbait?
    unless ["Won't Believe" || "Secret" || "Top [number]" || "Guess"
      errors.add(:clickbait-y, "false")
    end
  end
end
