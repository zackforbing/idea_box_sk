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

  test 'index returns the correct number of ideas' do
    get :index, format: :json

    assert_equal Idea.count, json_response.count
  end

  test 'index contains ideas with correct attributes' do
    get :index, format: :json

    json_response.each do |idea|
      assert idea['title']
      assert idea['body']
      assert idea['quality']
    end
  end
end
