module ModsHelper
	def embed_video(video)
		if video.nil?
			@vid = ""
		elsif video == ""
		 	@vid = ""
		else  
			@vid = VideoInfo.new(video).embed_code(iframe_attributes: { width: 854, height: 480, 'data-key' => 'value'}).html_safe
		end
	end
end