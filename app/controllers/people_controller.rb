class PeopleController < ApplicationController

def elephant

end

def new
end

def index
    @people = Person.all
end

def create
    #@person = Person.new(:name => "", age:"10")
    @person = Person.new(person_params)
    @person.save
    redirect_to people_path
end

def edit
    @person = Person.find(params[:id])
end

def update
    @person = Person.find(params[:id])
    @person.update(person_params)
    redirect_to person_path
end

def show
    @person = Person.find(params[:id])
end

def destroy
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to people_path
end

private

def person_params
    params.require(:person).permit(:name, :age)

end



end
