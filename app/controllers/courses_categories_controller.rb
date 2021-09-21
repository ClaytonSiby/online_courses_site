class CoursesCategoriesController < ApplicationController
  before_action :set_courses_category, only: %i[show edit update destroy]

  # GET /courses_categories or /courses_categories.json
  def index
    @courses_categories = CoursesCategory.all
  end

  # GET /courses_categories/1 or /courses_categories/1.json
  def show; end

  # GET /courses_categories/new
  def new
    @courses_category = CoursesCategory.new
  end

  # GET /courses_categories/1/edit
  def edit; end

  # POST /courses_categories or /courses_categories.json
  def create
    @courses_category = CoursesCategory.new(courses_category_params)

    respond_to do |format|
      if @courses_category.save
        format.html { redirect_to @courses_category, notice: 'Courses category was successfully created.' }
        format.json { render :show, status: :created, location: @courses_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @courses_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses_categories/1 or /courses_categories/1.json
  def update
    respond_to do |format|
      if @courses_category.update(courses_category_params)
        format.html { redirect_to @courses_category, notice: 'Courses category was successfully updated.' }
        format.json { render :show, status: :ok, location: @courses_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @courses_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses_categories/1 or /courses_categories/1.json
  def destroy
    @courses_category.destroy
    respond_to do |format|
      format.html { redirect_to courses_categories_url, notice: 'Courses category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_courses_category
    @courses_category = CoursesCategory.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def courses_category_params
    params.fetch(:courses_category, {})
  end
end
