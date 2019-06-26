class User < ApplicationRecord

  def self.authenticate(email, password)
    User.where(email: email, password: password).first
  end
end
