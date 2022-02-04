class WidgetsController < ApplicationController
  before_action :set_widget, only: %i[ show edit update destroy ]

  # GET /widgets or /widgets.json
  def index
    @pagy, @widgets = pagy(Widget.all, items: 10)
  end

  # GET /widgets/1 or /widgets/1.json
  def show
  end

  # GET /widgets/new
  def new
    @widget = Widget.new
  end

  # GET /widgets/1/edit
  def edit
  end

  # POST /widgets or /widgets.json
  def create
  end

  # PATCH/PUT /widgets/1 or /widgets/1.json
  def update
  end

  # DELETE /widgets/1 or /widgets/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_widget
      @widget = Widget.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def widget_params
      params.require(:widget).permit(:name)
    end
end
