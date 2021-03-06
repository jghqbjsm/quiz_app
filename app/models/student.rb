class Student < ActiveRecord::Base
    
    self.table_name = 'student'
    self.primary_key = :StudentID

    belongs_to :course, :class_name => 'Course', :foreign_key => :CourseID
    has_many :useranswers, :class_name => 'Useranswer', :foreign_key => :StudentID
     #before_save { self.Email = email.downcase }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :Email, presence: true, length: { maximum: 255 },
                   format: { with: VALID_EMAIL_REGEX },
                  uniqueness: { case_sensitive: false }
                    
    # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
