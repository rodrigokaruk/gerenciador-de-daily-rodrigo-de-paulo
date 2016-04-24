class Integrante < ActiveRecord::Base
	has_many :pessoas
	has_one :grupos
	serialize :membros
end
