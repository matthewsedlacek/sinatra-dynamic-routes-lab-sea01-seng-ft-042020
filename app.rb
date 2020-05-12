require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do 
    @name = params[:name].reverse
    "#{@name}"
  end

  get "/square/:number" do
    @number = params[:number].to_i ** 2
    "#{@number}"
  end

  get "/say/:number/:phrase" do
    answer = ''

    @number_phrase = params[:number].to_i.times do
      answer += params[:phrase]
    end
    answer
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    w_1 = params[:word1]
    w_2 = params[:word2]
    w_3 = params[:word3]
    w_4 = params[:word4]
    w_5 = params[:word5]
    "#{w_1} #{w_2} #{w_3} #{w_4} #{w_5}."
  end

  get "/:operation/:number1/:number2" do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    
    case params[:operation]
      when 'add' 
        (number1 + number2).to_s
      when 'subtract'
        (number1 - number2).to_s
      when 'multiply'
        (number1 * number2).to_s
      when 'divide'
        (number1 / number2).to_s
      end
  end

end