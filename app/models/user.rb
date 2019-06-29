class User < ApplicationRecord
  has_one_attached :iris

  def self.authenticate(email, password)
    User.where(email: email, password: password).first
  end
end
