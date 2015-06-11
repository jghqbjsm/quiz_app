class Lecturer < ActiveRecord::Base
    self.table_name = 'lecturer'
    self.primary_key = :ID

    has_many :unitlecturers, :class_name => 'Unitlecturer'
end
