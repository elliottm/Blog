class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :direction
      t.references :task, index: true

      t.timestamps
    end
  end
end
