class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
  validates :surname, presence: true
  validates :second_surname, presence: true
  validates :email, presence: true, uniqueness: true
  
  enum user_roles: { admin: 0, writes: 1, reader: 2}

end
