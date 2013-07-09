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
  
  def new # display a anew form to create  a new post. 'new' action used to display a form so that one can create a post
  # the 'new' action displays the form, that form requires an empty post object in order to create the new post, so we need to send an empty post object to the view. So we create a post instance variable, and assign a new empty post object
    @post = Post.new   # this will accessible in our 'new' action view
  end
  
  
  
  
  
  
  
  
  def create # form from the new action will submit to and this will save the post into the datasbe
    @post = Post.create( params.require(:post).permit(:title, :content))

    if @post
      redirect_to posts_path, :notice => "Your post was saved."
    else
      render "new"
    end

  end



  #@post = Post.create( params.require(:post).permit(:title, :content))
   # @post = Post.new(params[:post])  #he actual post information that was submitted throguh the form. And we grab that through the params hash and we grab that post information. Now we have access to the post object that we save to the databse. 
    
    #if @post.save    # returns true or false if save was successfull
     #  redirect_to posts_path, :notice => "Your post was saved."    # if was successfully saved. redirect to the named rout for the index action view.
       # notice is a flash message and we need to make sure we handle flash messages. Edit the layout file.
    #else
    #  render "new"      # save has been usuccessfull. render the new form again so that the user can try again
    #end
  #end
  
  
  
  
  
  
  
  
  def edit # display a form for editing the pst
    @post = Post.find(params[:id])
  end
  
  def update # to actually updatign a post. the form on edit page ill submit to the update action and this will update that post in the datasbe
    @post = Post.find(params[:id])

    if @post.update_attributes(params.require(:post).permit(:title, :content))
      redirect_to posts_path, :notice => "Your post has been updaetd"
    else
      render "edit"
    end
  end
  
  def destroy # to delete a post
  
  end
  
  
end
