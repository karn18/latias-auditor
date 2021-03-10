require "test_helper"

class Latias::AuditorTest < ActiveSupport::TestCase
  include Latias::Auditor::Core

  test "it has a version number" do
    assert Latias::Auditor::VERSION
  end

  test "with_audit should be existed" do
    assert defined?(with_audit)
  end

  test "call with_audit" do
    with_audit("demo", "test", "message")
  end

  test "call with_audit inside block" do
    assert_raises do
      my_block do
        with_audit("demo", "test", "message inside block")
      end
    end
  end

  def my_block
    yield
  end
end
