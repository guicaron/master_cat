class Booking < ApplicationRecord
  belongs_to :chef
  belongs_to :user
  validates :starting_date, presence: true
  validates :finishing_date, presence:true
  validate :finishing_date_after_starting_date



  private
  def finishing_date_after_starting_date
    if finishing_date < starting_date
      errors.add(:finishing_date, "must be after the start date")
    end
  end

end
