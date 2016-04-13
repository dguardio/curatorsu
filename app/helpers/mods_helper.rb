module ModsHelper
	def embed_video(video)
		if video.nil?
			@vid = ""
		elsif video == ""
		 	@vid = ""
		else  
			@vid = VideoInfo.new(video).embed_code.html_safe
		end
	end
end