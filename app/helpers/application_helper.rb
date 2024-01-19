module ApplicationHelper

  def title
    return t("gumtree-clone") unless content_for?(:title)
    "#{content_for(:title)} | #{t("gumtree-clone")}"
  end

end
