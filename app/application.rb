class Application
 
    def call(env)
      resp = Rack::Response.new
   
      morning_message = "Good Morning!"
      afternoon_message = "Good Afternoon!"
  
      if Time.now.hour < 12
        resp.write morning_message
      else
        resp.write afternoon_message
      end
   
      resp.finish
    end
   
  end