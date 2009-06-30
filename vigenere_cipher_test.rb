require 'test/unit'
require 'vigenere_cipher'

class VigenereCipherTest < Test::Unit::TestCase

  def test_should_encrypt_a_string
    plain_text = 'ATTACKATDAWN';
    expected_result = 'LXFOPVEFRNHR';

    machine = VigenereCipher.new;
    encrypted_string = machine.encrypt('LEMONLEMONLE',plain_text);

    assert_equal expected_result, encrypted_string
  end

  def test_should_decrypt_a_string
    expected_result = 'ATTACKATDAWN';
    encrypted_message = 'LXFOPVEFRNHR';

    machine = VigenereCipher.new;
    encrypted_message = machine.decrypt('LEMONLEMONLE',encrypted_message);

    assert_equal expected_result, encrypted_message
  end

end