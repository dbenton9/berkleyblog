class AddDefaultValueToStatus < ActiveRecord::Migration[6.0]
  def change
    def up
      change_column :posts, :status, :boolean, default: false
    end
    
    def down
      change_column :posts, :status, :boolean, default: nil
    end
  end
end
