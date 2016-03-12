class Author < ActiveRecord::Base
  has_many :posts
  has_many :posts, :dependent => :destroy
  validates :first_name, :last_name, presence: true
  def full_name
    [first_name, last_name].join(" ")
  end
end
