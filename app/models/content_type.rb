class ContentType
  def self.kind(url)
    case
    when url.match(/medium/)
      'medium'
    when url.match(/soundcloud/)
      'soundcloud'
    when url.match(/youtube/)
      'youtube'
    else
      ''
    end
  end
end
