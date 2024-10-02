class UI::BaseComponent < ViewComponent::Base
  def initialize(**html_options)
    @html_options = html_options
    @html_options ||= {}
  end
end
