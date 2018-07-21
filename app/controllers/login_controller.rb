class LoginController < ApplicationController
  def index
  	@questions=Question.all
  end
  def check_answer
   objArray = JSON.parse(params[:tot_array])
   @count_answer=0
   objArray.each do |object|
   	puts "objjj"+object.to_s
   	question_id=object.to_s.split('#')[0]
     option_id=object.to_s.split('#')[1]
   	@answer_check=Answer.where("question_id=? and option_id=?",question_id,option_id)
   	if @answer_check.blank?
   	 else
   	 	@count_answer=@count_answer+1
   	 end
    end
    puts "total mark gott"+@count_answer.to_s
    return redirect_to mark_value_path(mark:@count_answer.to_s)	
  end
  
  def mark_value
   if params[:mark]
  		@tot_mark=params[:mark].to_s
  		puts "mark you gott"+@tot_mark.to_s
  	 end	
  end

end
