class VendorStamp < ApplicationRecord
  belongs_to :stamp
  belongs_to :vendor

  validates :stamp_id, uniqueness: { scope: :vendor_id }
end
