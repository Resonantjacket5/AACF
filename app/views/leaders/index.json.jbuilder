json.array!(@leaders) do |leader|
  json.extract! leader, :id, :position, :name, :year, :major, :hometown, :email, :strange_fact, :interests, :leadership_position, :graduated, :contact_ok, :past_positions, :post_grad_email
  json.url leader_url(leader, format: :json)
end
