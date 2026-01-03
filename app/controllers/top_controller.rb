class TopController < ApplicationController
  def index
    @contract = Contract.new
  end

  def information
  end

  def lp 
    @top = Top.new
  end

  def download
    @top = Top.new(top_params)
    @top.save
    TopMailer.received_email(@top).deliver
    TopMailer.send_email(@top).deliver
  end

  def syumatu
  end

  def google
  end

  def instagram
  end

  def document
  end

  def human
  end

  def transaction
  end

  def cost
  end

  def marketing
  end

  def business
    add_breadcrumb "事業内容", :business_path
  end

  def flow
  end

  def movies
  end

  def share
  end

  def company
    add_breadcrumb "会社概要", :company_path
  end

  def privacy
    add_breadcrumb "プライバシーポリシー", :privacy_path
  end

  def question
    add_breadcrumb "よくある質問", :question_path
  end

  private
  def top_params
    params.require(:top).permit(
    :co, #会社名
    :name,  #代表者名
    :tel, #電話番号
    :email, #メールアドレス
    :service,
    :check
    )
  end
end
