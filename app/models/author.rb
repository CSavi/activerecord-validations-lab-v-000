class Author < ActiveRecord::Base
  validates :name,
  validates :phone_number, length: { is: 10 }

end
