# module UiHelper
#   COMPONENTS = [
#     'Card'
#   ]
#
#   def self.included(base)
#     COMPONENTS.each do |component|
#       base.define_method("ui_#{component.underscore}") do |**html_options, &block|
#         component_class = "Ui::#{component.camelize}Component"
#         render(Object.const_get(component_class).new(**html_options), &block)
#       end
#     end
#   end
# end
module UiHelper
  COMPONENTS = {
    card: 'Ui::CardComponent',
  }.freeze

  COMPONENTS.each do |name, component|
    define_method "ui_#{name.to_s}" do |*args, **kwargs, &block|
      render component.constantize.new(*args, **kwargs), &block
    end
  end
end
