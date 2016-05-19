class Statement < ActiveRecord::Base
  has_many :lineitems
  accepts_nested_attributes_for :lineitems, allow_destroy: true
end
