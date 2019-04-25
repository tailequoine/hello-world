class Expense < ActiveRecord::Base
  attr_accessible :category_id, :description, :user_id
end
