module Vimeo
  module Advanced
    class Album < Vimeo::Advanced::Base

      # Adds a video to an album.
      create_api_method :add_video,
                        "vimeo.albums.addVideo",
                        :required => [:auth_token, :album_id, :video_id]

      # Creates an album.
      # FIXME: Nothing is returned if you add multiple videos to an album.
      # The optional parameter videos is a comma-separated list of video ids.
      create_api_method :create,
                        "vimeo.albums.create",
                        :required => [:auth_token, :title, :video_id],
                        :optional => [:description, :videos]
      
      # Deletes an album.
      create_api_method :delete,
                        "vimeo.albums.delete",
                        :required => [:auth_token, :album_id]
      
      # Returns a list of a user's albums.
      create_api_method :get_all,
                        "vimeo.albums.getAll",
                        :required => [:user_id],
                        :optional => [:page, :per_page, :sort]
      
      # Returns a list of the videos in an album.
      create_api_method :get_videos,
                        "vimeo.albums.getVideos",
                        :required => [:auth_token, :album_id],
                        :optional => [:page, :per_page, :full_response, :password]
      
      # Removes a video from an album.
      create_api_method :remove_video,
                        "vimeo.albums.removeVideo",
                        :required => [:auth_token, :album_id, :video_id]

      # Sets the description of an album.
      create_api_method :set_description,
                        "vimeo.albums.setDescription",
                        :required => [:auth_token, :album_id, :description]
                        
      # Sets the password of an album.
      create_api_method :set_password,
                        "vimeo.albums.setPassword",
                        :required => [:auth_token, :album_id, :password]
      
      # Sets the title of an album.
      create_api_method :set_title,
                        "vimeo.albums.setTitle",
                        :required => [:auth_token, :album_id, :title]

    end # Album
  end # Advanced
end # Vimeo