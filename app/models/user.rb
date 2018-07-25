class User < ApplicationRecord
  has_many :invests
  has_many :marketassets, through: :invests
end
