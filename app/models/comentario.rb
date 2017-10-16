class Comentario < ApplicationRecord
	validates_presence_of :usuario, :texto, :rate
	validates :rate, numericality: {only_integer: true, less_than: 6, greater_than:0}
end
