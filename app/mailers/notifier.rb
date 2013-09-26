class Notifier < ActionMailer::Base
  default to: User.where(:subscribe => true).all.map(&:email),
          from: "conor_oc@ymail.com"

  def resource_email(resource)
    @resource = resource
    mail(:subject => "New resource added to UnBoggle!" )
  end
end
