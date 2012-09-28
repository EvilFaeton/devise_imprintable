class User < PARENT_MODEL_CLASS
  if DEVISE_ORM == :mongoid
    include Mongoid::Document

    ## Database authenticatable
    field :email,              :type => String, :null => false, :default => ""
    field :encrypted_password, :type => String, :null => false, :default => ""

    ## Recoverable
    field :reset_password_token,   :type => String
    field :reset_password_sent_at, :type => Time

    ## Confirmable
    field :confirmation_token,   :type => String
    field :confirmed_at,         :type => Time
    field :confirmation_sent_at, :type => Time
    field :unconfirmed_email,    :type => String # Only if using reconfirmable

    ## Imprintable
    field :first_sign_in_ip,       :type => String
    field :first_sign_in_at,       :type => Time


    field :username
    attr_accessible :username, :email, :password, :password_confirmation, :remember_me
  end

  devise :database_authenticatable, :registerable, :validatable, :confirmable, :imprintable, :recoverable

  attr_accessible :email, :username, :password, :password_confirmation, :first_sign_in_at, :first_sign_in_ip

end
