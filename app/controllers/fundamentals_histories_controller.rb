class FundamentalsHistoriesController < ApplicationController
  before_filter :get_company

  # GET /fundamentals_histories
  # GET /fundamentals_histories.json
  def index
    @fundamentals_histories = @company.fundamentals_histories.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fundamentals_histories }
    end
  end

  # GET /fundamentals_histories/1
  # GET /fundamentals_histories/1.json
  def show
    @fundamentals_history = @company.fundamentals_histories.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fundamentals_history }
    end
  end

  # GET /fundamentals_histories/new
  # GET /fundamentals_histories/new.json
  def new
    @fundamentals_history = FundamentalsHistory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fundamentals_history }
    end
  end

  # GET /fundamentals_histories/1/edit
  def edit
    @fundamentals_history = @company.fundamentals_histories.find(params[:id])
  end

  # POST /fundamentals_histories
  # POST /fundamentals_histories.json
  def create
    #@fundamentals_history = FundamentalsHistory.new
    @fundamentals_history = @company.fundamentals_histories.build(params[:fundamentals_history])

    respond_to do |format|
      if @fundamentals_history.save
        format.html { redirect_to @fundamentals_history, notice: 'Fundamentals history was successfully created.' }
        format.json { render json: @fundamentals_history, status: :created, location: @fundamentals_history }
      else
        format.html { render action: "new" }
        format.json { render json: @fundamentals_history.errors, status: :unprocessable_entity }
      end
    end
  end 
  # PUT /fundamentals_histories/1
  # PUT /fundamentals_histories/1.json
  def update
    #@fundamentals_history = FundamentalsHistory.find(params[:id])
    @fundamentals_history = @company.fundamentals_histories.find(params[:id])

    respond_to do |format|
      if @fundamentals_history.update_attributes(params[:fundamentals_history])
        format.html { redirect_to @fundamentals_history, notice: 'Fundamentals history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fundamentals_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fundamentals_histories/1
  # DELETE /fundamentals_histories/1.json
  def destroy
    @fundamentals_history = @company.fundamentals_histories.find(params[:id])
    #@fundamentals_history = FundamentalsHistory.find(params[:id])
    @fundamentals_history.destroy

    respond_to do |format|
      format.html { redirect_to company_fundamentals_histories_url(@company) }
      format.json { head :no_content }
    end
  end

  private

  def get_company
    @company = Company.find(params[:company_id])
  end
end
