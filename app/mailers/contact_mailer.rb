class ContactMailer < ApplicationMailer

    def post_enquiry(post_id, reply_to_email, message)
        post = Post.find(post_id)
        if @post.present? 
            account = @post.account
            @reply_to_email = reply_to_email
            @name = post.title
            @message = message
            #@reply_to_email = reply_to_email
            #send mail to post user 
            if account.present?
            mail(to: account.email, subject: "Enquiry about #(@name)")
            end
        end
    end
end