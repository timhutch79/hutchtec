class PeopleController < InheritedResources::Base

  private

    def person_params
      params.require(:person).permit(:user_id, :firstname, :lastname, :perferedname, :dateofbirth, :gender, :personalemail, :workemail, :mobile, :homephone, :workphone, :address1, :address2, :city, :postcode, :state, :country, :department, :office, :reportsto, :positiontitle, :startdate, :finsihdate, :customtext1, :customtext2, :customtext3, :customtext4, :customtext5, :customtext6, :customtext7, :customtext8, :customtext9, :customtext10, :customtext11, :customtext12, :customdate1, :customdate2, :customdate3, :customdate4, :customdate5)
    end
end

