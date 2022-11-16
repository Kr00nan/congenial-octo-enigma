require "makroon_palindrome/version"

module MakroonPalindrome
	# returns true for a palindrome, false otherwise
	def palindrome?
		processed_content == processed_content.reverse
	end

	private

	# returns content for palindrome testing
	def processed_content
		to_s.scan(/[a-z]/i).join.downcase
	end
end

class String
	include MakroonPalindrome
end

class Integer
	include MakroonPalindrome
end
