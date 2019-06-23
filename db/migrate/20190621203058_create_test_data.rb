class CreateTestData < ActiveRecord::Migration[5.2]
  def change
    create_table :test_data do |t|
      t.string :name

      t.timestamps
    end
  end
end
