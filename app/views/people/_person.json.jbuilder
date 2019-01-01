json.extract! person, :id, :user_id, :firstname, :lastname, :personalemail, :workemail, :mobile, :homephone, :address1, :address2, :city, :postcode, :state, :country, :dateofbirth, :gender, :department, :office, :reports, :position, :title, :created_at, :updated_at
json.url person_url(person, format: :json)
