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

  def test_should_loop_around_the_key_when_it_is_short_than_the_text
    plain_text = 'ATTACKATDAWN';
    expected_result = 'JXLSLOSLMEOF';

    machine = VigenereCipher.new;
    encrypted_string = machine.encrypt('JESS',plain_text);

    assert_equal expected_result, encrypted_string
  end

end