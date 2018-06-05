require_relative 'config/environment'

class App < Sinatra::Base
  get ('/reversename/:name') {
    @name = params[:name]
    "#{@name.reverse}" }

    get ('/square/:number') {
      @number = params[:number].to_i
      "#{@number * @number}" }




     get '/say/:number/:phrase' do
        final_string = ""
        (params[:number].to_i).times do
          final_string += "#{params[:phrase]}\n"
        end
        final_string
        end


    get ('/say/:word1/:word2/:word3/:word4/:word5') {
      @word1, @word2, @word3, @word4, @word5 = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]

        "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}." }

    get ('/:operation/:number1/:number2') {
      @operation = params[:operation]
      @number1, @number2 =  params[:number1].to_i, params[:number2].to_i

      if @operation == "multiply"
        "#{@number1 * @number2}"
      elsif @operation == "add"
        "#{@number1 + @number2}"
      elsif @operation == "subtract"
        "#{@number1 - @number2}"
      elsif @operation == "divide"
        "#{@number1 / @number2}"
      else

      end }
end
