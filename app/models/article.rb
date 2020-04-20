# frozen_string_literal: true

# Модель статьи (новости)
class Article < ApplicationRecord
  AGE_GROUPS = %w[0+ 6+ 12+ 16+ 18+].freeze
  CATEGORIES = %w[Auto Health Finance Events].freeze

  # Принадлежит автору (пользователю в системе, который опубликовал)
  belongs_to :user

  enum age_group: AGE_GROUPS
  enum category: CATEGORIES

  validates :title, :source_title, :body, presence: true

  default_scope { order(created_at: :desc) }
end
