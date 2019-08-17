class EnvironmentInterceptor
  def self.delivering_email message
    if ENV['mail_test_recipient_override'].present? && Rails.env != 'production'
      message.subject = "[TEST EMAIL] #{message.subject} ***** "\
        "TO: #{message.to} ***** "\
        "CC: #{message.cc} ***** "\
        "BCC: #{message.bcc}"
      message.to = ENV['mail_test_recipient_override']
      message.cc = ''
      message.bcc = ''
    end
  end
end

ActionMailer::Base.register_interceptor EnvironmentInterceptor
