require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].to_s.reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square_number = @number * @number
    "#{@square_number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase].to_s
    @repeat = @phrase * @number
    "#{@repeat}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  @word1 = params[:word1].to_s
  @word2 = params[:word2].to_s
  @word3 = params[:word3].to_s
  @word4 = params[:word4].to_s
  @word5 = params[:word5].to_s
  "#{@word1}" + " #{@word2}" + " #{@word3}" + " #{@word4}" + " #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    # binding.pry
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case params[:operation]
    when 'add'
      @answer = (@num1 + @num2)
    when 'subtract'
      @answer = (@num1 - @num2)
    when 'multiply'
      @answer = (@num1 * @num2)
    when 'divide'
      @answer = (@num1 / @num2)
    end
    "#{@answer}"
  end
end

#     if @operation == "add"
#       @result = @num1 + @num2
#       elsif @operation == "subtract"
#         @result = @num1 - @num2
#       elsif @operation == "multiply"
#         @result = @num1 * @num2
#       elsif @operation == "divide"
#         @resut = @num1 / @num2
#     else
#       @result = "Not arithmetic operator"
#     end
#     "#{@result}"
# end
