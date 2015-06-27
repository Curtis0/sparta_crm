class CommentsController < ApplicationController

  def index
    @q = Comment.ransack(params[:page])
    @comments = @q.result.page(params[:page])
  end


  def create
   # customer_id = comment_params["customer_id"].to_i
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to customer_url(@comment.customer_id)
  end

  def destroy
    @comment = Comment.find(params[:id])
    customer = @customer.customer
    @comment.destroy
    redirect_to customer_url(customer)
  end




  private

  def comment_params
    params.require(:comment).permit(
      :body,
      :customer_id,
      :user_id
    )
  end




end
