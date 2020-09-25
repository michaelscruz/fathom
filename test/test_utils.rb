module TestUtils
  class TestDummyComponent < ViewComponent::Base
    def call
      ''
    end
  end

  def mock_component
    TestDummyComponent.new
  end

  def threadsafe_test &block
    thread = Thread.new(&block)
    thread.join
  end
end
