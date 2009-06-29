require 'rake/testtask'

desc "Run all tests"
task 'default' => ['test:units']

namespace 'test' do

  desc "Run unit tests"
  Rake::TestTask.new('units') do |t|
    t.libs << "test"
    t.test_files = FileList['vigenere_cipher_test.rb']
    t.verbose = true
  end
  
end