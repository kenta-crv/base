class TopController < ApplicationController
  def index
  end

  def human
  end

  #def engilance
  #end

  #def movies
  #end

  #def lp
  #end

  #def metal
  #end

  #def marketing
  #end

  def business
    add_breadcrumb "事業内容", :business_path
  end

  #def price
  #end

  #def president
  #end

  def company
    add_breadcrumb "会社概要", :company_path
  end

  def privacy
    add_breadcrumb "プライバシーポリシー", :privacy_path
  end

  #def review
  #end

  def question
    add_breadcrumb "よくある質問", :question_path
  end

  #def oneday
  #end

  #def whats
  #end
end
