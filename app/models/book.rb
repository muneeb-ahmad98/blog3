class Book < ApplicationRecord
  validates :name, length: {in: 3..9, message: "This is not valid" }, presence: true,on: :create  
    # format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
    # inclusion: { in: %w(ali aaa munee),message: "%{value} is not a valid size" }
end
