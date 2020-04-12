# frozen_string_literal: true

module Interage
  module GravatarHelper
    BASE_URL = 'https://www.gravatar.com/avatar'

    def gravatar_image_tag(email, size = 50, options = {})
      hexdigest = Digest::MD5.hexdigest(email)

      image_tag("#{BASE_URL}/#{hexdigest}?size=#{size}", options)
    end
  end
end
