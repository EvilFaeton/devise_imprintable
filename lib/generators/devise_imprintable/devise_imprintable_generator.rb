module DeviseInvitable
  module Generators
    class DeviseInvitableGenerator < Rails::Generators::NamedBase
      namespace "devise_imprintable"

      desc "Add :imprintable directive in the given model. Also generate migration for ActiveRecord"


      def inject_devise_invitable_content
        path = File.join("app", "models", "#{file_path}.rb")
        inject_into_file(path, "imprintable, :", :after => "devise :") if File.exists?(path)
      end

      hook_for :orm
    end
  end
end