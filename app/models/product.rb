class Product < ApplicationRecord
    # Validations
    validates_uniqueness_of :name

    def soft_destroy
        update(enabled: false, deleted_at: Time.now)
    end
end
