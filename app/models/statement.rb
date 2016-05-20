class Statement < ActiveRecord::Base
  has_many :lineitems
  accepts_nested_attributes_for :lineitems, allow_destroy: true

  def initialize_form

              ["Opening Balance",
               "Monthly Rent Charged",
               "Water Billed to tenant",
               "Refuse",
               "Sewerage",
               "VAT",
               "Water Paid by Tenant",
               "Rent Recieved by Tenant",
               "Closing Balance",
               "Agent Commission",
               "Rates Paid by Agent",
               "Payment to Owner"]
  end
end
