require 'minitest/autorun'
require 'policy'

class PolicyTest < Minitest::Test
  def test_fixture_decisions
    signal_case_1 = LatticeParseIniLab::Signal.new(demand: 54, capacity: 82, latency: 13, risk: 18, weight: 13)
    assert_equal 113, LatticeParseIniLab.score(signal_case_1)
    assert_equal 'review', LatticeParseIniLab.classify(signal_case_1)
    signal_case_2 = LatticeParseIniLab::Signal.new(demand: 72, capacity: 78, latency: 24, risk: 8, weight: 12)
    assert_equal 158, LatticeParseIniLab.score(signal_case_2)
    assert_equal 'accept', LatticeParseIniLab.classify(signal_case_2)
    signal_case_3 = LatticeParseIniLab::Signal.new(demand: 76, capacity: 88, latency: 27, risk: 9, weight: 4)
    assert_equal 130, LatticeParseIniLab.score(signal_case_3)
    assert_equal 'review', LatticeParseIniLab.classify(signal_case_3)
  end
end
