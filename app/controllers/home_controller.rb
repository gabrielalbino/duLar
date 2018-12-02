class HomeController < ApplicationController
  def index
    @lastsPosts = Post.order(created_at: :asc).last(5).reverse
    @lastComments = Comment.order(created_at: :asc).last(5).reverse
    @hotPosts =  Array.new
    @lastComments.each do |comment|
      @post =  Post.where(id: comment.post_id)[0]
      if !@hotPosts.include? @post
        @hotPosts.push(@post)
      end
    end
  end
end
