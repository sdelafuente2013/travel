# frozen_string_literal: true

class PostPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def dashboard_user?
    true if @user.role == 'viajero'
  end

  def dashboard_guide?
    true if @user.role == 'guia'
  end

  def dashboard_owner?
    true if @user.role == 'admin'
  end

  def new_user?
    true if @user.role == 'admin'
  end

  def create_user?
    true if @user.role == 'admin'
  end

  def new_tour_guide?
    true if @user.role == 'guia'
  end

  def create_tour_guide?
    true if @user.role == 'guia'
  end
end
