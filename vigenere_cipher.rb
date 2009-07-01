class VigenereCipher

  def encrypt(key, plain_text)
    transform(key, plain_text, 'encrypt')
  end

  def decrypt(key, encrypted_message)
    transform(key, encrypted_message, 'decrypt')
  end

private
  def transform(key, text, method)
    n = -1
    text.split(//).map{|letter| transform_letter(letter, calc_key_letter(key, n+=1), method=='encrypt' ? :+ : :- )}.join
  end

  def transform_letter(letter, key_letter, plus_or_minus)
    charset_offset = "A"[0]
    letter_position = letter[0] - charset_offset
    key_letter_position = key_letter[0]-charset_offset

    letter_shifts_by = letter_position.send(plus_or_minus, key_letter_position)
    (letter_shifts_by.modulo(26)+charset_offset).chr
  end

  def calc_key_letter(key, n)
    n = n.modulo(key.length)
    key.split(//)[n]
  end

end