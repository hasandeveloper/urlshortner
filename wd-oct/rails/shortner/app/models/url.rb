class Url < ApplicationRecord
  before_create :generate_short_url

  def generate_short_url
   self.short_url = (("a".."z").to_a).sample(5).join
   self.click = 0
  end

end
