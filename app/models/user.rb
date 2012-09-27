class User < ActiveRecord::Base
  authenticates_with_sorcery!

  attr_accessible :email, :password, :password_confirmation
  validates :email, :presence => true, :uniqueness => true, :email_format => { :message => 'does not appear to be a valid e-mail address' }
  validates :password, :presence => true, :confirmation => true
end
