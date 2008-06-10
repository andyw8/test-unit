module TestUnitTestUtil
  private
  def assert_fault_messages(expected, faults)
    assert_equal(expected, faults.collect {|fault| fault.message})
  end

  def run_test(test_case, name)
    result = Test::Unit::TestResult.new
    test_case.new(name).run(result) {}
    result
  end
end
