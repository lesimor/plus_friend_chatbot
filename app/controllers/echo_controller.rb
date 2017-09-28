class EchoController < ApplicationController
    def keyboard
        render :json => {
            :type => "text"
        }
    end
    
    def get_message
        user_key = params[:user_key]
        type = params[:type]
        message = params[:content]
        
        result = FUZZYMATCH.find(message)
        
        res = result.nil? ? message : result.answer.strip()
        
        
        render :json => {
            :message => {
                :text => res
            }
        }
    end
    
    def friend_add
        render :status => 200
    end
    
    def friend_out
        render :status => 200
    end
    
    def chat_room_out
        user_key = params[:user_key]
        
        render :status => 200
    end
end
