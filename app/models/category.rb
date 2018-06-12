class Category < ApplicationRecord
  has_many :events, optional: true
end
