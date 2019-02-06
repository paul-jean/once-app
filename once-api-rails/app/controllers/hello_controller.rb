class HelloController < ApplicationController  
    def index
      @hello = Hello.all
    end
end
 