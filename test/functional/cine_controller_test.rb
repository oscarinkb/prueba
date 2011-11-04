require 'test_helper'

class CineControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get contacto" do
    get :contacto
    assert_response :success
  end

  test "should get eventos" do
    get :eventos
    assert_response :success
  end

end
