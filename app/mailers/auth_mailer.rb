class AuthMailer < ActionMailer::Base
	default from: "jacob042995@gmail.com"
	default subject: "Sending your magic link!"

	def send_magic_link(recipient_email)
		mail(to: recipient_email)
	end

end
