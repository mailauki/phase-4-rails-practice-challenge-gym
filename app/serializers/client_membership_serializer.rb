class ClientMembershipSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :memberships_total

  has_many :memberships, serializer: MembershipGymSerializer
  
  def memberships_total
    object.memberships.map{ |membership| membership.charge }.sum
  end
end
