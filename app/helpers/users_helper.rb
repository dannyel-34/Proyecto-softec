module UsersHelper
    
    def rol(us)
        
        @assignments = Assignment.find(user_id: us)
        
    end
    
end
