class DonateController < ApplicationController
	def view
		@key = Braintree::ClientToken.generate
		respond_to do |format|
			format.html { render :donate}
		end
	end
end
