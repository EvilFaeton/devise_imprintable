module Devise 
  module Models
    module Imprintable
      def update_imprintable_fields!(request)
        self.first_sign_in_at = self.first_sign_in_at || Time.now
        self.first_sign_in_ip = self.first_sign_in_ip || request.remote_ip
        save(:validate => false) or raise "Devise imprintable could not save #{inspect}." \
          "Please make sure a model using imprintable can be saved at sign in."
      end
    end
  end
end