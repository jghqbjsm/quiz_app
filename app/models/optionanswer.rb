class Optionanswer < ActiveRecord::Base
    self.table_name = 'optionanswer'
    self.primary_key = :ID

    belongs_to :question, :class_name => 'Question', :foreign_key => :QuestionID
end
