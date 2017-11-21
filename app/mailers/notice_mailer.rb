class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_spot.subject
  #
  def sendmail_spot(spot)
    @spot = spot

    mail to: "osa929@gmail.com",
         subject: '【babypo】スポットが投稿されました'
  end
end
