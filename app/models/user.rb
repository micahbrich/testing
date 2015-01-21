class User < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true

  def first_name
    self.name.split(" ").first
  end

  def last_name
    self.name.split(" ").last if self.name.split(" ").count > 1
  end

end
