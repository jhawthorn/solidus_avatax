class CloseAllTaxAdjustments < ActiveRecord::Migration
  def up
    Spree::Adjustment.tax.update_all(finalized: true)
  end
end
