class AuthMailer < ApplicationMailer
	default from: "test@example.com"
	default subject: "Sending your magic link!"

	def self.send_magic_link(recipient_email)
		 mail(to: recipient_email)
	end

end
