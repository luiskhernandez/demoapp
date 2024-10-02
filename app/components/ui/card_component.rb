# frozen_string_literal: true

class UI::CardComponent < UI::BaseComponent
  renders_one :header
  renders_one :footer
  renders_one :body

  def initialize(title:, subtitle: nil, **html_options)
    @title = title
    @subtitle = subtitle
    super(**html_options)
  end
end
