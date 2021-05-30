class Detalle < ApplicationRecord
  belongs_to :Prestamo
  belongs_to :libro
end
