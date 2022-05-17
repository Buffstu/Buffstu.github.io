=begin
1--------------------------------------
As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

2---------------------------------------

todo_check("string")
output should be boolean, true if #TODO is found, false otherwise 

3----------------------------------------

todo_check("")
expect => false 

todo_check("the quick brown fox")
expect => false 

todo_check ("#TODO")
expect => true

todo_check ("the quick brown fox #TODO")
expect => true 

todo_check ("TODO")
expect => false 

todo_check ("#todo")
expect => false 


=end
def encode(plaintext, key)
    cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
    puts cipher
    ciphertext_chars = plaintext.chars.map do |char|
      (65 + cipher.find_index(char)).chr
    end
    return ciphertext_chars.join
end
  
  def decode(ciphertext, key)
    cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
    plaintext_chars = ciphertext.chars.map do |char|
      cipher[65 - char.ord]
    end
    return plaintext_chars.join
  end

 puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"