require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
  	@name = params[:name]
  	"#{@name.reverse}"
  end

  get '/square/:number' do
  	@number = params[:number].to_i
  	"#{@number * @number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  	@words = [params[:word1],params[:word2],params[:word3],params[:word4],params[:word5]]
  	string = ""
  	4.times do |num|
  		string += @words[num] + " "
  	end
  	string += @words[4] + "."
  	"#{string}"
  end 

  get '/say/:number/:phrase' do 
  	@number = params[:number].to_i
  	@phrase = params[:phrase]
  	whole_string = ""
  	@number.times do 
  		whole_string += @phrase
  	end
  	"#{whole_string}"
  end

  get '/:operation/:number1/:number2' do
  	@operation = params[:operation]
  	@num1 = params[:number1].to_i
  	@num2 = params[:number2].to_i
  	case @operation
  		when "add"
  			"#{@num1 + @num2}"
  		when "subtract"
  			"#{@num1 - @num2}"
  		when "multiply"
  			"#{@num1 * @num2}"
  		when "divide"
  			"#{@num1.to_f / @num2}"
  		else
  			"oops! invalid operation"
  	end
  end

end