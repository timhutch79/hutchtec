class PeopleController < InheritedResources::Base

  private

    def person_params
      params.require(:person).permit(:user_id, :firstname, :lastname, :personalemail, :workemail, :mobile, :homephone, :address1, :address2, :city, :postcode, :state, :country, :dateofbirth, :gender, :department, :office, :reports, :position, :title)
    end
end

