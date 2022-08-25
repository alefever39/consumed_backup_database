class ExternalApisController < ApplicationController
  def index
    render json: ExternalApi.all
  end

  def create
    record =
      ExternalApi.create(
        title: params[:title],
        title_id: params[:title_id],
        response: params[:response],
        api: params[:api]
      )
    render json: record
  end

  def destroy
    ExternalApi.find_by!(id: params[:id])
  end
end
