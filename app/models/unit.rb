class Unit < ActiveRecord::Base
    self.table_name = 'unit'
    self.primary_key = :ID

    has_many :questionnaires, :class_name => 'Questionnaire'
    belongs_to :course, :class_name => 'Course', :foreign_key => :CourseID
    has_many :unitlecturers, :class_name => 'Unitlecturer'
end
