require 'test_helper'

class BowTest < ActiveSupport::TestCase

  test 'valid bow' do
    bow = Bow.new(color: "red", size: "medium")
    assert bow.valid?
  end

  test 'invalid without color' do
    bow = Bow.new(size: "medium")
    refute bow.valid?, "bow is valid without a color"
    assert_not_nil bow.errors[:color], 'no validation error for name present'
  end


  test 'invalid without size' do
    bow = Bow.new(color: "red")
    refute bow.valid?, "user is valid without a size"
    assert_not_nil bow.errors[:size]
  end
end
