# string:sanatizer
class Profile < ApplicationRecord
  self.table_name = 'profiles'
  self.primary_key = 'id'

  # Relationships
  # @implemented
  belongs_to :user
end
