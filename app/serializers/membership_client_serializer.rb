class MembershipClientSerializer < ActiveModel::Serializer
  attributes :charge, :client_name

  def client_name
    object.client.name
  end
end
