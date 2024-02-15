# frozen_string_literal: true


require_relative '../test_helper'

class HttpStatusHelperTest < Minitest::Test
  describe 'Https statuses' do
    it 'Success status' do
      http_result = HttpStatusHelper.http_message(200)

      assert_equal 'Success!', http_result['message']
      assert_equal 'primary', http_result['color']
    end
  end
end
