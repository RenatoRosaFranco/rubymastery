# string:sanatizer
class Course < ApplicationRecord
  self.table_name = 'courses'
  self.primary_key = 'id'

  # Relationships
  # @implemented
  has_many :lessons, dependent: destroy
  belongs_to :user
end
