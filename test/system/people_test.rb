require "application_system_test_case"

class PeopleTest < ApplicationSystemTestCase
  setup do
    @person = people(:one)
  end

  test "visiting the index" do
    visit people_url
    assert_selector "h1", text: "People"
  end

  test "creating a Person" do
    visit people_url
    click_on "New Person"

    fill_in "Address1", with: @person.address1
    fill_in "Address2", with: @person.address2
    fill_in "City", with: @person.city
    fill_in "Country", with: @person.country
    fill_in "Customdate1", with: @person.customdate1
    fill_in "Customdate2", with: @person.customdate2
    fill_in "Customdate3", with: @person.customdate3
    fill_in "Customdate4", with: @person.customdate4
    fill_in "Customdate5", with: @person.customdate5
    fill_in "Customtext1", with: @person.customtext1
    fill_in "Customtext10", with: @person.customtext10
    fill_in "Customtext11", with: @person.customtext11
    fill_in "Customtext12", with: @person.customtext12
    fill_in "Customtext2", with: @person.customtext2
    fill_in "Customtext3", with: @person.customtext3
    fill_in "Customtext4", with: @person.customtext4
    fill_in "Customtext5", with: @person.customtext5
    fill_in "Customtext6", with: @person.customtext6
    fill_in "Customtext7", with: @person.customtext7
    fill_in "Customtext8", with: @person.customtext8
    fill_in "Customtext9", with: @person.customtext9
    fill_in "Dateofbirth", with: @person.dateofbirth
    fill_in "Department", with: @person.department
    fill_in "Finsihdate", with: @person.finsihdate
    fill_in "Firstname", with: @person.firstname
    fill_in "Gender", with: @person.gender
    fill_in "Homephone", with: @person.homephone
    fill_in "Lastname", with: @person.lastname
    fill_in "Mobile", with: @person.mobile
    fill_in "Office", with: @person.office
    fill_in "Perferedname", with: @person.perferedname
    fill_in "Personalemail", with: @person.personalemail
    fill_in "Positiontitle", with: @person.positiontitle
    fill_in "Postcode", with: @person.postcode
    fill_in "Reportsto", with: @person.reportsto
    fill_in "Startdate", with: @person.startdate
    fill_in "State", with: @person.state
    fill_in "User", with: @person.user_id
    fill_in "Workemail", with: @person.workemail
    fill_in "Workphone", with: @person.workphone
    click_on "Create Person"

    assert_text "Person was successfully created"
    click_on "Back"
  end

  test "updating a Person" do
    visit people_url
    click_on "Edit", match: :first

    fill_in "Address1", with: @person.address1
    fill_in "Address2", with: @person.address2
    fill_in "City", with: @person.city
    fill_in "Country", with: @person.country
    fill_in "Customdate1", with: @person.customdate1
    fill_in "Customdate2", with: @person.customdate2
    fill_in "Customdate3", with: @person.customdate3
    fill_in "Customdate4", with: @person.customdate4
    fill_in "Customdate5", with: @person.customdate5
    fill_in "Customtext1", with: @person.customtext1
    fill_in "Customtext10", with: @person.customtext10
    fill_in "Customtext11", with: @person.customtext11
    fill_in "Customtext12", with: @person.customtext12
    fill_in "Customtext2", with: @person.customtext2
    fill_in "Customtext3", with: @person.customtext3
    fill_in "Customtext4", with: @person.customtext4
    fill_in "Customtext5", with: @person.customtext5
    fill_in "Customtext6", with: @person.customtext6
    fill_in "Customtext7", with: @person.customtext7
    fill_in "Customtext8", with: @person.customtext8
    fill_in "Customtext9", with: @person.customtext9
    fill_in "Dateofbirth", with: @person.dateofbirth
    fill_in "Department", with: @person.department
    fill_in "Finsihdate", with: @person.finsihdate
    fill_in "Firstname", with: @person.firstname
    fill_in "Gender", with: @person.gender
    fill_in "Homephone", with: @person.homephone
    fill_in "Lastname", with: @person.lastname
    fill_in "Mobile", with: @person.mobile
    fill_in "Office", with: @person.office
    fill_in "Perferedname", with: @person.perferedname
    fill_in "Personalemail", with: @person.personalemail
    fill_in "Positiontitle", with: @person.positiontitle
    fill_in "Postcode", with: @person.postcode
    fill_in "Reportsto", with: @person.reportsto
    fill_in "Startdate", with: @person.startdate
    fill_in "State", with: @person.state
    fill_in "User", with: @person.user_id
    fill_in "Workemail", with: @person.workemail
    fill_in "Workphone", with: @person.workphone
    click_on "Update Person"

    assert_text "Person was successfully updated"
    click_on "Back"
  end

  test "destroying a Person" do
    visit people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person was successfully destroyed"
  end
end
