class PhrasesController < ApplicationController
  def index
	  Phrase.all.each do |bg|
		  bg.seen = false
		  bg.save!
	  end
  end

  def new
  end

  def create
	  @phrase = Phrase.new(phrase_params)
	  @phrase.save!
  end

  def update
  end

  def destroy
  end
  private 
  def phrase_params
	  params.require(:phrase).permit(:phrase,:author,:seen)
  end
  end
