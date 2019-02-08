class HelloController < ApplicationController  
    def index
      @hello = Hello.all.first
    end
end
 