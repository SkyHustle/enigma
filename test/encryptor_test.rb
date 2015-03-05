require 'minitest/autorun'
require 'minitest/pride'
require '../lib/encryptor'

class EncryptorTest < Minitest::Test

	def test_it_encrypts
		encryptor = Encryptor.new("41521", "020315", "ruby")
		assert_equal "2.ql", encryptor.encrypt 
	end

	def test_it_encrypts
		encryptor = Encryptor.new("41521", "020315", "rubyruby")
		assert_equal "2.ql2.ql2", encryptor.encrypt 
	end

end