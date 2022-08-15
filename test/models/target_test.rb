require 'test_helper'

class TargetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @target = Target.new(user_id: 1,
                          target: "BIG3 500kg",
                          task: "毎日ジム1時間",
                          deadline: "2022年度末",
                          kpi: 30)
  end
  
  # 存在性の検証
  test "should be valid" do
    assert @target.valid?
  end
  
  test "user_id should be present" do
    @target.user_id = ' '
    assert_not @target.valid?
  end
  
  test "target should be present" do
    @target.target = "　　　"
    assert_not @target.valid?
  end
  
  test "task should be present" do
    @target.task = "　　　"
    assert_not @target.valid?
  end
  
  test "deadline should be present" do
    @target.deadline = "　　　"
    assert_not @target.valid?
  end
  
  test "kpi should be present" do
    @target.kpi = ' '
    assert_not @target.valid?
  end
  
  #長さの検証
  test "target should not be too long" do
    @target.target = "a" * 256
    assert_not @target.valid?
  end
  
  test "task should not be too long" do
    @target.task = "a" * 256
    assert_not @target.valid?
  end
  
  test "deadline should not be too long" do
    @target.deadline = "a" * 51
    assert_not @target.valid?
  end
  
  test "kpi should not be too long" do
    @target.kpi = 32
    assert_not @target.valid?
  end
  
  test "kpi should not be too short" do
    @target.kpi = 0
    assert_not @target.valid?
  end
  
  #属性の検証
  # test " kpi validation should reject invalid number" do
  #   @target.kpi = "a"
  #   assert_not @target.valid?
  # end
  
  
  
end
