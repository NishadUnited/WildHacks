class Flag < ActiveRecord::Base
	 skip_before_action :verify_authenticity_token
end
