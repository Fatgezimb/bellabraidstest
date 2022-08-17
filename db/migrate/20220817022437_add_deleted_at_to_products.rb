class AddDeletedAtToProducts < ActiveRecord::Migration[6.1]
    def change
        add_column :products, :deleted_at, :datetime
    end
end
