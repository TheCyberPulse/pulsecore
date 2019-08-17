class User < ApplicationRecord
  acts_as_paranoid
  has_paper_trail
  devise :database_authenticatable, :rememberable, :validatable
end
