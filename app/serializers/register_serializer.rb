class RegisterSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :address, :mobile, :email, :institution_id
end