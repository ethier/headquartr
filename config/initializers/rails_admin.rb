# RailsAdmin config file. Generated on June 18, 2012 20:49
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|

  # If your default_local is different from :en, uncomment the following 2 lines and set your default locale here:
  # require 'i18n'
  # I18n.default_locale = :de

  config.current_user_method { current_user } # auto-generated

  # If you want to track changes on your models:
  # config.audit_with :history, User

  # Or with a PaperTrail: (you need to install it first)
  # config.audit_with :paper_trail, User

  # Set the admin name here (optional second array element will appear in a beautiful RailsAdmin red ©)
  config.main_app_name = ['Headquartr', 'Admin']
  # or for a dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }


  #  ==> Global show view settings
  # Display empty fields in show views
  # config.compact_show_view = false

  #  ==> Global list view settings
  # Number of default rows per-page:
  # config.default_items_per_page = 20

  #  ==> Included models
  # Add all excluded models here:
  # config.excluded_models = [Address, Authentication, City, Country, Flag, HousingType, Image, LaundryType, Listing, PetType, Region, TermType, User, UtilitiesType]

  # Add models here if you want to go 'whitelist mode':
  # config.included_models = [Address, Authentication, City, Country, Flag, HousingType, Image, LaundryType, Listing, PetType, Region, TermType, User, UtilitiesType]

  # Application wide tried label methods for models' instances
  # config.label_methods << :description # Default is [:name, :title]

  #  ==> Global models configuration
  # config.models do
  #   # Configuration here will affect all included models in all scopes, handle with care!
  #
  #   list do
  #     # Configuration here will affect all included models in list sections (same for show, export, edit, update, create)
  #
  #     fields_of_type :date do
  #       # Configuration here will affect all date fields, in the list section, for all included models. See README for a comprehensive type list.
  #     end
  #   end
  # end
  #
  #  ==> Model specific configuration
  # Keep in mind that *all* configuration blocks are optional.
  # RailsAdmin will try his best to provide the best defaults for each section, for each field.
  # Try to override as few things as possible, in the most generic way. Try to avoid setting labels for models and attributes, use ActiveRecord I18n API instead.
  # Less code is better code!
  # config.model MyModel do
  #   # Cross-section field configuration
  #   object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #   label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #   label_plural 'My models'      # Same, plural
  #   weight -1                     # Navigation priority. Bigger is higher.
  #   parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #   navigation_label              # Sets dropdown entry's name in navigation. Only for parents!
  #   # Section specific configuration:
  #   list do
  #     filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #     items_per_page 100    # Override default_items_per_page
  #     sort_by :id           # Sort column (default is primary key)
  #     sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     # Here goes the fields configuration for the list view
  #   end
  # end

  # Your model's configuration, to help you get started:

  # All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible. (visible(true))

  # config.model Address do
  #   # Found associations:
  #     configure :addressable, :polymorphic_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :addressable_id, :integer         # Hidden 
  #     configure :addressable_type, :string         # Hidden 
  #     configure :country_id, :integer 
  #     configure :region_id, :integer 
  #     configure :city_id, :integer 
  #     configure :line_one, :string 
  #     configure :line_two, :string 
  #     configure :line_three, :string 
  #     configure :appt_no, :string 
  #     configure :postal_zip_code, :string 
  #     configure :latitude, :string 
  #     configure :longitude, :string 
  #     configure :intersection_one, :string 
  #     configure :intersection_two, :string 
  #     configure :active, :boolean 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Authentication do
  #   # Found associations:
  #     configure :user, :belongs_to_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :user_id, :integer         # Hidden 
  #     configure :provider, :string 
  #     configure :uid, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model City do
  #   # Found associations:
  #     configure :region, :belongs_to_association 
  #     configure :address, :belongs_to_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :region_id, :integer         # Hidden 
  #     configure :address_id, :integer         # Hidden 
  #     configure :name, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Country do
  #   # Found associations:
  #     configure :address, :belongs_to_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :address_id, :integer         # Hidden 
  #     configure :name, :string 
  #     configure :code, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Flag do
  #   # Found associations:
  #     configure :flagable, :polymorphic_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :flagable_id, :integer         # Hidden 
  #     configure :flagable_type, :string         # Hidden 
  #     configure :flag, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model HousingType do
  #   # Found associations:
  #     configure :listing, :belongs_to_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :listing_id, :integer         # Hidden 
  #     configure :name, :string 
  #     configure :description, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Image do
  #   # Found associations:
  #     configure :imageable, :polymorphic_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :imageable_id, :integer         # Hidden 
  #     configure :imageable_type, :string         # Hidden 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model LaundryType do
  #   # Found associations:
  #     configure :listing, :belongs_to_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :listing_id, :integer         # Hidden 
  #     configure :name, :string 
  #     configure :description, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Listing do
  #   # Found associations:
  #     configure :user, :belongs_to_association 
  #     configure :term_types, :has_many_association 
  #     configure :utilities_types, :has_many_association 
  #     configure :housing_types, :has_many_association 
  #     configure :laundry_types, :has_many_association 
  #     configure :pet_types, :has_many_association 
  #     configure :addresses, :has_many_association 
  #     configure :images, :has_many_association 
  #     configure :flags, :has_many_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :user_id, :integer         # Hidden 
  #     configure :term_type_id, :integer 
  #     configure :housing_type_id, :integer 
  #     configure :utilities_type_id, :integer 
  #     configure :laundry_type_id, :integer 
  #     configure :pet_type_id, :integer 
  #     configure :rooms, :integer 
  #     configure :amount, :decimal 
  #     configure :basement, :boolean 
  #     configure :views, :integer 
  #     configure :separate_entrance, :boolean 
  #     configure :furnished, :boolean 
  #     configure :parking, :boolean 
  #     configure :internet, :boolean 
  #     configure :cable, :boolean 
  #     configure :balcony_backyard, :boolean 
  #     configure :description, :text 
  #     configure :active, :boolean 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model PetType do
  #   # Found associations:
  #     configure :listing, :belongs_to_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :listing_id, :integer         # Hidden 
  #     configure :name, :string 
  #     configure :description, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Region do
  #   # Found associations:
  #     configure :country, :belongs_to_association 
  #     configure :address, :belongs_to_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :country_id, :integer         # Hidden 
  #     configure :address_id, :integer         # Hidden 
  #     configure :name, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model TermType do
  #   # Found associations:
  #     configure :listing, :belongs_to_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :listing_id, :integer         # Hidden 
  #     configure :name, :string 
  #     configure :description, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model User do
  #   # Found associations:
  #     configure :addresses, :has_many_association 
  #     configure :authentications, :has_many_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :email, :string 
  #     configure :password, :password         # Hidden 
  #     configure :password_confirmation, :password         # Hidden 
  #     configure :reset_password_token, :string         # Hidden 
  #     configure :reset_password_sent_at, :datetime 
  #     configure :remember_created_at, :datetime 
  #     configure :sign_in_count, :integer 
  #     configure :current_sign_in_at, :datetime 
  #     configure :last_sign_in_at, :datetime 
  #     configure :current_sign_in_ip, :string 
  #     configure :last_sign_in_ip, :string 
  #     configure :confirmation_token, :string 
  #     configure :confirmed_at, :datetime 
  #     configure :confirmation_sent_at, :datetime 
  #     configure :unconfirmed_email, :string 
  #     configure :failed_attempts, :integer 
  #     configure :unlock_token, :string 
  #     configure :locked_at, :datetime 
  #     configure :authentication_token, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :address_id, :integer   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model UtilitiesType do
  #   # Found associations:
  #     configure :listing, :belongs_to_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :listing_id, :integer         # Hidden 
  #     configure :name, :string 
  #     configure :description, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
end
