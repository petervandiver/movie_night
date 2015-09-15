class AddPersonToVote < ActiveRecord::Migration
  def change
    add_column :votes, :person, :string
  end
end
