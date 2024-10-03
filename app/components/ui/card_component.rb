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

  def default_css
    "flex flex-col bg-white border shadow-sm rounded-xl dark:bg-neutral-900 dark:border-neutral-700 dark:shadow-neutral-700/70"
  end
end
