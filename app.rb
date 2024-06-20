require 'sinatra'
require 'httparty'
require 'json'
require 'yaml'

class StatusPageAggregator < Sinatra::Base
  configure do
    set :status_pages, YAML.load_file('config/status_pages.yml')
  end

  get '/styles.css' do
    scss :styles
  end

  get '/' do
    @status_pages = settings.status_pages
    erb :index
  end

  get '/statuses' do
    statuses = fetch_statuses
    content_type :json
    statuses.to_json
  end

  private

  def fetch_statuses
    settings.status_pages.map do |name, url|
      response = HTTParty.get("#{url}/api/v2/summary.json")
      if response.success?
        data = JSON.parse(response.body)
        {
          name: name,
          url: url,
          page: data['page'],
          status: data['status'],
          incidents: data['incidents']
        }
      else
        { name: name, url: url, error: "Failed to fetch status" }
      end
    end
  end
end
