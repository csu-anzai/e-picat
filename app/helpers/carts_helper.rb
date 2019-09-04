module CartsHelper
	def current_cart

		if current_user && Cart.find_by(user_id: current_user.id)
			@cart = Cart.find_by(user_id: current_user.id)

			puts "Ambony"
		else
			@cart = Cart.new
			@cart.user = current_user
			@cart.save
			puts "Ambany"
		end
		session[:cart_id] ||= @cart.id

		puts session[:cart_id]
	end
end