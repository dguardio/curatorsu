module ModsHelper
	def embed_video(video)
		@vid = VideoInfo.new(video).embed_code.html_safe
	end
end