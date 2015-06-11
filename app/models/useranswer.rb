class Useranswer < ActiveRecord::Base
    self.table_name = 'useranswer'


    belongs_to :question, :class_name => 'Question', :foreign_key => :QuestionID
    belongs_to :student, :class_name => 'Student', :foreign_key => :StudentID
end
