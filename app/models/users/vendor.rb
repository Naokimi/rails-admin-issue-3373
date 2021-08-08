class Vendor < User
  has_many :vendor_stamps
  has_many :stamps, through: :vendor_stamps
end
