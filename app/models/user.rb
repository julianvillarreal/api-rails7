# frozen_string_literal: true

# Modelo para el objeto User
class User < ApplicationRecord
  validates :name, :email, :phone, :age, presence: true

  before_create :create_nickname

  private

  def create_nickname
    self.nickname = email.split('@')[0]
  end
end
