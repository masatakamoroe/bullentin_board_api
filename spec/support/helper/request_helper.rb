module RequestHelper
  def json_body
    body = response.body
    JSON.parse(body, { symbolize_names: true })
  end
end
