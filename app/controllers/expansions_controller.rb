require_dependency "slim_fast/application_controller"

module SlimFast
  class ExpansionsController < ApplicationController

    # GET /expansions
    # GET /expansions.json
    def index
      @expansions = Expansion.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @expansions }
      end
    end
  
    # GET /expansions/1
    # GET /expansions/1.json
    def show
      @expansion = Expansion.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @expansion }
      end
    end
  
    # GET /expansions/new
    # GET /expansions/new.json
    def new
      @expansion = Expansion.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @expansion }
      end
    end
  
    # GET /expansions/1/edit
    def edit
      @expansion = Expansion.find(params[:id])
    end
  
    # POST /expansions
    # POST /expansions.json
    def create
      @expansion = Expansion.new(params[:expansion])
  
      respond_to do |format|
        if @expansion.save
          format.html { redirect_to @expansion, notice: 'Expansion was successfully created.' }
          format.json { render json: @expansion, status: :created, location: @expansion }
        else
          format.html { render action: "new" }
          format.json { render json: @expansion.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /expansions/1
    # PUT /expansions/1.json
    def update
      @expansion = Expansion.find(params[:id])
  
      respond_to do |format|
        if @expansion.update_attributes(params[:expansion])
          format.html { redirect_to @expansion, notice: 'Expansion was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @expansion.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /expansions/1
    # DELETE /expansions/1.json
    def destroy
      @expansion = Expansion.find(params[:id])
      @expansion.destroy
  
      respond_to do |format|
        format.html { redirect_to expansions_url }
        format.json { head :no_content }
      end
    end
  end
end
