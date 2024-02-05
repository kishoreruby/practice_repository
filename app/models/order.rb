class Order < ApplicationRecord
  has_many :order_items
  # scope :expensive_orders, -> { where('price > ?', 500) }

  def self.orders_with_total_quanty
    with(
      total_quantity_cte: OrderItem
        .select('order_id, SUM(quantity) AS total_quantity')
        .group(:order_id)
    )
    .from('total_quantity_cte AS orders')
    .joins('LEFT JOIN orders ON orders.id = order_items.order_id')
    .select('orders.name, total_quantity')
  end
end
