class Product < ApplicationRecord
    validates :name, presence: true,
    length: { minimum: 3 }
    validates :price, presence: true,
    length: { minimum: 2 }

    has_one_attached :image
    belongs_to :category


    
end
