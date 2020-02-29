class PropertyCategoriesController < ApplicationController
  before_action :set_property_category, only: [:show, :update, :destroy]

  # GET /property_categories
  def index
    @property_categories = PropertyCategory.all

    render json: @property_categories
  end

  # GET /property_categories/1
  def show
    render json: @property_category
  end

  # POST /property_categories
  def create
    @property_category = PropertyCategory.new(property_category_params)

    if @property_category.save
      render json: @property_category, status: :created, location: @property_category
    else
      render json: @property_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /property_categories/1
  def update
    if @property_category.update(property_category_params)
      render json: @property_category
    else
      render json: @property_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /property_categories/1
  def destroy
    @property_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_category
      @property_category = PropertyCategory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def property_category_params
      params.permit(:name, :created_at, :edited_at, :updated_at)
    end
end
