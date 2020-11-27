require 'test/unit/assertions'

module RSpec
  module Core
    # @private
    module TestUnitAssertionsAdapter
      include ::Test::Unit::Assertions

      if defined?(::Minitest::Assertions) && ancestors.include?(::Minitest::Assertions)
        require 'rspec/core/minitest_assertions_adapter'
        include ::RSpec::Core::MinitestAssertionsAdapter
      end
    end
  end
end
