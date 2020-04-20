# frozen_string_literal: true

class WizardsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_article_wizard, except: %i[validate_step]

  def validate_step
    current_step = params.dig(:current_step)

    @article_wizard = wizard_article_for_step(current_step)
    @article_wizard.article.attributes = article_wizard_params
    session[:article_attributes] = @article_wizard.article.attributes

    if @article_wizard.valid?
      next_step = wizard_article_next_step(current_step)
      create && return unless next_step

      redirect_to action: next_step
    else
      render current_step
    end
  end

  def create
    @article_wizard.article.user = current_user
    if @article_wizard.article.save
      session[:article_attributes] = nil
      redirect_to root_path, notice: 'Article succesfuly created!'
    else
      redirect_to({action: Wizard::Article::STEPS.first}, alert: 'There were a problems when creating an article!')
    end
  end

  def show; end

  private

  def load_article_wizard
    @article_wizard = wizard_article_for_step(action_name)
  end

  def wizard_article_next_step(step)
    Wizard::Article::STEPS[Wizard::Article::STEPS.index(step) + 1]
  end

  def wizard_article_for_step(step)
    raise InvalidStep unless step.in?(Wizard::Article::STEPS)

    "Wizard::Article::#{step.camelize}".constantize.new(session[:article_attributes])
  end

  def article_wizard_params
    params.require(:article_wizard).permit(:title, :body, :source_title, :source_url, :category, :age_group)
  end

  class InvalidStep < StandardError; end
end
