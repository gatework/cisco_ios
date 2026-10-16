# frozen_string_literal: true

require "minitest/autorun"
require "cisco_ios"

class CiscoIOSTest < Minitest::Test
  def test_version_matches_gemspec
    spec = Gem::Specification.load(File.expand_path("../cisco_ios.gemspec", __dir__))
    assert_equal CiscoIOS::VERSION, spec.version.to_s
    assert_equal "cisco_ios", spec.name
  end

  def test_errors_can_be_rescued_as_standard_errors
    assert_operator CiscoIOS::Error, :<, StandardError
  end

  def test_package_contains_only_library_and_documentation
    spec = Gem::Specification.load(File.expand_path("../cisco_ios.gemspec", __dir__))
    assert_equal %w[CHANGELOG.md LICENSE README.md lib/cisco_ios.rb lib/cisco_ios/version.rb], spec.files.sort
  end
end
