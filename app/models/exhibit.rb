class Exhibit < ActiveRecord::Base
  belongs_to :collection

  validates :e_name, presence: true
  validates :description_e, presence: true
  validates :i_value, presence: true
  validates :age, presence: true
  validates :size, presence: true
  validates :condition, presence: true

  accepts_nested_attributes_for :collection, allow_destroy: true
end
