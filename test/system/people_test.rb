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
    fill_in "Dateofbirth", with: @person.dateofbirth
    fill_in "Department", with: @person.department
    fill_in "Firstname", with: @person.firstname
    fill_in "Gender", with: @person.gender
    fill_in "Homephone", with: @person.homephone
    fill_in "Lastname", with: @person.lastname
    fill_in "Mobile", with: @person.mobile
    fill_in "Office", with: @person.office
    fill_in "Personalemail", with: @person.personalemail
    fill_in "Position", with: @person.position
    fill_in "Postcode", with: @person.postcode
    fill_in "Reports", with: @person.reports
    fill_in "State", with: @person.state
    fill_in "Title", with: @person.title
    fill_in "User", with: @person.user_id
    fill_in "Workemail", with: @person.workemail
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
    fill_in "Dateofbirth", with: @person.dateofbirth
    fill_in "Department", with: @person.department
    fill_in "Firstname", with: @person.firstname
    fill_in "Gender", with: @person.gender
    fill_in "Homephone", with: @person.homephone
    fill_in "Lastname", with: @person.lastname
    fill_in "Mobile", with: @person.mobile
    fill_in "Office", with: @person.office
    fill_in "Personalemail", with: @person.personalemail
    fill_in "Position", with: @person.position
    fill_in "Postcode", with: @person.postcode
    fill_in "Reports", with: @person.reports
    fill_in "State", with: @person.state
    fill_in "Title", with: @person.title
    fill_in "User", with: @person.user_id
    fill_in "Workemail", with: @person.workemail
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
