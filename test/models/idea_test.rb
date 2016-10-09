require 'test_helper'

class IdeaTest < ActiveSupport::TestCase
  test 'should have a quality that defaults to 0' do
    idea = Idea.new
    assert_equal('swill', idea.quality)
  end

  test 'it should be invalid without a title or body' do
    idea1 = Idea.new

    refute(idea1.valid?)
  end

  test 'it should be invalid without a title' do
    idea1 = Idea.new(body: 'body')

    refute(idea1.valid?)
  end

  test 'it should be invalid without a body' do
    idea1 = Idea.new(title: 'title')

    refute(idea1.valid?)
  end

  test 'it should be valid with a title and body' do
    idea1 = Idea.new(title: 'title', body: 'body')

    assert(idea1.valid?)
  end
end
