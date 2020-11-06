class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  [:name, :profile, :occupation, :position].each do |v|
    validates v, presence: true
  end

  has_many :prototypes
  has_many :comments
end
