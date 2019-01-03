class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.references :user, foreign_key: true
      t.string :firstname
      t.string :lastname
      t.string :perferedname
      t.date :dateofbirth
      t.string :gender
      t.string :personalemail
      t.string :workemail
      t.string :mobile
      t.string :homephone
      t.string :workphone
      t.string :address1
      t.string :address2
      t.string :city
      t.string :postcode
      t.string :state
      t.string :country
      t.string :department
      t.string :office
      t.string :reportsto
      t.string :positiontitle
      t.date :startdate
      t.date :finsihdate
      t.string :customtext1
      t.string :customtext2
      t.string :customtext3
      t.string :customtext4
      t.string :customtext5
      t.string :customtext6
      t.string :customtext7
      t.string :customtext8
      t.string :customtext9
      t.string :customtext10
      t.string :customtext11
      t.string :customtext12
      t.date :customdate1
      t.date :customdate2
      t.date :customdate3
      t.date :customdate4
      t.date :customdate5

      t.timestamps
    end
  end
end
