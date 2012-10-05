require_dependency "slim_fast/application_controller"

module SlimFast
  class ShortDomainsController < ApplicationController
    # GET /short_domains
    # GET /short_domains.json
    def index
      @short_domains = ShortDomain.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @short_domains }
      end
    end
  
    # GET /short_domains/1
    # GET /short_domains/1.json
    def show
      @short_domain = ShortDomain.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @short_domain }
      end
    end
  
    # GET /short_domains/new
    # GET /short_domains/new.json
    def new
      @short_domain = ShortDomain.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @short_domain }
      end
    end
  
    # GET /short_domains/1/edit
    def edit
      @short_domain = ShortDomain.find(params[:id])
    end
  
    # POST /short_domains
    # POST /short_domains.json
    def create
      @short_domain = ShortDomain.new(params[:short_domain])
  
      respond_to do |format|
        if @short_domain.save
          format.html { redirect_to @short_domain, notice: 'Short domain was successfully created.' }
          format.json { render json: @short_domain, status: :created, location: @short_domain }
        else
          format.html { render action: "new" }
          format.json { render json: @short_domain.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /short_domains/1
    # PUT /short_domains/1.json
    def update
      @short_domain = ShortDomain.find(params[:id])
  
      respond_to do |format|
        if @short_domain.update_attributes(params[:short_domain])
          format.html { redirect_to @short_domain, notice: 'Short domain was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @short_domain.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /short_domains/1
    # DELETE /short_domains/1.json
    def destroy
      @short_domain = ShortDomain.find(params[:id])
      @short_domain.destroy
  
      respond_to do |format|
        format.html { redirect_to short_domains_url }
        format.json { head :no_content }
      end
    end
  end
end
