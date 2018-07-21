class Answer < ActiveRecord::Base
	has_one :question
	has_one :option
end
