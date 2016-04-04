class AddPurchaseOrderToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :purchase_order, :integer
  end
end
