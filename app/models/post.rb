class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :scoped, scope: :user

  belongs_to :user

  after_save :convert_markdown

  def convert_markdown
    ConvertMarkdown.new.perform(id) if markdown_changed?
  end

  def published?
    published_at.present?
  end

  def draft?
    !published?
  end

end
