class AddReportEmails < ActiveRecord::Migration
  def change
    add_column :companies, :companies_report_email1, :string
    add_column :companies, :companies_report_email2, :string
    add_column :companies, :companies_report_email3, :string
    add_column :companies, :companies_report_email4, :string
    add_column :companies, :companies_report_email5, :string
    add_column :companies, :companies_report_email6, :string
    add_column :companies, :companies_report_email7, :string
    add_column :companies, :companies_report_email8, :string
  end
end
