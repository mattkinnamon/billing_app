class AddFieldsToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :companyName, :string
    add_column :companies, :address, :string
    add_column :companies, :contact, :string
    add_column :companies, :email1, :string
    add_column :companies, :streetAddress, :string
    add_column :companies, :city, :string
    add_column :companies, :state, :string
    add_column :companies, :zip, :integer
    add_column :companies, :taxable, :boolean, null: false, default: false
    add_column :companies, :billingRate, :string
    add_column :companies, :terms, :string
  end
end
