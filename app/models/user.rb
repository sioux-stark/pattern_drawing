class User < ActiveRecord::Base
   has_many :drawings

   has_secure_password

  def self.confirm(email_param, password_param)
    user = User.find_by({email: email_param})
    user.authenticate(password_param)
  end

end