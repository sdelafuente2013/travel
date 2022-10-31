# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    return owners_dashboard_path if current_member.email == 'owner@example.com'
    return users_dashboard_path if current_member.email == 'user@example.com'
    return guides_dashboard_path if current_member.email == 'guide@example.com'
  end
end
