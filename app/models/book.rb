class StartWithAValidator < ActiveModel::Validator
  def validate(record)
    unless record.name.starts_with? 'A'
      record.errors[:name] << 'Need a name starting with A please!'
    end
  end
end
class Book < ApplicationRecord
  validates_with StartWithAValidator
  validates :name, presence: true, unless: Proc.new { |book| book.auther.blank? }
  validates :name, length: {in: 3..9, message: "This is not valid" }, presence: true,
    on: :create, 
    confirmation: true, 
    uniqueness: true,
    numericality: { only_integer: true },
    length: { minimum: 2 } ,length: { maximum: 500 },
    format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" },
    inclusion: { in: %w(ali aaa munee),message: "%{value} is not a valid size" },
    exclusion: { in: %w(ali aaa munee),message: "%{value} is not a valid size" }
    
end
