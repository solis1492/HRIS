class User < ActiveRecord::Base
<<<<<<< HEAD
  
  has_secure_password
  validates_presence_of :password_digest, :on => :create
  belongs_to :campaign
  belongs_to :role

 def self.validate_login(name,password_digest)
 	user = User.find_by_name(name)

 	if user && user.password_digest == password_digest
 		user
 	else
 		nil
 	end
 end



=======
  belongs_to :campaign
  belongs_to :role
>>>>>>> login&logout
end
