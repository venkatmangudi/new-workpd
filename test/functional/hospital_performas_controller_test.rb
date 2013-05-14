require 'test_helper'

class HospitalPerformasControllerTest < ActionController::TestCase
  setup do
    @hospital_performa = hospital_performas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hospital_performas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hospital_performa" do
    assert_difference('HospitalPerforma.count') do
      post :create, hospital_performa: { blood_unit_transfused: @hospital_performa.blood_unit_transfused, caesarion_delivery: @hospital_performa.caesarion_delivery, ctmri: @hospital_performa.ctmri, district_id: @hospital_performa.district_id, division_id: @hospital_performa.division_id, ecg: @hospital_performa.ecg, ecotmt: @hospital_performa.ecotmt, hemo: @hospital_performa.hemo, image_scans: @hospital_performa.image_scans, indoor: @hospital_performa.indoor, major_surgery: @hospital_performa.major_surgery, minor_surgery: @hospital_performa.minor_surgery, mlc: @hospital_performa.mlc, normal_delivery: @hospital_performa.normal_delivery, outdoor: @hospital_performa.outdoor, pathology: @hospital_performa.pathology, post_mortem: @hospital_performa.post_mortem, remarks: @hospital_performa.remarks, ultra_sound: @hospital_performa.ultra_sound }
    end

    assert_redirected_to hospital_performa_path(assigns(:hospital_performa))
  end

  test "should show hospital_performa" do
    get :show, id: @hospital_performa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hospital_performa
    assert_response :success
  end

  test "should update hospital_performa" do
    put :update, id: @hospital_performa, hospital_performa: { blood_unit_transfused: @hospital_performa.blood_unit_transfused, caesarion_delivery: @hospital_performa.caesarion_delivery, ctmri: @hospital_performa.ctmri, district_id: @hospital_performa.district_id, division_id: @hospital_performa.division_id, ecg: @hospital_performa.ecg, ecotmt: @hospital_performa.ecotmt, hemo: @hospital_performa.hemo, image_scans: @hospital_performa.image_scans, indoor: @hospital_performa.indoor, major_surgery: @hospital_performa.major_surgery, minor_surgery: @hospital_performa.minor_surgery, mlc: @hospital_performa.mlc, normal_delivery: @hospital_performa.normal_delivery, outdoor: @hospital_performa.outdoor, pathology: @hospital_performa.pathology, post_mortem: @hospital_performa.post_mortem, remarks: @hospital_performa.remarks, ultra_sound: @hospital_performa.ultra_sound }
    assert_redirected_to hospital_performa_path(assigns(:hospital_performa))
  end

  test "should destroy hospital_performa" do
    assert_difference('HospitalPerforma.count', -1) do
      delete :destroy, id: @hospital_performa
    end

    assert_redirected_to hospital_performas_path
  end
end
