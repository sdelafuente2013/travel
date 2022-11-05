# frozen_string_literal: true

class OwnersController < ApplicationController
  before_action :authenticate_member!
  def dashboard_owner
    @user = {
      names: ['María Carmen', 'Antonio', 'José Manuel', 'Hugo', 'Mateo', 'Lucía', 'Sofía', 'Martina', 'Valeria', 'Alejandro', 'Pablo', 'Alvaro', 'Daniela'],
      rol: ['Guía', 'Viajero'],
      status: ['Activo', 'Desactivado'],
      email: ['example@example.com'],
      travel_ofert: [3, 4, 5, 6, 7, 8, 9, 10],
      travel_contrac: [1, 2, 3, 4, 5]
    }
    authorize(Post)
  end
end
