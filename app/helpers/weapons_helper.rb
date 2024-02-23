module WeaponsHelper
  def sharpness_bar(durability_json)
    return nil if durability_json.blank?

    durability = JSON.parse(durability_json) rescue nil
    return nil if durability.nil? || durability.empty?

    base_sharpness = durability.first || {}
    total_sharpness = base_sharpness.values.sum
    return nil if total_sharpness.zero?

    sharpness_html = base_sharpness.map do |color, value|
      width = (value.to_f / total_sharpness * 100).floor
      content_tag(:div, '', class: "sharpness-segment #{color}", style: "width: #{width}%")
    end.join

    content_tag(:div, sharpness_html.html_safe, class: 'sharpness-bar')
  end
end
