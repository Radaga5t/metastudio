# frozen_string_literal: true

# Контроллер новостных статей
class ArticlesController < ApplicationController
  # include Wicked::Wizard
  # steps :add_title_and_source, :add_body, :add_categories

  before_action :authenticate_user!, only: %i[new create destroy]
  before_action :set_article, only: %i[show destroy]

  def index
    @articles = Article.all
  end

  def show; end

  def new
    redirect_to step1_wizard_path
  end

  def create; end

  def destroy; end

  private

  def article_permitted_params
    params.permit :title, :body, :source_title, :source_url,
                  :category, :age_group
  end

  def set_article
    @article = Article.find params.dig(:id)
  end
end
