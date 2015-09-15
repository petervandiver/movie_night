class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :title
      t.string :location

      t.timestamps null: false
    end
  end
end
