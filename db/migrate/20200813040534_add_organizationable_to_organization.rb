class AddOrganizationableToOrganization < ActiveRecord::Migration[6.0]
  def change
    add_reference :organizations, :organiable, polymorphic: true
  end
end
