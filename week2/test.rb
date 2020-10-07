class Test
  def public_method
    puts 'public です'
  end

  def test_method
    # エラーでしょうか?
    private_method
    # エラーでしょうか?
    private_method
    # エラーでしょうか?
    protected_method
  end

  private

  def private_method
    puts 'private です'
  end

  protected

  def protected_method
    puts 'protected です'
  end
end

test = Test.new
# エラーでしょうか?
test.public_method
# エラーでしょうか?
test.private_method
# エラーでしょうか?
test.protected_method

test.test_method
