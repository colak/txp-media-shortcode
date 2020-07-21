<txp:hide> 
The latest source code, explanations, and examples on how to use this shortcode can be found on 
https://github.com/colak/txp-media-shortcode
</txp:hide>

<txp:hide>Local video or audio</txp:hide>
<txp:if_yield name="from" value="local">
	<txp:hide>Local video</txp:hide>
	<txp:if_yield name="url" value="v">
		<txp:if_yield name="media">
			<txp:variable name="video_file" value='<txp:yield name="media" />' />
			<txp:if_variable name="video_file">
				<span itemscope itemtype="http://schema.org/VideoObject">
					<video width="100%" height="100%" controls<txp:if_yield name="title"> poster="<txp:images id='<txp:yield name="title" />'><txp:site_url />images/<txp:yield name="title" />.<txp:image_info type="ext" /></txp:images>"</txp:if_yield>>
						<txp:if_yield name="mp4">
							<source src="<txp:site_url />files/<txp:variable name="video_file" />.mp4" type="video/mp4">
						</txp:if_yield>
						<txp:if_yield name="ogg">
							<source src="<txp:site_url />files/<txp:variable name="video_file" />.ogg" type="video/ogg">
						</txp:if_yield>
						<txp:if_yield name="mpeg-4">
							<source src="<txp:site_url />files/<txp:variable name="video_file" />.mpeg-4" type="video/mpeg-4">
						</txp:if_yield>
						<txp:if_yield name="webm">
							<source src="<txp:site_url />files/<txp:variable name="video_file" />.webm" type="video/webm">
						</txp:if_yield>
						<txp:if_yield name="flac">
							<source src="<txp:site_url />files/<txp:variable name="video_file" />.ogg" type="video/flac">
						</txp:if_yield>
						<p>Your browser does not support the video element.</p>
					</video>
				</span>
			</txp:if_variable>
		</txp:if_yield>
	</txp:if_yield>
	<txp:hide>Local audio</txp:hide>
	<txp:if_yield name="url" value="a">
		<txp:if_yield name="media">
			<span itemscope itemtype="http://schema.org/AudioObject">
				<audio controls>
				<txp:variable name="audio_file" value='<txp:yield name="media" />' />
					<txp:if_variable name="audio_file">
						<txp:if_yield name="m4a">
							<source src="<txp:site_url />files/<txp:variable name="audio_file" />.m4a" type="audio/m4a">
						</txp:if_yield>
						<txp:if_yield name="mp3">
							<source src="<txp:site_url />files/<txp:variable name="audio_file" />.mp3" type="audio/mpeg">
						</txp:if_yield>
						<txp:if_yield name="ogg">
							<source src="<txp:site_url />files/<txp:variable name="audio_file" />.ogg" type="audio/ogg">							
						</txp:if_yield>
						<txp:if_yield name="mp4">
							<source src="<txp:site_url />files/<txp:variable name="audio_file" />.mp4" type="audio/mp4">
						</txp:if_yield>
						<txp:if_yield name="aac">
							<source src="<txp:site_url />files/<txp:variable name="audio_file" />.aac" type="audio/aac">
						</txp:if_yield>
						<txp:if_yield name="webm">
							<source src="<txp:site_url />files/<txp:variable name="audio_file" />.webm" type="audio/webm">
						</txp:if_yield>
						<txp:if_yield name="flac">
							<source src="<txp:site_url />files/<txp:variable name="audio_file" />.ogg" type="audio/flac">
						</txp:if_yield>
						<p>Your browser does not support the audio element.</p>
					</txp:if_variable>
				</audio>
			</span>
		</txp:if_yield>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>Internet Archive (Audio and Video)</txp:hide>
<txp:if_yield name="from" value="ia">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_iarchive_cookie' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_iarchive_cookie'>
				<div class="embed-container" id="m_<txp:yield name="media" />"<txp:if_yield name="url" value="v"> itemscope itemtype="http://schema.org/VideoObject"</txp:if_yield><txp:if_yield name="url" value="a"> itemscope itemtype="http://schema.org/AudioObject"</txp:if_yield>>
					<iframe src="https://archive.org/embed/<txp:yield name="media" />" frameborder="0" webkitallowfullscreen="true" mozallowfullscreen="true" allowfullscreen></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="title"><txp:yield name="title" escape="textile" /></txp:if_yield>
					<p>Hosted by the Internet Archive on <a rel="external noopener" href="https://archive.org/details/<txp:yield name="media" />">archive.org/details/<txp:yield name="media" /></a>.</p>
					<p><a rel="external noopener" href="https://archive.org/about/terms.php">Internet Archive&#8217;s private policy</a>.</p>
					<p class="accept"><a rel="nofollow noindex" href="?<txp:site_name trim="/\s+/" replace="_" />_iarchive_cookie=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>Video</txp:hide>

<txp:hide>Local video (to be deprecated)</txp:hide>
<txp:if_yield name="from" value="local_v">
	<txp:if_yield name="media">
		<txp:variable name="video_file" value='<txp:yield name="media" />' />
			<txp:if_variable name="video_file">
				<span itemscope itemtype="http://schema.org/VideoObject">
					<video width="100%" height="100%" controls<txp:if_yield name="url"> poster="<txp:images id='<txp:yield name="url" />'><txp:site_url />images/<txp:yield name="url" />.<txp:image_info type="ext" /></txp:images>"</txp:if_yield>>
						<txp:if_yield name="mp4">
							<source src="<txp:site_url />files/<txp:variable name="video_file" />.mp4" type="video/mp4">
						</txp:if_yield>
						<txp:if_yield name="ogg">
							<source src="<txp:site_url />files/<txp:variable name="video_file" />.ogg" type="video/ogg">
						</txp:if_yield>
						<txp:if_yield name="mpeg-4">
							<source src="<txp:site_url />files/<txp:variable name="video_file" />.mpeg-4" type="video/mpeg-4">
						</txp:if_yield>
						<txp:if_yield name="webm">
							<source src="<txp:site_url />files/<txp:variable name="video_file" />.webm" type="video/webm">
						</txp:if_yield>
						<txp:if_yield name="flac">
							<source src="<txp:site_url />files/<txp:variable name="video_file" />.ogg" type="video/flac">
						</txp:if_yield>
						<p>Your browser does not support the video element.</p>
					</video>
				</span>
			</txp:if_variable>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>YouTube</txp:hide>
<txp:if_yield name="from" value="yt">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_youtube_cookie' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_youtube_cookie'>
				<div class="embed-container" id="m_<txp:yield name="media" />"  itemscope itemtype="http://schema.org/VideoObject">
					<iframe src="https://www.youtube.com/embed/<txp:yield name="media" />?rel=0" frameborder="0" allowfullscreen></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<picture>
 						 <source media="(min-width:650px)" srcset="https://img.youtube.com/vi/<txp:yield name="media" />/maxresdefault.jpg">
 						 <source media="(min-width:465px)" srcset="https://img.youtube.com/vi/<txp:yield name="media" />/hqdefault.jpg">
						 <img src="https://img.youtube.com/vi/<txp:yield name="media" />/hqdefault.jpg" alt="<txp:yield name="title" />" width="480" height="360" />
					</picture> 
					<txp:if_yield name="title"><txp:yield name="title" escape="textile" /></txp:if_yield>
					<p>Hosted by YouTube on <a rel="external noopener" href="https://youtube.com/watch?v=<txp:yield name="media" />">youtube.com/watch?v=<txp:yield name="media" /></a>.</p>
					<p><a rel="external noopener" href="https://youtube.com/privacy">YouTube&#8217;s private policy</a>.</p>
					<p class="accept"><a rel="nofollow noindex" href="?<txp:site_name trim="/\s+/" replace="_" />_youtube_cookie=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>Vimeo</txp:hide>
<txp:if_yield name="from" value="v">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_vimeo_cookie' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_vimeo_cookie'>
				<div class="embed-container" id="m_<txp:yield name="media" />"  itemscope itemtype="http://schema.org/VideoObject">
					<iframe src="https://player.vimeo.com/video/<txp:yield name="media" />?title=0&amp;byline=0&amp;portrait=0" allowfullscreen></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="title"><txp:yield name="title" escape="textile" /></txp:if_yield>
					<p>Hosted by Vimeo on <a rel="external noopener" href="https://vimeo.com/<txp:yield name="media" />">vimeo.com/<txp:yield name="media" /></a>.</p>
					<p><a rel="external noopener" href="https://vimeo.com/privacy">Vimeo&#8217;s private policy</a>.</p>
					<p class="accept"><a rel="nofollow noindex" href="?<txp:site_name trim="/\s+/" replace="_" />_vimeo_cookie=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>DailyMotion</txp:hide>
<txp:if_yield name="from" value="dm">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_dailymotion_cookie' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_dailymotion_cookie'>
				<div class="embed-container" id="m_<txp:yield name="media" />"  itemscope itemtype="http://schema.org/VideoObject">
					<iframe frameborder="0" type="text/html" src="https://www.dailymotion.com/embed/video/<txp:yield name="media" />" allowfullscreen></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="title"><txp:yield name="title" escape="textile" /></txp:if_yield>
					<p>Hosted by DailyMotion on <a rel="external noopener" href="https://dailymotion.com/video/<txp:yield name="media" />">dailymotion.com/video/<txp:yield name="media" /></a>.</p>
					<p><a rel="external noopener" href="https://www.dailymotion.com/legal/privacy">DailyMotion&#8217;s private policy</a>.</p>
					<p class="accept"><a rel= "nofollow noindex" href="?<txp:site_name trim="/\s+/" replace="_" />_dailymotion_cookie=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>Giphy</txp:hide>
<txp:if_yield name="from" value="gp">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_giphy_cookie' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_giphy_cookie'>
				<div class="embed-container" id="m_<txp:yield name="media" />"  itemscope itemtype="http://schema.org/<txp:if_yield name="url">VideoObject<txp:else />ImageObject</txp:if_yield>">"
					<iframe allowfullscreen="" frameBorder="0" height="100%" src="https://giphy.com/embed/<txp:yield name="media" />" style="left:0;position:absolute;top:0" width="100%"></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="title"><txp:yield name="title" escape="textile" /></txp:if_yield>
					<p>Hosted by Giphy on <a rel="external noopener" href="https://giphy.com/<txp:if_yield name="url">videos<txp:else />gifs</txp:if_yield>/<txp:yield name="media" />">giphy.com/<txp:if_yield name="url">videos<txp:else />gifs</txp:if_yield>/<txp:yield name="media" /></a>.</p>
					<p><a rel="external noopener" href="https://support.giphy.com/hc/en-us/articles/360032872931-GIPHY-Privacy-Policy">Giphy&#8217;s private policy</a>.</p>
					<p class="accept"><a rel= "nofollow noindex" href="?<txp:site_name trim="/\s+/" replace="_" />_giphy_cookie=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>PeerTube</txp:hide>
<txp:if_yield name="from" value="pt">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_peertube_cookie' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_peertube_cookie'>
				<div class="embed-container" id="m_<txp:yield name="media" />"  itemscope itemtype="http://schema.org/VideoObject">
					<iframe width="560" height="315" sandbox="allow-same-origin allow-scripts" src="https://peertube.video/videos/embed/<txp:yield name="media" />" frameborder="0" allowfullscreen></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="title"><txp:yield name="title" escape="textile" /></txp:if_yield>
					<p>Hosted by PeerTube on <a rel="external noopener" href="https://peertube.video/videos/watch/<txp:yield name="media" />">peertube.video/videos/watch/<txp:yield name="media" /></a>.</p>
					<p><a rel="external noopener" href="https://peertube.video/about/instance">PeerTube&#8217;s private policy</a>.</p>
					<p class="accept"><a rel="nofollow noindex" href="?<txp:site_name trim="/\s+/" replace="_" />_peertube_cookie=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>MetaCafe</txp:hide>
<txp:if_yield name="from" value="mc">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_metacafe_cookie' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_metacafe_cookie'>
				<div class="embed-container" id="m_<txp:yield name="media" />"  itemscope itemtype="http://schema.org/VideoObject">
					<iframe src="https://www.metacafe.com/embed/<txp:yield name="media" />/" frameborder="0" allowfullscreen></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="title"><txp:yield name="title" escape="textile" /></txp:if_yield>
					<p>Hosted by MetaCafe on <a rel="external noopener" href="https://www.metacafe.com/watch/<txp:yield name="media" />/">metacafe.com/watch/<txp:yield name="media" />/</a>.</p>
					<p><a rel="external noopener" href="https://www.metacafe.com/privacy/policy/">MetaCafe&#8217;s private policy</a>.</p>
					<p class="accept"><a rel="nofollow noindex" href="?<txp:site_name trim="/\s+/" replace="_" />_metacafe_cookie=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>Coub</txp:hide>
<txp:if_yield name="from" value="cb">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_Coub_cookie' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_Coub_cookie'>
				<div class="embed-container" id="m_<txp:yield name="media" />"  itemscope itemtype="http://schema.org/VideoObject">
					<iframe src="//coub.com/embed/<txp:yield name="media" />?muted=false&amp;autostart=false&amp;originalSize=false&amp;startWithHD=false" allowfullscreen frameborder="0" allow="autoplay"></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="title"><txp:yield name="title" escape="textile" /></txp:if_yield>
					<p>Hosted by Coub on <a rel="external noopener" href="https://coub.com/view/<txp:yield name="media" />/">coub.com/view/<txp:yield name="media" /></a>.</p>
					<p><a rel="external noopener" href="https://coub.com/privacy">Coub&#8217;s private policy</a>.</p>
					<p class="accept"><a rel="nofollow noindex" href="?<txp:site_name trim="/\s+/" replace="_" />_Coub_cookie=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>TED</txp:hide>
<txp:if_yield name="from" value="ted">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_ted_cookie' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_ted_cookie'>
				<div class="embed-container" id="m_<txp:yield name="media" />"  itemscope itemtype="http://schema.org/VideoObject">
					<iframe src="https://embed.ted.com/talks/<txp:yield name="media" />" frameborder="0" scrolling="no" allowfullscreen></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="title"><txp:yield name="title" escape="textile" /></txp:if_yield>
					<p>Hosted by TED on <a rel="external noopener" href="https://www.ted.com/talks/<txp:yield name="media" />">ted.com/talks/<txp:yield name="media" /></a>.</p>
					<p><a rel="external noopener" href="https://www.ted.com/about/our-organization/our-policies-terms/privacy-policy">TED&#8217;s private policy</a>.</p>
					<p class="accept"><a rel="nofollow noindex" href="?<txp:site_name trim="/\s+/" replace="_" />_ted_cookie=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>YouTube nocookie</txp:hide>
<txp:if_yield name="from" value="ytnc">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_youtubenocookie_cookie' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_youtube_cookie'>
				<div class="embed-container" id="m_<txp:yield name="media" />"  itemscope itemtype="http://schema.org/VideoObject">
					<iframe src="https://www.youtube-nocookie.com/embed/<txp:yield name="media" />?rel=0" frameborder="0" allowfullscreen></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<picture>
 						 <source media="(min-width:650px)" srcset="https://img.youtube.com/vi/<txp:yield name="media" />/maxresdefault.jpg">
 						 <source media="(min-width:465px)" srcset="https://img.youtube.com/vi/<txp:yield name="media" />/hqdefault.jpg">
						 <img src="https://img.youtube.com/vi/<txp:yield name="media" />/hqdefault.jpg" alt="<txp:yield name="title" />" width="480" height="360" />
					</picture> 
					<txp:if_yield name="title"><txp:yield name="title" escape="textile" /></txp:if_yield>
					<p>Served by YouTube-nocookie but originally resides on <a rel="external noopener" href="https://youtube.com/watch?v=<txp:yield name="media" />">youtube.com/watch?v=<txp:yield name="media" /></a>.</p>
					<p>We could not find YouTube-nocookie&#8217;s private policy.</p>
					<p class="accept"><a rel="nofollow noindex" href="?<txp:site_name trim="/\s+/" replace="_" />_youtubenocookie_cookie=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>Audio</txp:hide>

<txp:hide>Local audio</txp:hide>
<txp:if_yield name="from" value="local_a">
	<txp:if_yield name="media">
		<span itemscope itemtype="http://schema.org/AudioObject">
			<audio controls>
			<txp:variable name="audio_file" value='<txp:yield name="media" />' />
				<txp:if_variable name="audio_file">
					<txp:if_yield name="m4a">
						<source src="<txp:site_url />files/<txp:variable name="audio_file" />.m4a" type="audio/m4a">
					</txp:if_yield>
					<txp:if_yield name="mp3">
						<source src="<txp:site_url />files/<txp:variable name="audio_file" />.mp3" type="audio/mpeg">
					</txp:if_yield>
					<txp:if_yield name="ogg">
						<source src="<txp:site_url />files/<txp:variable name="audio_file" />.ogg" type="audio/ogg">							
					</txp:if_yield>
					<txp:if_yield name="mp4">
						<source src="<txp:site_url />files/<txp:variable name="audio_file" />.mp4" type="audio/mp4">
					</txp:if_yield>
					<txp:if_yield name="aac">
						<source src="<txp:site_url />files/<txp:variable name="audio_file" />.aac" type="audio/aac">
					</txp:if_yield>
					<txp:if_yield name="webm">
						<source src="<txp:site_url />files/<txp:variable name="audio_file" />.webm" type="audio/webm">
					</txp:if_yield>
					<txp:if_yield name="flac">
						<source src="<txp:site_url />files/<txp:variable name="audio_file" />.ogg" type="audio/flac">
					</txp:if_yield>
					<p>Your browser does not support the audio element.</p>
				</txp:if_variable>
			</audio>
		</span>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>AudioBoom</txp:hide>
<txp:if_yield name="from" value="ab">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_audioboom_cookie' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_audioboom_cookie'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/AudioObject">
					<iframe width="100%" height="300" src="https://embeds.audioboom.com/posts/<txp:yield name="media" />/embed/v4" frameborder="0" allowtransparency="allowtransparency" scrolling="no" title="Audioboom player" allow="autoplay"></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="title"><txp:yield name="title" escape="textile" /></txp:if_yield>
					<p>Hosted by AudioBoom on <a rel="external noopener" href="https://audioboom.com/posts/<txp:yield name="media" />">audioboom.com/<txp:yield name="media" /></a>.</p>
					<p><a rel="external noopener" href="https://audioboom.com/about/privacy">AudioBoom&#8217;s private policy</a>.</p>
					<p class="accept"><a rel= "nofollow noindex" href="?<txp:site_name trim="/\s+/" replace="_" />_audioboom_cookie=yes#m_<txp:yield name="media" />">Listen to it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>IndieSound</txp:hide>
<txp:if_yield name="from" value="is">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_indiesound_cookie' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_indiesound_cookie'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/AudioObject">
					<iframe width="100%" frameborder="no" scrolling="no" src="https://www.indiesound.com/embed/<txp:yield name="media" />"></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="title"><txp:yield name="title" escape="textile" /></txp:if_yield>
					<p>Hosted by IndieSound on <a rel="external noopener" href="https://www.indiesound.com/track/<txp:yield name="media" />">indiesound.com/track/<txp:yield name="media" /></a>.</p>
					<p><a rel="external noopener" href="https://www.indiesound.com/blog/terms-conditions">IndieSound&#8217;s terms &amp; conditions</a>.</p>
					<p class="accept"><a rel= "nofollow noindex" href="?<txp:site_name trim="/\s+/" replace="_" />_indiesound_cookie=yes#m_<txp:yield name="media" />">Listen to it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>SoundCloud</txp:hide>
<txp:if_yield name="from" value="sc">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_soundcloud_cookie' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_soundcloud_cookie'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/AudioObject">
					<iframe width="100%" height="300" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/<txp:yield name="media" />&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=true&amp;show_comments=false&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true&amp;visual=true"></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="title"><txp:yield name="title" escape="textile" /></txp:if_yield>
					<txp:if_yield name="url">
						<p>Hosted by SoundCloud on <a rel="external noopener" href="<txp:yield name="url" />"><txp:yield name="url" /></a>.</p>
					<txp:else />
						<p>Hosted by  <a rel="external noopener" href="https://soundcloud.com/">SoundCloud</a>.</p>
					</txp:if_yield>
					<p><a rel="external noopener" href="https://soundcloud.com/pages/privacy">SoundCloud&#8217;s private policy</a>.</p>
					<p class="accept"><a rel= "nofollow noindex" href="?<txp:site_name trim="/\s+/" replace="_" />_soundcloud_cookie=yes#m_<txp:yield name="media" />">Listen to it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>Other</txp:hide>

<txp:hide>Google Maps</txp:hide>
<txp:if_yield name="from" value="gm">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_google_maps_cookie' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_google_maps_cookie'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/hasMap">
					<iframe src="https://www.google.com/maps/d/embed?mid=<txp:yield name="media" />" width="710" height="480"></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="title"><txp:yield name="title" escape="textile" /></txp:if_yield>
					<p><a rel="external noopener" href="https://www.google.com/maps/d/embed?mid=<txp:yield name="media" />">google.com/maps/d/embed?mid=<txp:yield name="media" /></a>.
					<p><a rel="external noopener" href="https://policies.google.com/">Google&#8217;s privacy policy</a>.</p>
					<p class="accept"><a rel= "nofollow noindex" href="?<txp:site_name trim="/\s+/" replace="_" />_google_maps_cookie=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>c</txp:hide>
<txp:if_yield name="from" value="dw">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_datawrapper_cookie' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_datawrapper_cookie'>
				<div class="embed-container" id="m_<txp:yield name="media" />">
					<iframe aria-label="Interactive line chart" id="datawrapper-chart-<txp:yield name="media" />" src="https://datawrapper.dwcdn.net/<txp:yield name="media" />/1/" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="422"></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="title"><txp:yield name="title" escape="textile" /></txp:if_yield>
					<p>Hosted by Datawrapper on <a rel="external noopener" href="https://www.datawrapper.de/_/<txp:yield name="media" />">datawrapper.de/_/<txp:yield name="media" /></a>.
					<p><a rel="external noopener" href="https://www.datawrapper.de/privacy/">Datawrapper&#8217;s privacy policy</a>.</p>
					<p class="accept"><a rel= "nofollow noindex" href="?<txp:site_name trim="/\s+/" replace="_" />_datawrapper_cookie=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>
