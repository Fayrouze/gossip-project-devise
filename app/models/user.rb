class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :gossips

         attr_accessor :code
  validates :code,
    on: :create,
    presence: true,
    inclusion: { in: ["1201PARIS"] } 

end
