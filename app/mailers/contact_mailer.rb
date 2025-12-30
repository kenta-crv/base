class ContactMailer < ActionMailer::Base
  default from: "info@sale-s.pro"
  def received_email(contact)
    @contact = contact
    mail to: "info@sale-s.pro"
    mail(subject: '株式会社セールスプロよりお問い合わせがありました') do |format|
      format.text
    end
  end

  def send_email(contact)
    @contact = contact
    mail to: contact.email
    mail(subject: 'アポ匠にお問い合わせ頂きありがとうございます｜株式会社セールスプロ') do |format|
      format.text
    end
  end

end
