require 'test_helper'

class Api::V1::IdeasControllerTest < ActionController::TestCase

  test 'controller responds to JSON' do
    get :index, format: :json

    assert_response :success
  end

  test 'index returns an array of ideas' do
    get :index, format: :json

    assert_kind_of Array, json_response
  end
end
