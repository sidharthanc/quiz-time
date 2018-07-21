# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
  question_1 = Question.create(:description => "Kerala Institute of Local Administration (KILA) is located at")
  question_1.save!
  question_2 = Question.create(:description => "First computerized panchayat in kerala")
  question_2.save!
  #option table starting....
   option_1 = Option.create(:question_id=>question_1.id,:description => "Thrissur")
   option_1.save!
   option_2 = Option.create(:question_id=>question_1.id,:description => "Kochi")
   option_2.save!
   option_3 = Option.create(:question_id=>question_1.id,:description => "Thiruvanathapuram")
   option_3.save!
   option_4 = Option.create(:question_id=>question_1.id,:description => "Kollam")
   option_4.save!
   option_5 = Option.create(:question_id=>question_2.id,:description => "Vettikavala")
   option_5.save!
   option_6 = Option.create(:question_id=>question_2.id,:description => "Vellanad")
   option_6.save!
   option_7 = Option.create(:question_id=>question_2.id,:description => "Aryanadu")
   option_7.save!
   option_8 = Option.create(:question_id=>question_2.id,:description => "Parassala")
   option_8.save!
   ########################end options#########

   ##############answer table#########
   answer1 = Answer.create(:question_id =>question_1.id.to_i,:option_id=>option_1.id.to_i)
   answer1.save!
   answer2 = Answer.create(:question_id =>question_2.id.to_i,:option_id=>option_6.id.to_i)
   answer2.save!

   ################end###############

#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
