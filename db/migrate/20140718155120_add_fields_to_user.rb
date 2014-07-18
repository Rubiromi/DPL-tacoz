class AddFieldsToUser < ActiveRecord::Migration

	def change
		add_column :users, :provider, :string
		add_column :users, :hid, :string

		add_index :users, [:provider, :hid]
	end
end
