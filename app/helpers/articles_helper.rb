module ArticlesHelper
  def create_article_params
    params.require(:article).permit(:title, :body)
  end
end
