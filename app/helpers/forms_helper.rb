# frozen_string_literal: true

module FormsHelper
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
