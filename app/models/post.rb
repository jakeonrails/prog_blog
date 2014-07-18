class Post < ActiveRecord::Base
  belongs_to :user

  def published?
    published_at.present?
  end

  def draft?
    !published?
  end

end
