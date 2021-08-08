class CreateVendorStamps < ActiveRecord::Migration[6.1]
  def change
    create_table :vendor_stamps do |t|
      t.references :stamp, null: false, foreign_key: true
      t.references :vendor, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
