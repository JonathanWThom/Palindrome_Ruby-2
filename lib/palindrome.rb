class String
  define_method(:palindrome) do
    new_letters = []
    smashed = self.delete(' ').downcase
    smashed.gsub!(/[^0-9A-Za-z]/, '')
    split_letters = smashed.split("")
    split_letters.each() do |letter|
      new_letters.unshift(letter)
    end

    if new_letters == split_letters
      true
    else
      false
    end
  end
end
