class User < ApplicationRecord
  belongs_to :appartment, optional: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable

  def name_with_initial
    "#{name} #{surname}"
  end
end
