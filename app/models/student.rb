class Student < ActiveRecord::Base
    self.table_name = 'student'
    self.primary_key = :StudentID

    belongs_to :course, :class_name => 'Course', :foreign_key => :CourseID
     before_save { self.email = email.downcase }

    validates :studentNumber, presence: true
    validates :email, presence: true,format: { with: VALID_EMAIL_REGEX },  uniqueness: { case_sensitive: false }


    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :password, presence: true, length: { minimum: 6 }
end
