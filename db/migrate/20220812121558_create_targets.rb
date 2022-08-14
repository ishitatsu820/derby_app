class CreateTargets < ActiveRecord::Migration[6.0]
  def change
    create_table :targets do |t|
      t.integer :user_id
      t.string :target
      t.string :task
      t.string :deadline
      t.integer :kpi

      t.timestamps
    end
  end
end
