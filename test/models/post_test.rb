require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # Checks if the posts are valid for creation which should succeed
  test "valid post" do
    assert posts(:one).valid?
    assert posts(:two).valid?
  end

  # Checks if the post is valid for creation without title which should fail
  test "invalid post title" do
    posts(:one).title = nil
    refute posts(:one).valid?, 'post is valid without title'
    assert_not_nil posts(:one).errors[:title], 'no validation error for post present'
  end

  # Checks if the post is valid for creation without description which should fail
  test "invalid post description" do
    posts(:one).description = nil
    refute posts(:one).valid?, 'post is valid without a description'
    assert_not_nil posts(:one).errors[:description], 'no validation error for post present'
  end

  # Checks if the post is valid for creation without profile_id which should fail
  test "invalid post profile" do
    posts(:one).profile_id = nil
    refute posts(:one).valid?, 'post is valid without a profile reference'
    assert_not_nil posts(:one).errors[:profile], 'no validation error for post present'
  end
end
