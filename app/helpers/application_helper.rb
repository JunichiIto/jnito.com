module ApplicationHelper
  def gravatar_url
    gravatar_id = Digest::MD5::hexdigest('me@jnito.com')
    "https://secure.gravatar.com/avatar/#{gravatar_id}?s=165"
  end
end
