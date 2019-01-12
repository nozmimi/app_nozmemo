class CreateTestDbs < ActiveRecord::Migration[5.2]
  def change
    create_table :test_dbs do |t|
      t.string :year

      t.timestamps
    end
  end
end
