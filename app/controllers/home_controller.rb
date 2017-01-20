class HomeController < ApplicationController
  def index
	  date = Time.now
	  @greeting = greeting(date)
	  getPhrase()
	  @feed = Feed.all
  end

  def show
	  getEntries(params[:id])
  end

private 
def  greeting(date)
	case date.hour
	when 1..12
		return "¡Buenos Días!"
	when 13..15
		return "¡Buenas Tardes!"
	when 18..24
		return "¡Buenas Noches!"
	end
end
def getPhrase()
	if Phrase.count == 0 or Phrase.where(seen: false).first == nil
		@phrase = "Lo siento pero no hay nada que mostrar"
		@author = "Dile a Che Luis que se acabarón"
	else
		phraseObject = Phrase.where(seen: false).first
		@phrase = phraseObject.phrase
		@author = phraseObject.author
		phraseObject.seen = true
		phraseObject.save!
	end
end

def getEntries(id)
	feed = Feed.find(id)
	@entries = feed.entries
end

end
