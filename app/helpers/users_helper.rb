module UsersHelper

  # Returns the robohash for the given user.
  def robohash_for(user, h: 100, w: 100)
    robohash_id = Digest::MD5::hexdigest(user.email.downcase)
    robohash_url = "https://robohash.org/#{robohash_id}.png?set=set1,3&bgset=bg2&size=#{h}x#{w}"
    image_tag(robohash_url, alt: user.name, class: "robohash")
  end
end
