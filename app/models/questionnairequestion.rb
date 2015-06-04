class Questionnairequestion < ActiveRecord::Base
    self.table_name = 'questionnairequestion'


    belongs_to :questionnaire, :class_name => 'Questionnaire', :foreign_key => :QuestionnaireID
    belongs_to :question, :class_name => 'Question', :foreign_key => :QuestionID
end
