class Dropusers < ActiveRecord::Migration
  def change
  	drop_table :table_name
  end
end
