# frozen_string_literal: true

require 'test_helper'

class EntriesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get feed_entries_url(feed_id: feeds(:one))
    assert_response :success
  end

  test 'should get show' do
    entry = entries(:one)
    get feed_entry_url(feed_id: entry.feed_id, id: entry)
    assert_response :success
  end
end
