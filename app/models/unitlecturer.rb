class Unitlecturer < ActiveRecord::Base
    self.table_name = 'unitlecturer'


    belongs_to :lecturer, :class_name => 'Lecturer', :foreign_key => :LecturerID
    belongs_to :unit, :class_name => 'Unit', :foreign_key => :UnitID
end
