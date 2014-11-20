class Faktura < ActiveRecord::Base
	has_many :stavkas
	has_one :klijent

	accepts_nested_attributes_for :stavkas, :reject_if => :all_blank, :allow_destroy => true
	accepts_nested_attributes_for :klijent
end
