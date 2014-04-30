require 'sinatra'

get '/' do
	"<h1>Hello, World from Sinatra</h1>"
end

get '/list' do
	animals = ['dog', 'cat', 'panda', 'giraffe']
	str = '<ol>'
	animals.each do |animal| str += "<li>#{animal}</li>"
	end
	str+= '</ol>'
end

def killer(y)
	if y == "fen"
		return "killer"
	else
		return "not killer"
	end
end

def count
	str ="54321"
	for i in 1..5
		str += "#{i}"
	end
	return str
end
get '/fen' do
	
	adj = ['sexy', 'handsome', 'strong', 'smart', "#{killer 'fen'}"]
	str = "<h1>Fen is super:</h1><ol>"
	adj.each do |a| str += "<li>#{a}</li>"
	end
	
	str+= '</ol>'
	str+= "<br />#{count}"
end

//Bading si Kevin hashahahhahahah
