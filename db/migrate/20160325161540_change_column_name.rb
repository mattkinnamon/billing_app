class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :companies, :companyName, :company_name
  	rename_column :companies, :streetAddress, :street_address
  	rename_column :companies, :billingRate, :billing_rate
  end
end
