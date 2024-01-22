module ApplicationHelper

  def title
    return t("mumtree") unless content_for?(:title)
    return content_for(:title) if turbo_native_app?

    "#{content_for(:title)} | #{t("mumtree")}"
  end

end
