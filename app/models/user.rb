class User < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true

  def first_name
    self.name.split(" ").first
  end
end
