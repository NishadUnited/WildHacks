class DonateController < ApplicationController
	def view
		@key = Braintree::ClientToken.generate
		respond_to do |format|
			format.html { render :donate}
		end
	end

	def checkout
		@nonce = params[:payment_method_nonce]
	    # Use payment method nonce here...
	    @result = Braintree::Transaction.sale(
	      :amount => "1.00",
	      :payment_method_nonce => @nonce
	    )
	end
end
