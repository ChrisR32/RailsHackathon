class PagesController < ApplicationController
  def home
 
  end

  def not_found
    render plain: "not found"
  end
end
