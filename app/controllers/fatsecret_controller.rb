class FatsecretController < ApplicationController
    
    def gettoken
        @app_api_id = ENV["fat_secret_client_id"]
        @api_secret_key = ENV["fat_secret_secret_key"]
        access_url = "https://oauth.fatsecret.com/connect/token"
        @jwt_token = ""

        client = Dalli::Client.new('localhost:11211')
        FoodInfo.establish_connection(:fat_secret, :key => @api_secret_key, :secret => @api_secret_key, :cache => client)
        puts FoodInfo.search('')
        render json: 'hello'
    end
    
    def index
        @app_api_id = ENV["fat_secret_client_id"]
        @api_secret_key = ENV["fat_secret_secret_key"]
        @fatsecret_url = "https://platform.fatsecret.com/rest/server.api"
    end
end
