guard :rspec, cmd: 'bundle exec rspec', all_on_start: true, keep: true, all_after_pass: true, run_all: { cmd: 'bundle exec rspec -f progress' } do
  require 'guard/rspec/dsl'
  dsl = Guard::RSpec::Dsl.new(self)

  # RSpec files
  rspec = dsl.rspec
  watch(rspec.spec_helper) { rspec.spec_dir }
  watch(rspec.spec_support) { rspec.spec_dir }
  watch(rspec.spec_files)

  # Ruby files
  ruby = dsl.ruby
  dsl.watch_spec_files_for(ruby.lib_files)

  watch('lib/exact_target_rest.rb')  { rspec.spec_dir }
end