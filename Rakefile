task :spec do
  Dir['test_*.rb'].each do |test|
    require_relative test
  end
end

task default: :spec