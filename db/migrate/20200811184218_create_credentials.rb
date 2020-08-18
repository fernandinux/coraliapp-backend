class CreateCredentials < ActiveRecord::Migration[6.0]
  def change
    create_table :credentials do |t|
      t.string :body
      t.string :code
      t.string :type
      t.string :status
      t.string :dni_user
      t.string :email_user
      t.date :expiration_at
      t.references :user, null: true, foreign_key: true
      t.references :event, null: true, foreign_key: true
      t.timestamps
    end
  end
end