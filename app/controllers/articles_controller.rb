class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    # def create
    #     render plain: params[:article].inspect
    # end
    def create
        byebug
        @article = Article.new(title: params[:article][:title], text: params[:article][:text])
    
        if @article.save
          redirect_to @article
        else
          render :new, status: :unprocessable_entity
        end
    end

    def show
        @article = Article.find(params[:id])
    end
end
