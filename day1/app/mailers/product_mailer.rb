class ProductMailer < ApplicationMailer
    def welcome_email
    @product = params[:product]
    mail(to: @product.email, subject: "Welcome to my app...")
  end
end
