Given(/^only rspec-core is installed$/) do
  # Ensure the gem versions of rspec-mocks and rspec-expectations
  # won't be loaded if available on the developers machine.
  set_environment_variable('RUBYOPT', ENV['RUBYOPT'] + ' --disable-gems')

  # This will make `require_expect_syntax_in_aruba_specs.rb` (loaded
  # automatically when the specs run) remove rspec-mocks and
  # rspec-expectations from the load path.
  set_environment_variable('REMOVE_OTHER_RSPEC_LIBS_FROM_LOAD_PATH', 'true')
end

Given(/^rspec-expectations is not installed$/) do
  step "only rspec-core is installed"
end
