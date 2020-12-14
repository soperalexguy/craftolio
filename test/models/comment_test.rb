require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # Setup for model before testing
  def setup
    @comment = Comment.new(details: "This is a test", post_id: posts(:one).id, profile_id: profiles(:one).id)
  end

  # Checks if the comment is valid for creation which should succeed
  test "valid comment" do
    assert @comment.valid?
  end

  # Checks if the comment is valid for creation without details which should fail
  test "invalid comment details" do
    @comment.details = nil
    refute @comment.valid?, 'comment is valid without details'
    assert_not_nil @comment.errors[:details], 'no validation error for comment present'
  end

  # Checks if the comment is valid for creation without post_id which should fail
  test "invalid comment post" do
    @comment.post_id = nil
    refute @comment.valid?, 'comment is valid without post reference'
    assert_not_nil @comment.errors[:post], 'no validation error for comment present'
  end

  # Checks if the comment is valid for creation without profile_id which should fail
  test "invalid comment profile" do
    @comment.profile_id = nil
    refute @comment.valid?, 'comment is valid without profile reference'
    assert_not_nil @comment.errors[:profile], 'no validation error for comment present'
  end
end
