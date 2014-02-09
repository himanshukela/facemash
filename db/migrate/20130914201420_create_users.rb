class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :email
      t.string :image
      t.string :location
      t.string :first_name
      t.string :last_name
      t.string :id_name
      t.string :link
      t.string :username
      t.string :gender
      t.string :locale
      t.string :timezone
      t.string :updated_time
      t.string :token
      t.string :urls
      t.string :oauth_token
      t.datetime :oauth_expires_at

      t.timestamps
    end
  end
end
