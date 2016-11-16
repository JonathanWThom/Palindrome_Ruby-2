require('rspec')
require('palindrome')

describe do
  it('Will recognize if a word is not a palindrome') do
    expect("hello".palindrome()).to(eq(false))
  end

  it('Will recognize if a word is not a palindrome') do
    expect("racecar".palindrome()).to(eq(true))
  end

  it('Will recognize if a multiple word string is a palindrome') do
    expect("do geese see god".palindrome()).to(eq(true))
  end

  it('Will recognize if a multiple word string including capitals is a palindrome') do
    expect("Sore was I ere I saw Eros".palindrome()).to(eq(true))
  end

  it('Will recognize if a multiple word string including special characters is a palindrome') do
    expect("Marge, let's 'went.' I await news telegram.".palindrome()).to(eq(true))
  end
end
