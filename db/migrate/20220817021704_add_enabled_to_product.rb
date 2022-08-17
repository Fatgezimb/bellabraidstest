class AddEnabledToProduct < ActiveRecord::Migration[6.1]
    def change
        add_column :products, :enabled, :boolean, default: true
    end
end
