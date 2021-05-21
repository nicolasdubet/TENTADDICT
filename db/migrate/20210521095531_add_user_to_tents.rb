class AddUserToTents < ActiveRecord::Migration[6.0]
  def change
    add_reference :tents, :user, foreign_key: true
  end
end
