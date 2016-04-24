class Grupo < ActiveRecord::Base
	has_one :pessoas
	has_one :integrantes
end
