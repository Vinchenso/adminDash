class Lineitem < ActiveRecord::Base
  attr_accessor :amount, :date, :description
  belongs_to :statement
end
