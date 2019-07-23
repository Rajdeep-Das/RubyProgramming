# File:  ceaser_cipher_test.rb

require_relative "ceaser_cipher"
require "test/unit"

class TestCeaserCipher < Test::Unit::TestCase

	def test_ceaser_cipher_output
		assert_equal("A", Cipher.new().caesar_cipher("W", 3) )
		assert_equal("Cmfy f xywnsl!", Cipher.new().caesar_cipher("What a string!", 5) )
		assert_equal("a", Cipher.new().caesar_cipher("w", 3))
	end
end
