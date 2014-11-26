class Stavka < ActiveRecord::Base
	belongs_to :faktura
  #validates :naziv , :faktura_id , presence: true

end
