require "test_helper"

class Latias::AuditorTest < ActiveSupport::TestCase
  include Latias::Auditor::Core

  test "it has a version number" do
    assert Latias::Auditor::VERSION
  end

  test "with_audit should be existed" do
    assert defined?(with_audit)
  end
end
