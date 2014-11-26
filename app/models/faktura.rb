class Faktura < ActiveRecord::Base
	has_many :stavkas
	has_one :klijent

	accepts_nested_attributes_for :stavkas, :reject_if => :all_blank, :allow_destroy => true
	accepts_nested_attributes_for :klijent
end

#faktura = Faktura.new
#faktura.valid?  #=> false
#faktura.errors.messages  #=> {:naziv=>["ne smije biti prazno"]}

#faktura = Faktura.new(naziv: "Neka Faktura")
#faktura.valid?  #=> true
#faktura.errors.messages  #=> {}


  #validates :naziv , :klijent_id , presence: true