module ApplicationHelper
  def gravatar_url(size = 165)
    gravatar_id = Digest::MD5::hexdigest('me@jnito.com')
    "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
  end
end
