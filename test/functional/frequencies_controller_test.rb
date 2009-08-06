require 'test_helper'

class FrequenciesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:frequencies)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_frequency
    assert_difference('Frequency.count') do
      post :create, :frequency => { }
    end

    assert_redirected_to frequency_path(assigns(:frequency))
  end

  def test_should_show_frequency
    get :show, :id => frequencies(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => frequencies(:one).id
    assert_response :success
  end

  def test_should_update_frequency
    put :update, :id => frequencies(:one).id, :frequency => { }
    assert_redirected_to frequency_path(assigns(:frequency))
  end

  def test_should_destroy_frequency
    assert_difference('Frequency.count', -1) do
      delete :destroy, :id => frequencies(:one).id
    end

    assert_redirected_to frequencies_path
  end
end
