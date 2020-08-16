<txp:hide>Local video or audio</txp:hide>
	<txp:hide>Local video</txp:hide>
	<txp:if_yield name="url" value="v">
		<txp:if_yield name="media">
			<txp:variable name="video_file" value='<txp:yield name="media" />' />
				<video width="100%" height="100%" controls<txp:if_yield name="img"> poster="<txp:images id='<txp:yield name="img" />'><txp:site_url />images/<txp:yield name="img" /><txp:image_info type="ext" /></txp:images>"</txp:if_yield> itemscope itemtype="http://schema.org/VideoObject">
					<txp:if_yield name="mp4"><source src="<txp:site_url />files/<txp:variable name="video_file" />.mp4" type="video/mp4"></txp:if_yield>
					<txp:if_yield name="ogg"><source src="<txp:site_url />files/<txp:variable name="video_file" />.ogv" type="video/ogg"></txp:if_yield>
					<txp:if_yield name="mpeg-4"><source src="<txp:site_url />files/<txp:variable name="video_file" />.mpeg-4" type="video/mpeg-4"></txp:if_yield>
					<txp:if_yield name="webm"><source src="<txp:site_url />files/<txp:variable name="video_file" />.webm" type="video/webm"></txp:if_yield>
					<txp:if_yield name="mpg"><source src="<txp:site_url />files/<txp:variable name="video_file" />.mpg" type="video/mpeg"></txp:if_yield>
					<txp:if_yield name="m4v"><source src="<txp:site_url />files/<txp:variable name="video_file" />.m4v" type="video/x-m4v"></txp:if_yield>
					<txp:if_yield name="flac"><source src="<txp:site_url />files/<txp:variable name="video_file" />.ogg" type="video/flac"></txp:if_yield>
					<txp:if_yield name="title">
						<track enabled="true" kind="subtitles" label="<txp:yield name="title" />" srclang="<txp:yield name="title" />" type="text/x-srt" src="<txp:site_url />files/<txp:yield name="media" />_<txp:yield name="title" />.srt" /></track>
					</txp:if_yield>
					<p>Your browser does not support the video element.</p>
				</video>
		</txp:if_yield>
	</txp:if_yield>
	<txp:hide>Local audio</txp:hide>
	<txp:if_yield name="url" value="a">
		<txp:if_yield name="media">
			<txp:variable name="audio_file" value='<txp:yield name="media" />' />
				<audio controls itemscope itemtype="http://schema.org/AudioObject">
					<txp:if_yield name="m4a"><source src="<txp:site_url />files/<txp:variable name="audio_file" />.m4a" type="audio/m4a"></txp:if_yield>
					<txp:if_yield name="mp3"><source src="<txp:site_url />files/<txp:variable name="audio_file" />.mp3" type="audio/mpeg"></txp:if_yield>
					<txp:if_yield name="ogg"><source src="<txp:site_url />files/<txp:variable name="audio_file" />.oga" type="audio/ogg">					</txp:if_yield>
					<txp:if_yield name="mp4"><source src="<txp:site_url />files/<txp:variable name="audio_file" />.mp4" type="audio/mp4"></txp:if_yield>
					<txp:if_yield name="aac"><source src="<txp:site_url />files/<txp:variable name="audio_file" />.aac" type="audio/aac"></txp:if_yield>
					<txp:if_yield name="webm"><source src="<txp:site_url />files/<txp:variable name="audio_file" />.webm" type="audio/webm"></txp:if_yield>
					<txp:if_yield name="flac"><source src="<txp:site_url />files/<txp:variable name="audio_file" />.ogg" type="audio/flac"></txp:if_yield>
					<p>Your browser does not support the audio element.</p>
				</audio>
		</txp:if_yield>
	</txp:if_yield>
