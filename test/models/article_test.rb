require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test 'the truth' do
    assert true
  end

  test 'should save an article with title and body' do
    article = Article.new(title: 'title', body: 'content at least 10 characters')
    assert article.save, 'Save an article with title and content'
  end

  test 'should not save article without title' do
    article = Article.new
    assert_not article.save, 'Unable to save article without title and body'
  end

  test 'should not save article with body less than 10 characters' do
    article = Article.new(title: 'title', body: 'short')
    assert_not article.save, 'Unable to save article with body length less than 10'
  end
end
