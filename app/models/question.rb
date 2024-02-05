class Question < ApplicationRecord
  acts_as_taggable_on :tags
  searchkick text_start: [:title], suggest: [:title]
end
