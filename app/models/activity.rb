class Activity < ActiveRecord::Base

  belongs_to :user

  @@default_categories = [
    "Art",
    "Comedy",
    "Dance",
    "Film",
    "Food & Drink",
    "Museum",
    "Music",
    "Outdoors",
    "Religion",
    "Sports"
  ]

  def slug
    self.title.parameterize
  end

  def self.find_by_slug(slug)
    self.all.find {|instance| instance.slug == slug}
  end

  def self.default_categories
    @@default_categories
  end

  # only shows current categories - not sure if useful but works
  def self.all_categories
    self.all.map do |activity|
      activity.category
    end.uniq
  end

end
