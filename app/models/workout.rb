class Workout < ApplicationRecord
    include PgSearch
    pg_search_scope :search_workouts_for_keyword,
      against: [ :description ],
      using: {
        tsearch: { prefix: true } # <-- 
      }
end
