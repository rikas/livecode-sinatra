class RenameRatingToVotesOnRestaurants < ActiveRecord::Migration[6.0]
  def change
    # add_column
    # change_column :restaurants, :votes, :float
    # delete_column
    rename_column :restaurants, :rating, :votes
  end
end
