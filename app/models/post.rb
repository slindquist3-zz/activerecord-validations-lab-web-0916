class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 50}
  validates :summary, length: {maximum: 100}
  validates :category, inclusion: { in: ["Fiction", "Non-Fiction"] }
  validate :clickbait

def clickbait
    bait = ["Won't Believe", "Secret", "Top" "Guess"]
    if title && bait.none?{ |element| title.include?(element)}
        errors.add(:title, "make more clickbaity")
    end
 end

end
