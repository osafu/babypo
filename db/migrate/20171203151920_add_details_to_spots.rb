class AddDetailsToSpots < ActiveRecord::Migration[5.1]
  def change
    add_column :spots, :name, :text
    add_column :spots, :postal_code, :integer
    add_column :spots, :region, :text
    add_column :spots, :address, :text
    add_column :spots, :building, :text
    add_column :spots, :start_time, :string
    add_column :spots, :close_time, :string
    add_column :spots, :hot_water, :string
    add_column :spots, :female_only, :string
    add_column :spots, :female_only_room, :string
    add_column :spots, :rental_stroller, :string
    add_column :spots, :baby_chair, :string
    add_column :spots, :kids_space, :string
    add_column :spots, :microwave, :string
    add_column :spots, :sink, :string
    add_column :spots, :diapers_trash_bin, :string
    add_column :spots, :diaper_stand_count, :integer
    add_column :spots, :diaper_stand, :string
    add_column :spots, :baby_scales, :string
    add_column :spots, :memo, :text
  end
end
