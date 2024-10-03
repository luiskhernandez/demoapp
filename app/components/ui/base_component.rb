class UI::BaseComponent < ViewComponent::Base
  def initialize(override_css: false, **html_options)
    @override_css = override_css
    @html_options = html_options
    @html_options ||= {}

    apply_default_class unless @override_css
  end

  private

  def apply_default_class
    default_class = default_css

    if @html_options[:class]
      @html_options[:class] = "#{default_class} #{@html_options[:class]}"
    else
      @html_options[:class] = default_class
    end
  end

  def default_css
    ""
  end
end
