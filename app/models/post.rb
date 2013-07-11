class Post < ActiveRecord::Base
  attr_accessible :text, :title
has_many :comments, :dependent=> :destroy
validates :title,uniqueness:true, presence: true,
		length: {minimum:3 }
end
