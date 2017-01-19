class BgsController < ApplicationController
  def create
	  bg = Bg.new(bg_params)
	  bg.save!
  end
  private
  def bg_params
	  params.require(:bg).permit(:url)
  end
end
