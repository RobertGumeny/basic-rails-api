module Api
  module V1
    class ArticlesController < ApplicationController

      # Get all articles
      def index
        articles = Article.order('created_at DESC')
        render json: { status: 'SUCCESS', message: 'Loaded articles.', data: articles}, status: :ok
      end

      # Get article by ID
      def show
        article = Article.find(params[:id])
        render json: { status: 'SUCCESS', message: 'Loaded article', data: article}, status: :ok
      end

      # Create new article
      def create
        article = Article.new(article_params)
        if article.save
          render json: { status: 'SUCCESS', message: 'Saved article.', data: article}, status: :ok
        else
          render json: { status: 'ERROR', message: 'Article not saved.', data: article.errors}, status: :unprocessable_entity
        end
      end

      # Delete an article
      def destroy
        article = Article.find(params[:id])
        article.destroy
        render json: { status: 'SUCCESS', message: 'Deleted article', data: article}, status: :ok
      end

      # Edit an article
      def update
        article = Article.find(params[:id])
        if article.update_attributes(article_params)
          render json: { status: 'SUCCESS', message: 'Updated article.', data: article}, status: :ok
        else
          render json: { status: 'ERROR', message: 'Article not updated.', data: article.errors}, status: :unprocessable_entity
        end
      end
      
      # Set article params for article creation
      private

      def article_params
        params.permit(:title, :body)
      end
    end
  end
end