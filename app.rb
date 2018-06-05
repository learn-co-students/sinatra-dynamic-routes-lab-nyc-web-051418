require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end
  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number * @number
    "#{@square}"
  end
  get '/say/:number/:phrase' do
    @storage = ' '
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do
      @storage += @phrase
    end
    "#{@storage}"
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  get '/:operation/:number1/:number2' do
    case params[:operation]
    when  "add"
      @value = params[:number1].to_i + params[:number2].to_i
      "#{@value}"
    when "subtract"
      @value = params[:number1].to_i - params[:number2].to_i
      "#{@value}"
    when "multiply"
      @value = params[:number1].to_i * params[:number2].to_i
      "#{@value}"
    when "divide"
      @value = params[:number1].to_i / params[:number2].to_i
      "#{@value}"
    end
  end
end
