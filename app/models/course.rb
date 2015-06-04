class Course < ActiveRecord::Base
    self.table_name = 'course'
    self.primary_key = :ID

    has_many :students, :class_name => 'Student'
    has_many :units, :class_name => 'Unit'
end
