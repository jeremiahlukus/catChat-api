class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable,
    :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User

  has_many :sent_snaps, class_name: "Snap", foreign_key: "user_id"
  has_many :received_snaps, class_name: "Snap", foreign_key: "recipient_id"
end
