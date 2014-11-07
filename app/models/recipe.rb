class Recipe < ActiveRecord::Base
  belongs_to(:book)
	has_and_belongs_to_many :ingredients

end