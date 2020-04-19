# frozen_string_literal: true

module Wizard
  module Article
    STEPS = %w[step1 step2 step3].freeze

    class Base
      include ActiveModel::Model
      attr_accessor :article

      delegate *::Article.attribute_names.map { |att| [att, "#{att}="] }.flatten, to: :article

      def initialize(article_attributes)
        @article = ::Article.new(article_attributes)
      end
    end

    # Adding article title and source data
    class Step1 < Base
      validates :title, presence: true
      validates :source_title, presence: true
    end

    # Adding article body (main content)
    class Step2 < Step1
      validates :body, presence: true
    end

    # Adding article meta-data (category and age-group)
    class Step3 < Step2
      validates :category, presence: true
    end
  end
end
