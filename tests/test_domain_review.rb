require 'minitest/autorun'
require 'domain_review'

class DomainReviewTest < Minitest::Test
  def test_domain_lane
    item = LatticeParseIniLab::DomainReview.new(signal: 71, slack: 31, drag: 13, confidence: 53)
    assert_equal 187, LatticeParseIniLab.domain_review_score(item)
    assert_equal "ship", LatticeParseIniLab.domain_review_lane(item)
  end
end
