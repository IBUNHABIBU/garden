module ApplicationHelper
  def flash_class(type)
    case type.to_sym
    when :notice then "bg-green-800 border border-green-700 text-gray-100" # Deep green
    when :alert, :error then "bg-amber-800 border border-amber-700 text-gray-100" # Earthy brown alternative
    else "bg-amber-300 border border-amber-400 text-gray-900" # Golden yellow
    end
  end

  def flash_icon(type)
    case type.to_sym
    when :notice
      '<svg class="h-5 w-5 text-gray-100" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
      </svg>'.html_safe
    when :alert, :error
      '<svg class="h-5 w-5 text-gray-100" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zM8.707 7.293a1 1 0 00-1.414 1.414L8.586 10l-1.293 1.293a1 1 0 101.414 1.414L10 11.414l1.293 1.293a1 1 0 001.414-1.414L11.414 10l1.293-1.293a1 1 0 00-1.414-1.414L10 8.586 8.707 7.293z" clip-rule="evenodd" />
      </svg>'.html_safe
    else
      '<svg class="h-5 w-5 text-gray-900" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
        <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2h-1V9z" clip-rule="evenodd" />
      </svg>'.html_safe
    end
  end

  def inline_svg_tag(filename, options = {})
  file_path = Rails.root.join('app', 'assets', 'images', "#{filename}.svg")
    if File.exist?(file_path)
      file_content = File.read(file_path)
      css_class = options[:class] || ''
      file_content.gsub('<svg', "<svg class='#{css_class}'").html_safe
    else
      content_tag(:span, "Icon not found: #{filename}", class: options[:class])
    end
  end
end