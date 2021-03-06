module Api
  module V1
    class PostsController < ApplicationController
      def index
        posts = Post.order('created_at DESC');
        render json: {status: 'SUCCESS', message: 'Loaded posts', data: posts}, status: :ok
      end

      def show
        post = Post.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded post', data: post}, status: :ok
      end
    end
  end
end
