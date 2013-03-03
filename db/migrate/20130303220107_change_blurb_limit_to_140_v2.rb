class ChangeBlurbLimitTo140V2 < ActiveRecord::Migration
  	def change
		change_column :products, :blurb, :string, :limit => 140
	end
end
