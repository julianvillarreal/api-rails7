# frozen_string_literal: true

# Modelo para el objeto User
class User < ApplicationRecord
  validates :name, :email, :phone, :age, presence: true # Valida la presencia del campo
  validates :nickname, uniqueness: true # Valida que el nickname sea unico

  before_validation :create_nickname, on: :create # Crea el nickname

  private

  # Metodo para crear nickname segun el email del usuario
  def create_nickname
    self.nickname = email.split('@')[0]
  end
end
