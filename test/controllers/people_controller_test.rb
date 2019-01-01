require 'test_helper'

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get people_url
    assert_response :success
  end

  test "should get new" do
    get new_person_url
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post people_url, params: { person: { address1: @person.address1, address2: @person.address2, city: @person.city, country: @person.country, dateofbirth: @person.dateofbirth, department: @person.department, firstname: @person.firstname, gender: @person.gender, homephone: @person.homephone, lastname: @person.lastname, mobile: @person.mobile, office: @person.office, personalemail: @person.personalemail, position: @person.position, postcode: @person.postcode, reports: @person.reports, state: @person.state, title: @person.title, user_id: @person.user_id, workemail: @person.workemail } }
    end

    assert_redirected_to person_url(Person.last)
  end

  test "should show person" do
    get person_url(@person)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_url(@person)
    assert_response :success
  end

  test "should update person" do
    patch person_url(@person), params: { person: { address1: @person.address1, address2: @person.address2, city: @person.city, country: @person.country, dateofbirth: @person.dateofbirth, department: @person.department, firstname: @person.firstname, gender: @person.gender, homephone: @person.homephone, lastname: @person.lastname, mobile: @person.mobile, office: @person.office, personalemail: @person.personalemail, position: @person.position, postcode: @person.postcode, reports: @person.reports, state: @person.state, title: @person.title, user_id: @person.user_id, workemail: @person.workemail } }
    assert_redirected_to person_url(@person)
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete person_url(@person)
    end

    assert_redirected_to people_url
  end
end
