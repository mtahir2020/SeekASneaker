module ReviewsHelper
  def stars (number_of_stars)
    rating = "<b>Rating:</b>"
    number_of_stars.times do
      rating += '<i class="fa-solid fa-star"></i>'
    end
    rating
  end
end

