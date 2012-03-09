require 'test_helper'

class ProblemTest < ActiveSupport::TestCase
  should validate_presence_of(:title)
  should validate_presence_of(:body)
  should validate_presence_of(:time_limit)
  should validate_presence_of(:published_at)
  should validate_numericality_of(:time_limit)
  should validate_uniqueness_of(:title)

  test "requires positive time limit" do
    p = Problem.new
    p.time_limit = 0
    p.valid?
    assert_match "must be greater than or equal to 1", p.errors[:time_limit].join(", ")
    p.time_limit = 1
    p.valid?
    assert p.errors[:time_limit].empty?
  end
end
