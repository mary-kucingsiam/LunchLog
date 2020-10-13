class LunchEntriesController < ApplicationController
  before_action :set_lunch_entry, only: [:show, :edit, :update, :destroy]

  # GET /lunch_entries
  # GET /lunch_entries.json
  def index
    @lunch_entries = LunchEntry.all
  end

  # GET /lunch_entries/1
  # GET /lunch_entries/1.json
  def show
  end

  # GET /lunch_entries/new
  def new
    @lunch_entry = LunchEntry.new
  end

  # GET /lunch_entries/1/edit
  def edit
  end

  # POST /lunch_entries
  # POST /lunch_entries.json
  def create
    @lunch_entry = LunchEntry.new(lunch_entry_params)

    respond_to do |format|
      if @lunch_entry.save
        format.html { redirect_to @lunch_entry, notice: 'Lunch entry was successfully created.' }
        format.json { render :show, status: :created, location: @lunch_entry }
      else
        format.html { render :new }
        format.json { render json: @lunch_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lunch_entries/1
  # PATCH/PUT /lunch_entries/1.json
  def update
    respond_to do |format|
      if @lunch_entry.update(lunch_entry_params)
        format.html { redirect_to @lunch_entry, notice: 'Lunch entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @lunch_entry }
      else
        format.html { render :edit }
        format.json { render json: @lunch_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lunch_entries/1
  # DELETE /lunch_entries/1.json
  def destroy
    @lunch_entry.destroy
    respond_to do |format|
      format.html { redirect_to lunch_entries_url, notice: 'Lunch entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lunch_entry
      @lunch_entry = LunchEntry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lunch_entry_params
      params.require(:lunch_entry).permit(:date, :title, :food_name, :author)
    end
end
