class Schedule < ApplicationRecord
  belongs_to :doctor

  validates :doctor_id, presence: true
  validates :user_id, presence: true
  validates :start, presence: true
  validates :end, presence: true
  
end
