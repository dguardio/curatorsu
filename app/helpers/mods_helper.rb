module ModsHelper
	def embed_video(video)
		@vid = VideoInfo.new(video).embed_code
	end
end