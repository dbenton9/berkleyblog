class AddDefaultValueToRole < ActiveRecord::Migration[6.0]
  def change
    change_column_default(
      :users,
      :role,
      from: 'subscribers',
      to: 'subscriber'
    )
  end
end
