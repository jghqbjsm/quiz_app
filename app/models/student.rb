class Student < ActiveRecord::Base
    self.table_name = 'student'
    self.primary_key = :StudentID

    belongs_to :course, :class_name => 'Course', :foreign_key => :CourseID
end
