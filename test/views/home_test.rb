# frozen_string_literal: true


require_relative '../test_helper'

class HomeTest < Minitest::Test
  describe 'Home view' do
    it 'Display home layout correctly' do
      get '/'
      assert_includes last_response.body, 'Find!', 'We cant access search form'
    end

    it 'Can search for users' do
      get '/', { q: 'rodrigogaldino553' }
 
      assert last_response.ok?
      assert_includes last_response.body, 'Try a new search'
    end

    it 'Show correct message for user not found' do
    end
  end
end
