class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :scoped, scope: :user

  belongs_to :user

  def published?
    published_at.present?
  end

  def draft?
    !published?
  end

end
