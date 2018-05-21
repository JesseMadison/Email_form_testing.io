class PeopleController < ApplicationController

def elephant
end

def new
end

def create
    #@person = Person.new(:name => "", age:"10")
    render plain: params[:people].inspect
end


end
