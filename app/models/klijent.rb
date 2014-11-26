class Klijent < ActiveRecord::Base
	belongs_to :faktura
  validates :naziv , presence: true
end
