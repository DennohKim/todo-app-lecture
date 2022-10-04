class User < ApplicationRecord
    #Secure password
    has_secure_password

    #Validate info
    validates :email, presence: true, uniqueness: true
    validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}
    validates :username, presence: true, uniqueness: true

end
