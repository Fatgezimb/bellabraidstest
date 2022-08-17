class CreateProducts < ActiveRecord::Migration[6.1]
    def change
        create_table :products do |t|
            t.string :name
            t.string :description
            t.string :image_url
            t.integer :price
            t.integer :duration_minutes

            t.timestamps
        end
    end
end
