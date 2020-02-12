require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(body: 'Lorem Ipsum', post: 'https://www.google.com')
  end

  test "Should be valid post" do
    assert @post.valid?
  end

  test "Body should be present" do
    @post.body = ''
    assert_not @post.valid?
  end

  test "Url should be present" do
    @post.post = ''
    assert_not @post.valid?
  end
end
