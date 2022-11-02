# frozen_string_literal: true

module ApplicationHelper
  def generate_img(url_img, ciudad, pais)
    "<div class='card'>
      <img src=#{url_img}>
      <p class='name'>#{ciudad}</p>
      <p class='pais'>#{pais}</p>
    </div>"
  end
  def validationa(name, formulario)
    invalid = formulario.errors.include?(name)
    if invalid
      "<div class='invalid-feedback d-block'>
        #{
        formulario.errors.full_messages_for(name).each do |error_message|
          error_message
        end.first
      }
      </div>"
    end
  end

end
