class Questionnaire < ActiveRecord::Base
    self.table_name = 'questionnaire'
    self.primary_key = :ID

    belongs_to :unit, :class_name => 'Unit', :foreign_key => :UnitID
    has_many :questionnairequestions, :class_name => 'Questionnairequestion'
end
