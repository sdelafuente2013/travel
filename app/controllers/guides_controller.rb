class GuidesController < ApplicationController
  def info
    GuideMailer.formulario.deliver_now
  end

  def form
    #  Implement
  end
end
