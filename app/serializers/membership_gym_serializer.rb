class MembershipGymSerializer < ActiveModel::Serializer
  attributes :charge, :gym_name

  def gym_name
    object.gym.name
  end
end
