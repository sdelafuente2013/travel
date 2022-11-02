# frozen_string_literal: true

module ApplicationHelper
  def generate_img(url_img, ciudad, pais)
    "<div class='card'>
      <img src=#{url_img}>
      <p class='name'>#{ciudad}</p>
      <p class='pais'>#{pais}</p>
    </div>"
  end
end
