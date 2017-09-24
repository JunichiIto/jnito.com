module ApplicationHelper
  def gravatar_url(size = 165)
    gravatar_id = Digest::MD5::hexdigest('me@jnito.com')
    "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
  end

  def set_og_meta_tags
    title = 'Junichi Ito'
    image_url = gravatar_url(750)
    description = "Junichi Ito's portal site."
    og_params = {
      title:    title,
      type:     'website',
      url:      request_url_without_get_params,
      image:    image_url,
      description: description,
    }
    twitter_params = {
      image: {
        src: image_url
      },
      card: 'summary_large_image',
      title: title,
      description: description,
    }
    set_meta_tags og: og_params, twitter: twitter_params
  end

  def request_url_without_get_params
    # http://stackoverflow.com/questions/9912678/rails-how-to-request-url-except-url-params
    request.url.split('?').first
  end
end
