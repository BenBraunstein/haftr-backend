class AddUserToAlumni < ActiveRecord::Migration[6.0]
  def change
    add_reference :alumnis, :user, null: false, foreign_key: true
  end
end
