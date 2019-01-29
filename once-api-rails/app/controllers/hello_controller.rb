class HelloController < ApplicationController  
    def index
      @hello = HelloWorld.all
    end
end
 