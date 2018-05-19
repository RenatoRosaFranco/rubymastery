# string:sanatizer
class Lesson < ApplicationRecord
  self.table_name = 'lessons'
  self.primary_key = 'id'

  # Relationships
  # @implemented
  belongs_to :course, optional: true
  belongs_to :user
end
