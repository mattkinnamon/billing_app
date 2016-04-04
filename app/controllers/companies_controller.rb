class CompaniesController < ApplicationController
  before_action :find_company, only: [:show, :edit, :update, :destroy]
  def index
  	@companies = Company.all.order("created_at DESC")
  end

  def new
  	@company = Company.new
  end

  def create
  	@company = Company.new(company_params)

  	if @company.save
  	  redirect_to @company
  	else
  	  render 'new'
  	end
  end

  def show
  end

  def edit
  end

  def update
    if @company.update(company_params)
      redirect_to @company
    else
      render 'edit'
    end
  end

  def destroy 
    @company.destroy
    redirect_to root_path
  end
  	
  private

  def find_company
  	@company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit( :company_name, :contact, :domain, :phone, :email1, :street_address, :city, :state, :zip, :taxable, :billing_rate, :purchase_order, :terms)
  end
end
