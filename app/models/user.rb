class User < ApplicationRecord
    before_save {self.email = email.downcase}
    has_many  :articles, dependent: :destroy
    validates :username, presence: true , 
                               uniqueness: {case_sensitive: true},
                                length: {minimum: 2 ,maximum: 25}
    validates :email, presence: true , length: {maximum: 100}
    has_secure_password




end