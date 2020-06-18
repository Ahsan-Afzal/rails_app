class Category < ApplicationRecord
    def get_parent_id(i)
        return Category.where(id: i).parent_id
    end
end
