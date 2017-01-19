class ConfigurationController < ApplicationController
  def index
	  @phrase = Phrase.new
	  @bg = Bg.new
  end
end
