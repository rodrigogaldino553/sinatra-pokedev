# frozen_string_literal: true


require_relative '../test_helper'

class HomeControllerTest < Minitest::Test
  describe 'Home Page' do
    it 'Can access home page successful' do
      get '/'
      assert last_response.ok?
      assert_includes last_response.body, 'Find!', 'request successful but dont show the correct content"'
    end
  end
end
