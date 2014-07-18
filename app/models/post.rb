class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :scoped, scope: :user

  belongs_to :user

  after_commit :convert_markdown, on: [:update, :create]

  def convert_markdown
    ConvertMarkdown.new.perform(id)
  end

  def published?
    published_at.present?
  end

  def draft?
    !published?
  end

end
