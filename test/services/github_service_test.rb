# frozen_string_literal: true


require_relative '../test_helper'

class GithubServiceTest < Minitest::Test
  describe 'User search' do
    before do
      @usernames = { valid_username: 'rodrigogaldino553', invalid_username: 'esseusernaoexiste', invalid_username_chars: 'user!nãm e' }
    end

    it 'Returns 400 for invalid username' do
      search_result = GithubService.search_dev(@usernames[:invalid_username_chars])

      assert_equal 400, search_result['status']
    end

    it 'Returns 404 for user not found' do
      search_result = GithubService.search_dev(@usernames[:invalid_username])

      assert_equal 404, search_result['status']
    end

    it 'Can find correct user' do
      search_result = GithubService.search_dev(@usernames[:valid_username])

      assert_equal 200, search_result['status']
      assert_equal @usernames[:valid_username], search_result['result']['login']
    end
  end

  describe 'Username validations' do
    it 'Returns false for invalid username' do
    end

    it 'Returns username for valid username' do
    end
  end
end
