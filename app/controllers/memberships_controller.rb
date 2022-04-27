class MembershipsController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_invalid_errors

  def create
    membership = Membership.create!(membership_params)
    render json: membership
  end

  private

  def membership_params
    params.permit(:gym_id, :client_id, :charge)
  end

  def render_invalid_errors(e)
    render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
  end

end
