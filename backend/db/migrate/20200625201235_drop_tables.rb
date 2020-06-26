class DropTables < ActiveRecord::Migration[6.0]
    def up
      drop_table :segues
    end
  
    def down
      raise ActiveRecord::IrreversibleMigration
    end
  end