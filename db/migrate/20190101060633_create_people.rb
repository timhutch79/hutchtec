class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.references :user, foreign_key: true
      t.string :firstname
      t.string :lastname
      t.string :personalemail
      t.string :workemail
      t.string :mobile
      t.string :homephone
      t.string :address1
      t.string :address2
      t.string :city
      t.string :postcode
      t.string :state
      t.string :country
      t.date :dateofbirth
      t.string :gender
      t.string :department
      t.string :office
      t.string :reports
      t.string :position
      t.string :title

      t.timestamps
    end
  end
end
