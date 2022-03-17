# frozen_string_literal: true
require_relative "test/unit"
require_relative "lib/ephem"
require "test_helper"

class TestEphem < Minitest::Test
	def test_julian_date
		christian = Time.utc(1991,7,27,22,30)
		effe = Ephem.new(christian)
		assert_in_delta(2448465.4375,effe.julian,0.00001)
	end
  
  def test_that_it_has_a_version_number
    refute_nil ::Ephem::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end
