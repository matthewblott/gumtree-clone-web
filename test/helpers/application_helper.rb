require "test_helper"

class ApplicationHelperTest < ActionView::TestCase
  setup do
    @turbo_native_app = false
  end

  # ...
  #
  test("only page specific title is return for turbo native") do
    @turbo_native_app = true
    content_for(:title) { "Page Title" }
    assert_equal "Page Title", title
  end

  private

  def turbo_native_app?
    @turbo_native_app
  end
end
