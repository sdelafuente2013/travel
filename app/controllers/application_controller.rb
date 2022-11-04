# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit::Authorization
  def after_sign_in_path_for(resource)
    return owners_dashboard_path if current_or_guest_member.role == 'admin'
    return users_dashboard_path if current_or_guest_member.role == 'viajero'
    return guides_dashboard_path if current_or_guest_member.role == 'guia'
  end

  # Pundit: allow-list approach
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?
  skip_after_action :verify_authorized, only: :show, if: -> { params[:controller] == 'high_voltage/pages' }

  def pundit_user
    current_or_guest_member
  end

  private
    def skip_pundit?
      devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
    end
end
