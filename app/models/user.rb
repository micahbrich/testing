class User < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true

  def first_name
    names.first
  end

  def last_name
    names.last if names.count > 1
  end

  private 

  def names
    name.split(" ")
  end

end
