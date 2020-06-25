class Product < ApplicationRecord
    validates :name, presence: true,
    length: { minimum: 3 }
    validates :price, presence: true,
    length: { minimum: 2 }

    has_one_attached :image
    belongs_to :category

    validate :check_file_presence

    def check_file_presence
      errors.add(:image, "not added") unless image.attached?
    end
    
end
