class ConvertMarkdown
  def perform(post_id)
    @post = Post.find(post_id)
    return unless @post

    @post.html = Octokit.markdown(@post.markdown, format: 'gfm')

    @post.save!
  end
end
