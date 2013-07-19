class SnippetsController < ApplicationController
  def index
    @snippets = Snippet.all
  end

  def show
    @snippet = Snippet.find(params[:id])
  end

  def new
    @feature = Feature.find(params[:feature_id])
    @snippet = Snippet.new
  end

  def create
    @feature = Feature.find(params[:feature_id])
    @feature.snippets.build(params[:snippet])
    # @snippet = Snippet.new(params[:snippet])
    if @feature.save
      redirect_to @feature, notice: "Snippet was successfully created."
    else
      render :new
    end
  end

  def edit
    @snippet = Snippet.find(params[:id])
  end

  def update
    @snippet = Snippet.find(params[:id])
    @feature = @snippet.feature
    if @snippet.update_attributes(params[:snippet])
      redirect_to @feature, notice: "Snippet was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @snippet = Snippet.find(params[:id])
    @snippet.destroy
    redirect_to snippets_url
  end
end