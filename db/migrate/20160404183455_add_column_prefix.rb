class AddColumnPrefix < ActiveRecord::Migration
  def change
  	rename_column :companies, :company_name, :companies_name
  	rename_column :companies, :contact, :companies_contact_name
  	rename_column :companies, :phone, :companies_contact_phone
  	rename_column :companies, :email1, :companies_contact_email
  	rename_column :companies, :domain, :companies_domain
  	rename_column :companies, :street_address, :companies_street_address
  	rename_column :companies, :city, :companies_city
  	rename_column :companies, :state, :companies_state
  	rename_column :companies, :zip, :companies_zip
  	rename_column :companies, :taxable, :companies_taxable
  	rename_column :companies, :billing_rate, :companies_billing_rate
  	rename_column :companies, :purchase_order, :companies_purchase_order
    rename_column :companies, :terms, :companies_terms
  end
end
