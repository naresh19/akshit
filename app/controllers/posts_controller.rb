class PostsController < ApplicationController
http_basic_authenticate_with :name=>"naresh", :password=>"123456", :except=>[:index,:show]
#http_basic_authenticate_with :name=>"naresh", :password=>"123456", :only=>destroy
def new
	@post = Post.new
end
def create
	# text: params[:post].inspect
 	@post = Post.new((paramsdef params))
	if @post.save
		redirect_to @post
	else
		render 'new'
	end
end
def show
	@post=Post.find(params[:id])
end
def index
	@posts=Post.all
end
def edit
	@post=Post.find(params[:id])
end
def update
	@post=Post.find(params[:id])
	#puts " 888888888888888888888888888888888888888888888888888888888888888"
	#puts params[:post]
	if @post.update_attributes(params[:post])
		redirect_to @post
	else
		render 'edit'
	end
end
def destroy
	@post=Post.find(params[:id])
	@post.destroy
	redirect_to  posts_path
end
private
	def paramsdef prm
		prm=prm[:post]
		p= { "title" =>prm[:title], "text" =>prm[:text] }
		#puts "dsffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
		#puts prm
		#puts p
		p
	end
end
