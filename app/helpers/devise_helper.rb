module DeviseHelper
def devise_error_messages!
return "" if resource.errors.empty?

messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
sentence = I18n.t("errors.messages.not_saved",
:count => resource.errors.count,
:resource => resource.class.model_name.human.downcase)

html = <<-HTML
<div id="error_explanation">
  <div class="alert alert-danger" role="alert"><span class="glyphicon glyphicon-exclamation-sign"></span><strong> #{sentence}</strong></div>
  <div class="alert alert-warning" role="alert"><ul>#{messages}</ul></div>
</div>
HTML

html.html_safe
end

def devise_error_messages?
resource.errors.empty? ? false : true
end

end