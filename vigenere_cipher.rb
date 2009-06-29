class VigenereCipher

  def encrypt(key, plain_text)
    n = -1
    plain_text.split(//).map{|letter| encrypt_letter(letter, key, n+=1)}.join
  end
  
private
  def encrypt_letter(letter, key, n)
    charset_offset = "A"[0]
    key_char = key.split(//)[n]

    (((letter[0]-charset_offset)+(key_char[0]-charset_offset)).modulo(26)+charset_offset).chr
  end

end