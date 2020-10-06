class Schedule < ApplicationRecord
  belongs_to :doctor

  validates :doctor_id, presence: true
  validates :user_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  
end
