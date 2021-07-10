class PostImage < ApplicationRecord
  belongs_to :user
  attachment :imag
end
