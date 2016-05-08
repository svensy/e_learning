require "administrate/base_dashboard"

class WordDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    category: Field::BelongsTo,
    lesson_words: Field::HasMany,
    lessons: Field::HasMany,
    word_answers: Field::HasMany,
    id: Field::Number,
    content: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :category,
    :lesson_words,
    :lessons,
    :word_answers,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :category,
    :lesson_words,
    :lessons,
    :word_answers,
    :id,
    :content,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :category,
    :lesson_words,
    :lessons,
    :word_answers,
    :content,
  ].freeze

  # Overwrite this method to customize how words are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(word)
  #   "Word ##{word.id}"
  # end
end
