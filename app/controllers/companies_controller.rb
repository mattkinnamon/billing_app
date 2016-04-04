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
    params.require(:company).permit( :companies_name, :companies_contact_name, :companies_contact_phone, :companies_contact_email, :companies_domain, :companies_street_address, :companies_city, :companies_state, :companies_zip, :companies_taxable, :companies_billing_rate, :companies_purchase_order, :companies_terms)
  end
end
