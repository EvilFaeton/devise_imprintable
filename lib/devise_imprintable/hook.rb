Warden::Manager.after_set_user :except => :fetch do |record, warden, options|
  if record.respond_to?(:update_imprintable_fields!) && warden.authenticated?(options[:scope]) && !warden.request.env['devise.skip_imprintable']
    record.update_imprintable_fields!(warden.request)
  end
end