class Prototype < ApplicationRecord
  [:title, :catch_copy, :concept, :image].each do |v|
    validates v, presence: true
  end

  belongs_to :user
  has_many :comments
  has_one_attached :image
end
