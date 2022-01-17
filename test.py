def numberOfDigits(n):
	if n == 0:
		return 0
	return 1+numberOfDigits(n//10)

def isPalindrome(n):
	return n == isPalindromeHelper(n)

def isPalindromeHelper(n):
	if n == 0:
		return 0
	nDigit = numberOfDigits(n)
	tmp = (10**(nDigit-1)) * (n%10)
	return tmp + isPalindromeHelper(n//10)

print(isPalindrome(101))

