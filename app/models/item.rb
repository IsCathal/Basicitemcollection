class Item < ApplicationRecord
  belongs_to :user, optional: true
  
  validates :name, presence: true,
                  length: {minimum: 3, maximum: 50}

  validates :description, presence: true, 
                          length: {minimum: 5, maximum: 300} 
   
  def owner_name
    user.name if user_id.to_i != 0
  end
                
end