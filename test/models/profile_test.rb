require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # Checks if the profiles are valid for creation which should succeed
  test "valid post" do
    assert profiles(:one).valid?
    assert profiles(:two).valid?
  end

  # Checks if the profile is valid for creation without first name which should fail
  test "invalid profiles fname" do
    profiles(:one).fname = nil
    refute profiles(:one).valid?, 'profiles is valid without fname'
    assert_not_nil profiles(:one).errors[:fname], 'no validation error for profiles present'
  end

  # Checks if the profile is valid for creation without last name which should fail
  test "invalid profile lname" do
    profiles(:one).lname = nil
    refute profiles(:one).valid?, 'profiles is valid without lname'
    assert_not_nil profiles(:one).errors[:lname], 'no validation error for profiles present'
  end

  # Checks if the profile is valid for creation without username which should fail
  test "invalid profile username" do
    profiles(:one).username = nil
    refute profiles(:one).valid?, 'profiles is valid without username'
    assert_not_nil profiles(:one).errors[:username], 'no validation error for profiles present'
  end

  # Checks if the profile is valid for creation without bio which should succeed
  test "valid without profile bio" do
    profiles(:one).bio = nil
    assert profiles(:one).valid?
  end

  # Checks if the profile is valid for creation without user_id which should fail
  test "invalid profile user" do
    profiles(:one).user_id = nil
    refute profiles(:one).valid?, 'profiles is valid without user reference'
    assert_not_nil profiles(:one).errors[:user], 'no validation error for profiles present'
  end
end
