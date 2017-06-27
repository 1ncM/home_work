class Train < ApplicationRecord
  validates :number, presence: true
  belongs_to :route
  has_many :tickets
  has_many :wagons

  def sorted_wagons
    if self.sorting_wagons
      self.wagons.asc
    else
      self.wagons.desc
    end
  end
end
