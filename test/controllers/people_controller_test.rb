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
      post people_url, params: { person: { address1: @person.address1, address2: @person.address2, city: @person.city, country: @person.country, customdate1: @person.customdate1, customdate2: @person.customdate2, customdate3: @person.customdate3, customdate4: @person.customdate4, customdate5: @person.customdate5, customtext1: @person.customtext1, customtext10: @person.customtext10, customtext11: @person.customtext11, customtext12: @person.customtext12, customtext2: @person.customtext2, customtext3: @person.customtext3, customtext4: @person.customtext4, customtext5: @person.customtext5, customtext6: @person.customtext6, customtext7: @person.customtext7, customtext8: @person.customtext8, customtext9: @person.customtext9, dateofbirth: @person.dateofbirth, department: @person.department, finsihdate: @person.finsihdate, firstname: @person.firstname, gender: @person.gender, homephone: @person.homephone, lastname: @person.lastname, mobile: @person.mobile, office: @person.office, perferedname: @person.perferedname, personalemail: @person.personalemail, positiontitle: @person.positiontitle, postcode: @person.postcode, reportsto: @person.reportsto, startdate: @person.startdate, state: @person.state, user_id: @person.user_id, workemail: @person.workemail, workphone: @person.workphone } }
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
    patch person_url(@person), params: { person: { address1: @person.address1, address2: @person.address2, city: @person.city, country: @person.country, customdate1: @person.customdate1, customdate2: @person.customdate2, customdate3: @person.customdate3, customdate4: @person.customdate4, customdate5: @person.customdate5, customtext1: @person.customtext1, customtext10: @person.customtext10, customtext11: @person.customtext11, customtext12: @person.customtext12, customtext2: @person.customtext2, customtext3: @person.customtext3, customtext4: @person.customtext4, customtext5: @person.customtext5, customtext6: @person.customtext6, customtext7: @person.customtext7, customtext8: @person.customtext8, customtext9: @person.customtext9, dateofbirth: @person.dateofbirth, department: @person.department, finsihdate: @person.finsihdate, firstname: @person.firstname, gender: @person.gender, homephone: @person.homephone, lastname: @person.lastname, mobile: @person.mobile, office: @person.office, perferedname: @person.perferedname, personalemail: @person.personalemail, positiontitle: @person.positiontitle, postcode: @person.postcode, reportsto: @person.reportsto, startdate: @person.startdate, state: @person.state, user_id: @person.user_id, workemail: @person.workemail, workphone: @person.workphone } }
    assert_redirected_to person_url(@person)
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete person_url(@person)
    end

    assert_redirected_to people_url
  end
end
