class Api::V1::InscriptionsController < Api::V1::BaseController
  def index
    @inscriptions = policy_scope(Inscription)
  end
end
