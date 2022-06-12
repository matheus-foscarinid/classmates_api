class ClassmatesController < ApplicationController
  before_action :set_classmate, only: [:show, :update, :destroy]

  # GET /classmates
  def index
    @classmates = Classmate.all

    render json: @classmates
  end

  # GET /classmates/1
  def show
    render json: @classmate
  end

  # POST /classmates
  def create
    @classmate = Classmate.new(classmate_params)

    if @classmate.save
      render json: @classmate, status: :created, location: @classmate
    else
      render json: @classmate.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /classmates/1
  def update
    if @classmate.update(classmate_params)
      render json: @classmate
    else
      render json: @classmate.errors, status: :unprocessable_entity
    end
  end

  # DELETE /classmates/1
  def destroy
    @classmate.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classmate
      @classmate = Classmate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def classmate_params
      params.require(:classmate).permit(:name, :email, :age, :registration_number)
    end
end
