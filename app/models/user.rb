class User < ActiveRecord::Base
  has_many :open_id_credentials
  has_many :email_credentials
end
