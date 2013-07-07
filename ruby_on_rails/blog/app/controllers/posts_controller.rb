class PostsController < ApplicationController

  # index is one of the 7 routes that rails uses.  
  # index, show, new, edit, create, update and destroy actions
  # http://guides.rubyonrails.org/routing.html
  # This will be the default page when someone access the posts URL
  # just by defining it even empty we have a posts index page -> we need a view file for it to display
  
  # Regarding mass_assignment 
  # http://blog.remarkablelabs.com/2012/12/strong-parameters-rails-4-countdown-to-2013
  # http://carnal0wnage.attackresearch.com/2013/05/rails-strong-parameters.html
  
  def index    
    @posts = Post.all # get all posts and store them in this te @posts instance variable. then we can have access to this variable inside our view file to display these posts in the browser
  end
  
  #----------- 7 different actions
  def show  # show indivisual post
    @post = Post.find(params[:id])  #Params hash and grab the id that was passsed-in through the URL.
    # Note that INSTANCE VARIABLES ARE ACCESSIBLE INSIDE OUR VIEW FILE. 
  end
  
  def new # display a anew form to create  a new post
  
  end
  
  def create # form from the new action will submit to and this will save the post into the datasbe
  
  end
  
  def edit # display a form for editing the pst
  
  end
  
  def update # to actually updatign a post. the form on edit page ill submit to the update action and this will update that post in the datasbe
  
  end
  
  def destroy # to delete a post
  
  end
  
  
end
