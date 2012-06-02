class Movie < ActiveRecord::Base

  def self.all_ratings
      # Huh. ActiveRecord.select(:rating).uniq simply does. not. work. SQLite limitation?
      # Something else? Weird and baffling. So. .group it is.
      self.select(:rating).group(:rating).map { |rating| rating.rating }
  end
end
