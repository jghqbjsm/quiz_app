class Question < ActiveRecord::Base
    self.table_name = 'question'
    self.primary_key = :QuestionID

    has_many :optionanswers, :class_name => 'Optionanswer', :foreign_key => :QuestionID
    belongs_to :typequestion, :class_name => 'Typequestion', :foreign_key => :TypeQuestionID
    has_many :questionnairequestions, :class_name => 'Questionnairequestion', :foreign_key => :QuestionID
    has_many :useranswers, :class_name => 'Useranswer', :foreign_key => :QuestionID
end
