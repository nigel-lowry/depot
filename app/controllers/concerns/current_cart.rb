module CurrentCart

  private

  def set cart
    @cart = Cart.find(session[:cart_id])
  return ActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:cart_id] = @cart.id
  end
end
