class Collection < ActiveRecord::Base
  has_many :halls
  has_many :exhibits  

  validates :c_name, presence: true
  validates :description, presence: true
  validates :date_begin, presence: true
  validates :date_end, presence: true
end