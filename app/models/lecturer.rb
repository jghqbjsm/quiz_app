class Lecturer < ActiveRecord::Base
    self.table_name = 'lecturer'
    self.primary_key = :ID

end
