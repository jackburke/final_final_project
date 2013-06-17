class CommentsController < ApplicationController
#  before_filter :load_story
  def create
    @comment = @story.comments.new(params[:comment])
     if @comment.save
      redirect_to @story, :notice => 'Thank you for your comment'
     else
       redirect_to @story, :alert => 'Unable to add comment'
       end
    end

  def destroy
    @comment = @story.comments.find(params[:id])
    @comment.destroy
    redirect_to @story, :notice => 'Comment deleted'
   end
private
  def load_story
    @story = Story.find(params[:story_id])
  end
end


