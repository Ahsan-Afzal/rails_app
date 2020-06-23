class User < ApplicationRecord
  has_one :shopping_cart, :dependent => :destroy
 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         def is_admin?
          return self.admin
         end
end
