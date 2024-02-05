class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :type
      t.json :params

      t.timestamps
    end
  end
end
