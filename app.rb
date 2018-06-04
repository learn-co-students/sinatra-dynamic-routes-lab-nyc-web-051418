require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number]
    @squared_num = @num.to_i * @num.to_i
    "#{@squared_num.to_s}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @phrase_arr = []
    @num = params[:number].to_i
    @num.times do |i|
      @phrase_arr << @phrase
    end
    "#{@phrase_arr}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @operation == 'add'
      sum = @num1 + @num2
      "#{sum.to_s}"
    elsif @operation == 'subtract'
      diff = @num1 - @num2
      "#{diff.to_s}"
    elsif @operation == 'multiply'
      product = @num1 * @num2
      "#{product.to_s}"
    elsif @operation == 'divide'
      remainder = @num1 / @num2
      "#{remainder.to_s}"
    end
  end
end
