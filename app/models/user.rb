class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_one :survey_response
  has_one :block2_survey_response


  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
