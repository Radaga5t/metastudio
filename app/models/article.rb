# frozen_string_literal: true

# Модель статьи (новости)
class Article < ApplicationRecord
  # Принадлежит автору (пользователю в системе, который опубликовал)
  belongs_to :user

  enum age_group: %w[0+ 6+ 12+ 16+ 18+]
  enum category: %w[Auto Health Finance Events]

  validates :title, :source_title, :body, presence: true

  default_scope { order(created_at: :desc) }
end
