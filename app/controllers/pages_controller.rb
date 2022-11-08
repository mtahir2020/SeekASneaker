class PagesController < ApplicationController
  def home
  end

  def myorders
    current_user.present? || @sneakers = db.execute(("SELECT * user_id FROM sneakers"))
  end
end
