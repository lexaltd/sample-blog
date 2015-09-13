class AddUsername < ActiveRecord::Migration
  def change
    #http://api.rubyonrails.org/classes/ActiveRecord/Migration.html
    add_column :users, :username, :string
  end
end
