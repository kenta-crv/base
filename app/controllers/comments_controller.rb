class CommentsController < ApplicationController
  def create
    @contract = Contract.find(params[:contract_id])
    @comment = @contract.comments.new(comment_params)
    
    if @comment.save
      ContractMailer.new_comment_notification(@comment).deliver_now
      redirect_to contract_path(@contract), notice: 'コメントを更新しました。'
    else
      render :new
    end
  end
  

  def edit
    @contract = Contract.find(params[:contract_id])
    @comment = @contract.comments.find(params[:id])
  end
  
  def destroy
    @contract = Contract.find(params[:contract_id])
    @comment = @contract.comments.find(params[:id])
    @comment.destroy
    redirect_to contract_path(@contract)
  end

  def update
    @contract = Contract.find(params[:contract_id])
    @comment = @contract.comments.find(params[:id])
    if @comment.update(comment_params)
      redirect_to contract_path(@contract), notice: 'コメントが更新されました。'
    else
      render :edit
    end
  end

  private
  def comment_params
 	params.require(:comment).permit(
        :status,
        :next,
        :body,
    )
  end
end
