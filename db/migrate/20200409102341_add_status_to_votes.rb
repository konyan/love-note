class AddStatusToVotes < ActiveRecord::Migration[6.0]
  def change
    add_column :votes, :status, :integer, default:0,limit:1
  end
end
