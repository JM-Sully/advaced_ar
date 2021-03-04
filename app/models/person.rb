class Person < ApplicationRecord
  has_one :personal_info
  has_many :jobs
end
