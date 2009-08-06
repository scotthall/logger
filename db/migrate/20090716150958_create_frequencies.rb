class CreateFrequencies < ActiveRecord::Migration
  def self.up
    create_table :frequencies do |t|
      t.float :frequency
      t.string :modulation
      t.string :radio
      t.string :date
      t.string :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :frequencies
  end
end
