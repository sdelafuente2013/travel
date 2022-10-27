class GuidesController < ApplicationController
  def info
    # Implement
  end

  def form
    GuideMailer.formulario.deliver_now
  end
end
