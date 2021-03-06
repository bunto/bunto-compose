require 'bunto'
require File.expand_path('../../lib/bunto-compose.rb', __FILE__)

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.filter_run :focus
  config.run_all_when_everything_filtered = true

  config.disable_monkey_patching!

  config.warnings = true

  if config.files_to_run.one?
    config.default_formatter = 'doc'
  end

  config.profile_examples = 3

  config.order = :random

  Kernel.srand config.seed

  ###
  ### Helper methods
  ###
  TEST_DIR = File.expand_path('../', __FILE__)
  def test_dir(*files)
    File.expand_path(File.join(TEST_DIR, *files))
  end

  def source_dir(*files)
    test_dir('source', *files)
  end

  def fixture_site
    Bunto::Site.new(Bunto::Utils.deep_merge_hashes(
      Bunto::Configuration::DEFAULTS,
      { 'source' => source_dir, 'destination' => test_dir('dest') }
    ))
  end

  def capture_stdout
    $old_stdout = $stdout
    $stdout = StringIO.new
    yield
    $stdout.rewind
    return $stdout.string
  ensure
    $stdout = $old_stdout
  end
end
