class Statement < ActiveRecord::Base
  attr_accessor :lineitem_id, :name, :detail, :lineitems_attributes
  has_many :lineitems
  accepts_nested_attributes_for :lineitems, allow_destroy: true
end
