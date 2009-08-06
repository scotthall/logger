#---
# Excerpted from "Agile Web Development with Rails, 3rd Ed.",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails3 for more book information.
#---
class AddCallDigimodeRstNameQthLocatorToFrequency < ActiveRecord::Migration
  def self.up
    add_column :frequencies, :call,             :string
    add_column :frequencies, :digimode,         :string
    add_column :frequencies, :own_station_rst,  :string
    add_column :frequencies, :peer_station_rst, :string
    add_column :frequencies, :s_meter,          :string
    add_column :frequencies, :name,             :string
    add_column :frequencies, :qth,              :string
    add_column :frequencies, :locator,          :string
  end

  def self.down
    remove_column :frequencies, :call,             :string
    remove_column :frequencies, :digimode,         :string
    remove_column :frequencies, :own_station_rst,  :string
    remove_column :frequencies, :peer_station_rst, :string
    remove_column :frequencies, :s_meter,          :string
    remove_column :frequencies, :name,             :string
    remove_column :frequencies, :qth,              :string
    remove_column :frequencies, :locator,          :string
  end
end
