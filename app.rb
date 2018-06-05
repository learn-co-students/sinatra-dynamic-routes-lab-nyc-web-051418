require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @user_name = params[:name].reverse
    "Hello #{@user_name}!"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square = (@number * @number).to_s
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @string = ""
    @number.times do
      @string << @phrase
    end
    "#{@string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case @op
      when "add"
        "#{@num1 + @num2}"
      when "subtract"
        "#{@num1 - @num2}"
      when "multiply"
        "#{@num1 * @num2}"
      when "divide"
         "#{@num1 / @num2}"
    end

  end



end
