class Typequestion < ActiveRecord::Base
    self.table_name = 'typequestion'
    self.primary_key = :ID

    has_many :questions, :class_name => 'Question'
end
