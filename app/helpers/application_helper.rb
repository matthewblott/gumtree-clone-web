module ApplicationHelper

  def title
    return t("mumtree") unless content_for?(:title)
    "#{content_for(:title)} | #{t("mumtree")}"
  end

end
