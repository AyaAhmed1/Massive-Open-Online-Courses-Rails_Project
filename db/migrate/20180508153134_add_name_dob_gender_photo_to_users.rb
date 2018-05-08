class AddNameDobGenderPhotoToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :dob, :date
    add_column :users, :gender, :integer
    add_column :users, :photo, :string
  end
end
