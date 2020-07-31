<txp:hide> 
The latest source code, explanations, and examples on how to use this shortcode can be found on 
https://github.com/colak/txp-media-shortcode
</txp:hide>

<txp:hide>Video or Audio</txp:hide>

<txp:hide>Local video or audio</txp:hide>
<txp:if_yield name="from" value="local">
	<txp:hide>Local video</txp:hide>
	<txp:if_yield name="url" value="v">
		<txp:if_yield name="media">
			<txp:variable name="video_file" value='<txp:yield name="media" />' />
				<video width="100%" height="100%" controls<txp:if_yield name="img"> poster="<txp:images id='<txp:yield name="img" />'><txp:site_url />images/<txp:yield name="img" /><txp:image_info type="ext" /></txp:images>"</txp:if_yield> itemscope itemtype="http://schema.org/VideoObject">
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
		</txp:if_yield>
	</txp:if_yield>
	<txp:hide>Local audio</txp:hide>
	<txp:if_yield name="url" value="a">
		<txp:if_yield name="media">
			<txp:variable name="audio_file" value='<txp:yield name="media" />' />
				<audio controls itemscope itemtype="http://schema.org/AudioObject">
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
				</audio>
		</txp:if_yield>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>Internet Archive (Audio and Video)</txp:hide>
<txp:if_yield name="from" value="ia">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_iarchive' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_iarchive'>
				<div class="embed-container" id="m_<txp:yield name="media" />"<txp:if_yield name="url" value="v"> itemscope itemtype="http://schema.org/VideoObject"</txp:if_yield><txp:if_yield name="url" value="a"> itemscope itemtype="http://schema.org/AudioObject"</txp:if_yield>>
					<iframe src="https://archive.org/embed/<txp:yield name="media" />" webkitallowfullscreen="true" mozallowfullscreen="true" allowfullscreen></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="img">
						<txp:images id='<txp:yield name="img" />'>
						<txp:variable name="alt" value='<txp:image_info type="alt" />' />
							<img itemprop="image" src="<txp:site_url />images/<txp:yield name="img" /><txp:image_info type="ext" />" widh="<txp:image_info type="w" />" height="<txp:image_info type="h" />" alt="<txp:if_variable name="alt"><txp:variable name="alt" /><txp:else />Video still</txp:if_variable>" />
						</txp:images>
					</txp:if_yield>
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in>
							<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
						</txp:if_logged_in>
					</txp:if_yield>
					<p>Hosted by the Internet Archive on <a rel="external noopener" href="https://archive.org/details/<txp:yield name="media" />">archive.org/details/<txp:yield name="media" /></a>.</p>
					<p><a rel="external noopener" href="https://archive.org/about/terms.php">Internet Archive&#8217;s private policy</a>.</p>
					<p class="accept"><a rel="nofollow noindex noodp noydir noarchive nocache" href="?<txp:site_name trim="/\s+/" replace="_" />_iarchive=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>Video</txp:hide>

<txp:hide>YouTube</txp:hide>
<txp:if_yield name="from" value="yt">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_youtube' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_youtube'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/VideoObject">
					<iframe src="https://www.youtube.com/embed/<txp:yield name="media" />" allowfullscreen></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="0">
					<txp:else />
						<txp:if_yield name="img">
							<txp:images id='<txp:yield name="img" />'>
							<txp:variable name="alt" value='<txp:image_info type="alt" />' />
								<img itemscope itemtype="http://schema.org/ImageObject" src="<txp:site_url />images/<txp:yield name="img" /><txp:image_info type="ext" />" widh="<txp:image_info type="w" />" height="<txp:image_info type="h" />" alt="<txp:if_variable name="alt"><txp:variable name="alt" /><txp:else />Video still</txp:if_variable>" />
							</txp:images>
						<txp:else />
							<img src="https://i3.ytimg.com/vi/<txp:yield name="media" />/hqdefault.jpg" srcset="https://i3.ytimg.com/vi/<txp:yield name="media" />/hqdefault.jpg 480w, https://i3.ytimg.com/vi/<txp:yield name="media" />/maxresdefault.jpg 1280w" alt="<txp:if_yield name="title"><txp:yield name="title" escape="textile, tags" /><txp:else />External video still</txp:if_yield>" itemscope itemtype="http://schema.org/ImageObject" />
						</txp:if_yield>
					</txp:if_yield>
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in>
							<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
						</txp:if_logged_in>
					</txp:if_yield>
					<p>Hosted by YouTube on <a rel="external noopener" href="https://youtu.be/<txp:yield name="media" />">youtu.be/<txp:yield name="media" /></a>.</p>
					<p><a rel="external noopener" href="https://youtube.com/privacy">YouTube&#8217;s private policy</a>.</p>
					<p class="accept"><a rel="nofollow noindex noodp noydir noarchive nocache" href="?<txp:site_name trim="/\s+/" replace="_" />_youtube=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>Vimeo</txp:hide>
<txp:if_yield name="from" value="v">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_vimeo' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_vimeo'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/VideoObject">
					<iframe src="https://player.vimeo.com/video/<txp:yield name="media" />?title=0&amp;byline=0&amp;portrait=0" allowfullscreen></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="img">
						<txp:images id='<txp:yield name="img" />'>
						<txp:variable name="alt" value='<txp:image_info type="alt" />' />
							<img itemscope itemtype="http://schema.org/ImageObject" src="<txp:site_url />images/<txp:yield name="img" /><txp:image_info type="ext" />" widh="<txp:image_info type="w" />" height="<txp:image_info type="h" />" alt="<txp:if_variable name="alt"><txp:variable name="alt" /><txp:else />Video still</txp:if_variable>" />
						</txp:images>
					</txp:if_yield>
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in>
							<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
						</txp:if_logged_in>
					</txp:if_yield>
					<p>Hosted by Vimeo on <a rel="external noopener" href="https://vimeo.com/<txp:yield name="media" />">vimeo.com/<txp:yield name="media" /></a>.</p>
					<p><a rel="external noopener" href="https://vimeo.com/privacy">Vimeo&#8217;s private policy</a>.</p>
					<p class="accept"><a rel="nofollow noindex noodp noydir noarchive nocache" href="?<txp:site_name trim="/\s+/" replace="_" />_vimeo=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>DailyMotion</txp:hide>
<txp:if_yield name="from" value="dm">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_dailymotion' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_dailymotion'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/VideoObject">
					<iframe type="text/html" src="https://www.dailymotion.com/embed/video/<txp:yield name="media" />" allowfullscreen></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="0">
					<txp:else />
						<txp:if_yield name="img">
							<txp:images id='<txp:yield name="img" />'>
							<txp:variable name="alt" value='<txp:image_info type="alt" />' />
								<img itemscope itemtype="http://schema.org/ImageObject" src="<txp:site_url />images/<txp:yield name="img" /><txp:image_info type="ext" />" widh="<txp:image_info type="w" />" height="<txp:image_info type="h" />" alt="<txp:if_variable name="alt"><txp:variable name="alt" /><txp:else />Video still</txp:if_variable>" />
							</txp:images>
						<txp:else />
							<img src="https://s1.dmcdn.net/v/<txp:yield name="media" />/x240" alt="<txp:if_yield name="title"><txp:yield name="title" escape="textile, tags" /><txp:else />External video still</txp:if_yield>" />
						</txp:if_yield>
					</txp:if_yield>
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in>
							<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
						</txp:if_logged_in>
					</txp:if_yield>
					<p>Hosted by DailyMotion on <a rel="external noopener" href="https://dailymotion.com/video/<txp:yield name="media" />">dailymotion.com/video/<txp:yield name="media" /></a>.</p>
					<p><a rel="external noopener" href="https://www.dailymotion.com/legal/privacy">DailyMotion&#8217;s private policy</a>.</p>
					<p class="accept"><a rel= "nofollow noindex noodp noydir noarchive nocache" href="?<txp:site_name trim="/\s+/" replace="_" />_dailymotion=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>BitChute</txp:hide>
<txp:if_yield name="from" value="bc">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_bitchute' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_bitchute'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/VideoObject">
					<iframe scrolling="no" src="https://www.bitchute.com/embed/<txp:yield name="media" />/" allowfullscreen></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="img">
						<txp:images id='<txp:yield name="img" />'>
						<txp:variable name="alt" value='<txp:image_info type="alt" />' />
							<img itemscope itemtype="http://schema.org/ImageObject" src="<txp:site_url />images/<txp:yield name="img" /><txp:image_info type="ext" />" widh="<txp:image_info type="w" />" height="<txp:image_info type="h" />" alt="<txp:if_variable name="alt"><txp:variable name="alt" /><txp:else />Video still</txp:if_variable>" />
						</txp:images>
					</txp:if_yield>
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in>
							<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
						</txp:if_logged_in>
					</txp:if_yield>
					<p>Hosted by BitChute on <a rel="external noopener" href="https://www.bitchute.com/video/<txp:yield name="media" />/">bitchute.com/video/<txp:yield name="media" /></a>.</p>
					<p><a rel="external noopener" href="https://support.bitchute.com/policy/privacy/">BitChute&#8217;s private policy</a>.</p>
					<p class="accept"><a rel="nofollow noindex noodp noydir noarchive nocache" href="?<txp:site_name trim="/\s+/" replace="_" />_bitchute=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>PeerTube</txp:hide>
<txp:if_yield name="from" value="pt">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_peertube' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_peertube'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/VideoObject">
					<iframe width="560" height="315" sandbox="allow-same-origin allow-scripts" src="https://peertube.video/videos/embed/<txp:yield name="media" />" allowfullscreen></iframe>
				</div>
			<txp:else />
			<div class="gdpr">
				<txp:if_yield name="0">
				<txp:else />
					<txp:if_yield name="img">
						<txp:images id='<txp:yield name="img" />'>
						<txp:variable name="alt" value='<txp:image_info type="alt" />' />
							<img itemscope itemtype="http://schema.org/ImageObject" src="<txp:site_url />images/<txp:yield name="img" /><txp:image_info type="ext" />" widh="<txp:image_info type="w" />" height="<txp:image_info type="h" />" alt="<txp:if_variable name="alt"><txp:variable name="alt" /><txp:else />Video still</txp:if_variable>" />
						</txp:images>
					<else />
						<img src="https://peertube.video/static/thumbnails/<txp:yield name="media" />.jpg" srcset="https://peertube.video/static/thumbnails/<txp:yield name="media" />.jpg 223w, https://peertube.video/static/previews/<txp:yield name="media" />.jpg 850w" alt="<txp:if_yield name="title"><txp:yield name="title" escape="textile, tags" /><txp:else />External video still</txp:if_yield>" itemscope itemtype="http://schema.org/ImageObject" />
					</txp:if_yield>
				</txp:if_yield>
				<txp:if_yield name="title">
					<txp:yield name="title" escape="textile" />
				<txp:else />
					<txp:if_logged_in>
						<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
					</txp:if_logged_in>
				</txp:if_yield>
				<p>Hosted by PeerTube on <a rel="external noopener" href="https://peertube.video/videos/watch/<txp:yield name="media" />">peertube.video/videos/watch/<txp:yield name="media" /></a>.</p>
				<p><a rel="external noopener" href="https://peertube.video/about/instance">PeerTube&#8217;s private policy</a>.</p>
				<p class="accept"><a rel="nofollow noindex noodp noydir noarchive nocache" href="?<txp:site_name trim="/\s+/" replace="_" />_peertube=yes#m_<txp:yield name="media" />">View it here</a></p>
			</div>
		</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>MetaCafe</txp:hide>
<txp:if_yield name="from" value="mc">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_metacafe' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_metacafe'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/VideoObject">
					<iframe src="https://www.metacafe.com/embed/<txp:yield name="media" />/" allowfullscreen></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="0">
					<txp:else />
						<txp:if_yield name="img">
							<txp:images id='<txp:yield name="img" />'>
							<txp:variable name="alt" value='<txp:image_info type="alt" />' />
								<img itemscope itemtype="http://schema.org/ImageObject" src="<txp:site_url />images/<txp:yield name="img" /><txp:image_info type="ext" />" widh="<txp:image_info type="w" />" height="<txp:image_info type="h" />" alt="<txp:if_variable name="alt"><txp:variable name="alt" /><txp:else />Video still</txp:if_variable>" />
							</txp:images>
						<txp:else />
							<txp:variable name="id_num"><txp:yield name="media" /></txp:variable>
							<txp:variable name="remote_file">https://cdn.mcstatic.com/contents/videos_screenshots/<txp:variable name="id_num" trim="/(.*)\d{3}/" replace="${1}000" />/<txp:yield name="media" />/preview.jpg</txp:variable>
							<img src="https://cdn.mcstatic.com/contents/videos_screenshots/<txp:variable name="remote_file" />/<txp:variable name="id_num" />/preview.jpg" width="856" heigh="458" alt="<txp:if_yield name="title"><txp:yield name="title" escape="textile, tags" /><txp:else />External video still</txp:if_yield>" />
						</txp:if_yield>
					</txp:if_yield>
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in>
							<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
						</txp:if_logged_in>
					</txp:if_yield>
					<p>Hosted by MetaCafe on <a rel="external noopener" href="https://www.metacafe.com/watch/<txp:yield name="media" />/">metacafe.com/watch/<txp:yield name="media" />/</a>.</p>
					<p><a rel="external noopener" href="https://www.metacafe.com/privacy/policy/">MetaCafe&#8217;s private policy</a>.</p>
					<p class="accept"><a rel="nofollow noindex noodp noydir noarchive nocache" href="?<txp:site_name trim="/\s+/" replace="_" />_metacafe=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>Playtube</txp:hide>
<txp:if_yield name="from" value="pt">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_playtube' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_playtube'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/VideoObject">
					<iframe width="600px" height="370px" src="https://playtube.pk/embed/<txp:yield name="media" />" scrolling="NO" frameborder="0" style="overflow:hidden; border: 0px;"  webkitallowfullscreen mozallowfullscreen allowfullscreen ></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="img">
					<txp:variable name="alt" value='<txp:image_info type="alt" />' />
						<txp:images id='<txp:yield name="img" />'><img itemscope itemtype="http://schema.org/ImageObject" src="<txp:site_url />images/<txp:yield name="img" /><txp:image_info type="ext" />" widh="<txp:image_info type="w" />" height="<txp:image_info type="h" />" alt="<txp:if_variable name="alt"><txp:variable name="alt" /><txp:else />Video still</txp:if_variable>" /></txp:images>
					</txp:if_yield>
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in>
							<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
						</txp:if_logged_in>
					</txp:if_yield>
					<p>Hosted by Playtube on <a rel="external noopener" href="https://playtube.com/<txp:yield name="media" />">playtube.com/<txp:yield name="media" /></a>.</p>
					<p><a rel="external noopener" href="https://playtube.pk/privacy">Playtube&#8217;s private policy</a>.</p>
					<p class="accept"><a rel="nofollow noindex noodp noydir noarchive nocache" href="?<txp:site_name trim="/\s+/" replace="_" />_playtube=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>Freespeechtube</txp:hide>
<txp:if_yield name="from" value="fst">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_freespeechtube' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_freespeechtube'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/VideoObject">
					<iframe src="https://www.freespeechtube.org/embed/<txp:yield name="media" />" style="display:block; margin:0 auto; width:640px; max-width:100%; height:380px; border:1px solid #999;" allowfullscreen></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="img">
						<txp:images id='<txp:yield name="img" />'>
						<txp:variable name="alt" value='<txp:image_info type="alt" />' />
							<img itemscope itemtype="http://schema.org/ImageObject" src="<txp:site_url />images/<txp:yield name="img" /><txp:image_info type="ext" />" widh="<txp:image_info type="w" />" height="<txp:image_info type="h" />" alt="<txp:if_variable name="alt"><txp:variable name="alt" /><txp:else />Video still</txp:if_variable>" />
						</txp:images>
					</txp:if_yield>
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in>
							<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
						</txp:if_logged_in>
					</txp:if_yield>
					<p>Hosted by Freespeechtube on <a rel="external noopener" href="https://freespeechtube.com/<txp:yield name="media" />">freespeechtube.com/<txp:yield name="media" /></a>.</p>
					<p><a rel="external noopener" href="https://www.freespeechtube.org/privacy/">Freespeechtube&#8217;s private policy</a>.</p>
					<p class="accept"><a rel="nofollow noindex noodp noydir noarchive nocache" href="?<txp:site_name trim="/\s+/" replace="_" />_freespeechtube=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>Coub</txp:hide>
<txp:if_yield name="from" value="cb">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_Coub' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_Coub'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/VideoObject">
					<iframe src="//coub.com/embed/<txp:yield name="media" />?muted=false&amp;autostart=false&amp;originalSize=false&amp;startWithHD=false" allowfullscreen allow="autoplay"></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="img">
						<txp:images id='<txp:yield name="img" />'>
						<txp:variable name="alt" value='<txp:image_info type="alt" />' />
							<img itemscope itemtype="http://schema.org/ImageObject" src="<txp:site_url />images/<txp:yield name="img" /><txp:image_info type="ext" />" widh="<txp:image_info type="w" />" height="<txp:image_info type="h" />" alt="<txp:if_variable name="alt"><txp:variable name="alt" /><txp:else />Video still</txp:if_variable>" />
						</txp:images>
					</txp:if_yield>
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in>
							<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
						</txp:if_logged_in>
					</txp:if_yield>
					<p>Hosted by Coub on <a rel="external noopener" href="https://coub.com/view/<txp:yield name="media" />/">coub.com/view/<txp:yield name="media" /></a>.</p>
					<p><a rel="external noopener" href="https://coub.com/privacy">Coub&#8217;s private policy</a>.</p>
					<p class="accept"><a rel="nofollow noindex noodp noydir noarchive nocache" href="?<txp:site_name trim="/\s+/" replace="_" />_Coub=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>TED</txp:hide>
<txp:if_yield name="from" value="ted">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_ted' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_ted'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/VideoObject">
					<iframe src="https://embed.ted.com/talks/<txp:yield name="media" />" scrolling="no" allowfullscreen></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="img">
						<txp:images id='<txp:yield name="img" />'>
						<txp:variable name="alt" value='<txp:image_info type="alt" />' />
							<img itemscope itemtype="http://schema.org/ImageObject" src="<txp:site_url />images/<txp:yield name="img" /><txp:image_info type="ext" />" widh="<txp:image_info type="w" />" height="<txp:image_info type="h" />" alt="<txp:if_variable name="alt"><txp:variable name="alt" /><txp:else />Video still</txp:if_variable>" />
						</txp:images>
					</txp:if_yield>
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in>
							<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
						</txp:if_logged_in>
					</txp:if_yield>
					<p>Hosted by TED on <a rel="external noopener" href="https://www.ted.com/talks/<txp:yield name="media" />">ted.com/talks/<txp:yield name="media" /></a>.</p>
					<p><a rel="external noopener" href="https://www.ted.com/about/our-organization/our-policies-terms/privacy-policy">TED&#8217;s private policy</a>.</p>
					<p class="accept"><a rel="nofollow noindex noodp noydir noarchive nocache" href="?<txp:site_name trim="/\s+/" replace="_" />_ted=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>Vidyard</txp:hide>
<txp:if_yield name="from" value="vy">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_vidyard' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_vidyard'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/VideoObject">
					<iframe src="//play.vidyard.com/<txp:yield name="media" />.html" allowtransparency="true" allowfullscreen></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="0">
					<txp:else />
						<txp:if_yield name="img">
							<txp:images id='<txp:yield name="img" />'>
							<txp:variable name="alt" value='<txp:image_info type="alt" />' />
								<img itemscope itemtype="http://schema.org/ImageObject" src="<txp:site_url />images/<txp:yield name="img" /><txp:image_info type="ext" />" widh="<txp:image_info type="w" />" height="<txp:image_info type="h" />" alt="<txp:if_variable name="alt"><txp:variable name="alt" /><txp:else />Video still</txp:if_variable>" />
							</txp:images>
						<txp:else />
							<img itemscope itemtype="http://schema.org/ImageObject" src="https://play.vidyard.com/<txp:yield="media" />.jpg alt="<txp:if_yield name="title"><txp:yield name="title" escape="textile, tags" /><txp:else />Video still</txp:if_yield>" />
						</txp:if_yield>
					</txp:if_yield>
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in>
							<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
						</txp:if_logged_in>
					</txp:if_yield>
					<p>Hosted by Vidyard on <a rel="external noopener" href="https://video.vidyard.com/watch/<txp:yield name="media" />">video.vidyard.com/watch/<txp:yield name="media" /></a>.</p>
					<p><a rel="external noopener" href="https://www.vidyard.com/privacy/">Vidyard&#8217;s private policy</a>.</p>
					<p class="accept"><a rel="nofollow noindex noodp noydir noarchive nocache" href="?<txp:site_name trim="/\s+/" replace="_" />_vidyard=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>Vlare</txp:hide>
<txp:if_yield name="from" value="vl">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_vlare' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_vlare'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/VideoObject">
					<div class="embed_container"><iframe width="640" height="360" src="https://vlare.tv/embed/<txp:yield name="media" />/false/true/0" allowfullscreen scrolling="no"></iframe></div>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="img">
						<txp:images id='<txp:yield name="img" />'>
						<txp:variable name="alt" value='<txp:image_info type="alt" />' />
							<img itemscope itemtype="http://schema.org/ImageObject" src="<txp:site_url />images/<txp:yield name="img" /><txp:image_info type="ext" />" widh="<txp:image_info type="w" />" height="<txp:image_info type="h" />" alt="<txp:if_variable name="alt"><txp:variable name="alt" /><txp:else />Video still</txp:if_variable>" />
						</txp:images>
					</txp:if_yield>
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in>
							<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
						</txp:if_logged_in>
					</txp:if_yield>
					<p>Hosted by Vlare on <a rel="external noopener" href="https://vlare.tv/v/<txp:yield name="media" />">vlare.tv/v/<txp:yield name="media" /></a>.</p>
					<p><a rel="external noopener" href="https://vlare.tv/privacy">Vlare&#8217;s private policy</a>.</p>
					<p class="accept"><a rel="nofollow noindex noodp noydir noarchive nocache" href="?<txp:site_name trim="/\s+/" replace="_" />_vlare=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>YouTube nocookie</txp:hide>
<txp:if_yield name="from" value="ytnc">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_youtubenocookie' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_youtube'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/VideoObject">
					<iframe src="https://www.youtube-nocookie.com/embed/<txp:yield name="media" />?rel=0" allowfullscreen></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="0">
					<txp:else />
						<txp:if_yield name="img">
							<txp:images id='<txp:yield name="img" />'>
							<txp:variable name="alt" value='<txp:image_info type="alt" />' />
								<img itemscope itemtype="http://schema.org/ImageObject" src="<txp:site_url />images/<txp:yield name="img" /><txp:image_info type="ext" />" widh="<txp:image_info type="w" />" height="<txp:image_info type="h" />" alt="<txp:if_variable name="alt"><txp:variable name="alt" /><txp:else />Video still</txp:if_variable>" />
							</txp:images>
						<txp:else />
							<img src="https://i3.ytimg.com/vi/<txp:yield name="media" />/hqdefault.jpg" srcset="https://i3.ytimg.com/vi/<txp:yield name="media" />/hqdefault.jpg 480w, https://i3.ytimg.com/vi/<txp:yield name="media" />/maxresdefault.jpg 1280w" alt="<txp:if_yield name="title"><txp:yield name="title" escape="textile, tags"/><txp:else />External video still</txp:if_yield>" itemscope itemtype="http://schema.org/ImageObject" />
						</txp:if_yield>
					</txp:if_yield>
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in>
							<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
						</txp:if_logged_in>
					</txp:if_yield>
					<p>Served by YouTube-nocookie but originally resides on <a rel="external noopener" href="https://youtube.com/watch?v=<txp:yield name="media" />">youtube.com/watch?v=<txp:yield name="media" /></a>.</p>
					<p>We could not find YouTube-nocookie&#8217;s private policy.</p>
					<p class="accept"><a rel="nofollow noindex noodp noydir noarchive nocache" href="?<txp:site_name trim="/\s+/" replace="_" />_youtubenocookie=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>


<txp:hide>Video and GIF</txp:hide>

<txp:hide>Giphy</txp:hide>
<txp:if_yield name="from" value="gp">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_giphy' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_giphy'>
				<txp:if_yield name="url" value="">
					<txp:if_logged_in>
						<div class="gdpr">
							<txp:if_yield name="title" not>
								<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
							<txp:if_yield>
							<p class="error">Error: <b>url</b> is a required attribute. Use url="g" for gif embeds and url="v" for video embeds.</p>
						</div>
					</txp:if_logged_in>
				</txp:if_yield>
				<txp:if_yield name="url" value="1">
					<txp:if_logged_in>
						<div class="gdpr">
							<txp:if_yield name="title" not>
								<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
							<txp:if_yield>
							<p class="error">Error: <b>url</b> is a required attribute. Use url="g" for gif embeds and url="v" for video embeds.</p>
						</div>
					</txp:if_logged_in>
				</txp:if_yield>
				<txp:if_yield name="url" value="g">
					<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/ImageObject">
						<iframe allowfullscreen="" height="100%" src="https://giphy.com/embed/<txp:yield name="media" />" style="left:0;position:absolute;top:0" width="100%"></iframe>
					</div>
				</txp:if_yield>
				<txp:if_yield name="url" value="v">
					<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/VideoObject">
						<iframe allowfullscreen="" height="100%" src="https://giphy.com/embed/<txp:yield name="media" />" style="left:0;position:absolute;top:0" width="100%"></iframe>
					</div>
				</txp:if_yield>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="img">
						<txp:images id='<txp:yield name="img" />'>
						<txp:variable name="alt" value='<txp:image_info type="alt" />' />
							<img itemscope itemtype="http://schema.org/ImageObject" src="<txp:site_url />images/<txp:yield name="img" /><txp:image_info type="ext" />" widh="<txp:image_info type="w" />" height="<txp:image_info type="h" />" alt="<txp:if_variable name="alt"><txp:variable name="alt" /><txp:else />Video still</txp:if_variable>" />
						</txp:images>
					</txp:if_yield>
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in>
							<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
						</txp:if_logged_in>
					</txp:if_yield>
					<txp:if_yield name="url" value="v">
						<p>Hosted by Giphy on <a rel="external noopener" href="https://giphy.com/videos/<txp:yield name="media" />">giphy.com/videos/<txp:yield name="media" /></a>.</p>
						<p><a rel="external noopener" href="https://support.giphy.com/hc/en-us/articles/360032872931-GIPHY-Privacy-Policy">Giphy&#8217;s private policy</a>.</p>
						<p class="accept"><a rel= "nofollow noindex noodp noydir noarchive nocache" href="?<txp:site_name trim="/\s+/" replace="_" />_giphy=yes#m_<txp:yield name="media" />">View it here</a></p>
					</txp:if_yield>
					<txp:if_yield name="url" value="g">
						<p>Hosted by Giphy on <a rel="external noopener" href="https://giphy.com/gifs/<txp:yield name="media" />">giphy.com/gifs/<txp:yield name="media" /></a>.</p>
						<p><a rel="external noopener" href="https://support.giphy.com/hc/en-us/articles/360032872931-GIPHY-Privacy-Policy">Giphy&#8217;s private policy</a>.</p>
						<p class="accept"><a rel= "nofollow noindex noodp noydir noarchive nocache" href="?<txp:site_name trim="/\s+/" replace="_" />_giphy=yes#m_<txp:yield name="media" />">View it here</a></p>
					</txp:if_yield>
					<txp:if_yield name="url" value="">
						<txp:if_logged_in>
							<p class="error">Error: <b>url</b> is a required attribute.use url="g" for gif embeds and url="v" for video embeds.</p>
						</txp:if_logged_in>
					</txp:if_yield>
					<txp:if_yield name="url" value="1">
						<txp:if_logged_in>
							<p class="error">Error: <b>url</b> is a required attribute.use url="g" for gif embeds and url="v" for video embeds.</p>
						</txp:if_logged_in>
					</txp:if_yield>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>Audio</txp:hide>

<txp:hide>AudioBoom</txp:hide>
<txp:if_yield name="from" value="ab">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_audioboom' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_audioboom'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/AudioObject">
					<iframe width="100%" height="300" src="https://embeds.audioboom.com/posts/<txp:yield name="media" />/embed/v4"  allowtransparency="allowtransparency" scrolling="no" title="Audioboom player" allow="autoplay"></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in>
							<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
						</txp:if_logged_in>
					</txp:if_yield>
					<p>Hosted by AudioBoom on <a rel="external noopener" href="https://audioboom.com/posts/<txp:yield name="media" />">audioboom.com/<txp:yield name="media" /></a>.</p>
					<p><a rel="external noopener" href="https://audioboom.com/about/privacy">AudioBoom&#8217;s private policy</a>.</p>
					<p class="accept"><a rel= "nofollow noindex noodp noydir noarchive nocache" href="?<txp:site_name trim="/\s+/" replace="_" />_audioboom=yes#m_<txp:yield name="media" />">Listen to it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>IndieSound</txp:hide>
<txp:if_yield name="from" value="is">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_indiesound' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_indiesound'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/AudioObject">
					<iframe width="100%" scrolling="no" src="https://www.indiesound.com/embed/<txp:yield name="media" />"></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in>
							<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
						</txp:if_logged_in>
					</txp:if_yield>
					<p>Hosted by IndieSound on <a rel="external noopener" href="https://www.indiesound.com/track/<txp:yield name="media" />">indiesound.com/track/<txp:yield name="media" /></a>.</p>
					<p><a rel="external noopener" href="https://www.indiesound.com/blog/terms-conditions">IndieSound&#8217;s terms &amp; conditions</a>.</p>
					<p class="accept"><a rel= "nofollow noindex noodp noydir noarchive nocache" href="?<txp:site_name trim="/\s+/" replace="_" />_indiesound=yes#m_<txp:yield name="media" />">Listen to it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>SoundCloud</txp:hide>
<txp:if_yield name="from" value="sc">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_soundcloud' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_soundcloud'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/AudioObject">
					<iframe width="100%" height="300" scrolling="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/<txp:yield name="media" />&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=true&amp;show_comments=false&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true&amp;visual=true"></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in>
							<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
						</txp:if_logged_in>
					</txp:if_yield>
					<txp:if_yield name="url">
						<p>Hosted by SoundCloud on <a rel="external noopener" href="<txp:yield name="url" />"><txp:yield name="url" /></a>.</p>
					<txp:else />
						<p>Hosted by <a rel="external noopener" href="https://soundcloud.com/">SoundCloud</a>.</p>
					</txp:if_yield>
					<p><a rel="external noopener" href="https://soundcloud.com/pages/privacy">SoundCloud&#8217;s private policy</a>.</p>
					<p class="accept"><a rel= "nofollow noindex noodp noydir noarchive nocache" href="?<txp:site_name trim="/\s+/" replace="_" />_soundcloud=yes#m_<txp:yield name="media" />">Listen to it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>BandCamp</txp:hide>
<txp:if_yield name="from" value="bac">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_bandcamp' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_bandcamp'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/AudioObject">
					<iframe style="border: 0; width: 100%; height: 274px;" src="https://bandcamp.com/EmbeddedPlayer/album=<txp:yield name="media" />/size=large/bgcol=ffffff/linkcol=0687f5/artwork=small/transparent=true/" seamless></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in>
							<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
						</txp:if_logged_in>
					</txp:if_yield>
					<txp:if_yield name="url">
						<p>Hosted by BandCamp on <a rel="external noopener" href="https://<txp:yield name="url" />.bandcamp.com/album?id=<txp:yield name="media" />">bandcamp.com/album?id=<txp:yield name="media" /></a>.</p>
					<txp:else />
						<txp:if_logged_in>
							<p class="error">Warning: <b>url</b> is a recommended attribute. Use url="artistname" and replace <i>artistname</i> with the name appearing in the subdomain.</p>
						</txp:if_logged_in>
					</txp:if_yield>	
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>MixCloud</txp:hide>
<txp:if_yield name="from" value="mix">
	<txp:if_yield name="media">
			<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_mixcloud' duration="+1 year" values="yes" />
				<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_mixcloud'>
					<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/AudioObject">
						<txp:if_yield name="url">
							<iframe width="100%" height="120" src="https://www.mixcloud.com/widget/iframe/?hide_cover=1&amp;light=1&amp;feed=%2F<txp:yield name="url" />%2F<txp:yield name="media" />%2F" frameborder="0" ></iframe>
						<txp:else />
							<txp:if_logged_in>
								<div class=""gdpr>
									<p class="error">Error: <b>url</b> is a required attribute. Use url="artistname" and replace <i>artistname</i> with the handle of the artist as it appears in the url of the soundfile you wish to embed.</p>
									<txp:if_yield name="title" not>
										<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
									</txp:if_yield>
								</div>
							</txp:if_logged_in>
						</txp:if_yield>
					</div>
				<txp:else />
					<div class="gdpr">
						<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in>
							<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
						</txp:if_logged_in>
					</txp:if_yield>
						<txp:if_yield name="url">
							<p>Hosted by Mixcloud on <a rel="external noopener" href="https://www.mixcloud.com/<txp:yield name="url" />/<txp:yield name="media" />/">mixcloud.com/<txp:yield name="url" />/<txp:yield name="media" />/</a>.</p>
							<p><a rel="external noopener" href="https://www.mixcloud.com/privacy/">Mixcloud&#8217;s private policy</a>.</p>
							<p class="accept"><a rel= "nofollow noindex noodp noydir noarchive nocache" href="?<txp:site_name trim="/\s+/" replace="_" />_mixcloud=yes#m_<txp:yield name="media" />">Listen to it here</a></p>
						<txp:else />
							<txp:if_logged_in><p class="error">Error: <b>url</b> is a required attribute. Use url="artistname" and replace <i>artistname</i> with the handle of the artist as it appears in the url of the soundfile you wish to embed.</p></txp:if_logged_in>
						</txp:if_yield>						
					</div>
				</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>Other</txp:hide>

<txp:hide>Google Maps</txp:hide>
<txp:if_yield name="from" value="gm">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_google_maps' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_google_maps'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/hasMap">
					<iframe src="https://www.google.com/maps/d/embed?mid=<txp:yield name="media" />" width="710" height="480"></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="img">
						<txp:images id='<txp:yield name="img" />'>
						<txp:variable name="alt" value='<txp:image_info type="alt" />' />
							<img itemscope itemtype="http://schema.org/ImageObject" src="<txp:site_url />images/<txp:yield name="img" /><txp:image_info type="ext" />" widh="<txp:image_info type="w" />" height="<txp:image_info type="h" />" alt="<txp:if_variable name="alt" value="">Map<txp:else /><txp:variable name="alt" /></txp:if_variable>" />
						</txp:images>
					</txp:if_yield>
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in>
							<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
						</txp:if_logged_in>
					</txp:if_yield>
					<p><a rel="external noopener" href="https://www.google.com/maps/d/embed?mid=<txp:yield name="media" />">google.com/maps/d/embed?mid=<txp:yield name="media" /></a>.
					<p><a rel="external noopener" href="https://policies.google.com/">Google&#8217;s privacy policy</a>.</p>
					<p class="accept"><a rel= "nofollow noindex noodp noydir noarchive nocache" href="?<txp:site_name trim="/\s+/" replace="_" />_google_maps=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>

<txp:hide>Datawrapper</txp:hide>
<txp:if_yield name="from" value="dw">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:site_name trim="/\s+/" replace="_" />_datawrapper' duration="+1 year" values="yes" />
			<txp:oui_if_cookie name='<txp:site_name trim="/\s+/" replace="_" />_datawrapper'>
				<div class="embed-container" id="m_<txp:yield name="media" />">
					<iframe aria-label="Interactive line chart" id="datawrapper-chart-<txp:yield name="media" />" src="https://datawrapper.dwcdn.net/<txp:yield name="media" />/1/" scrolling="no" style="width: 0; min-width: 100% !important; border: none;" height="422"></iframe>
				</div>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="img">
						<txp:images id='<txp:yield name="img" />'>
						<txp:variable name="alt" value='<txp:image_info type="alt" />' />
							<img itemscope itemtype="http://schema.org/ImageObject" src="<txp:site_url />images/<txp:yield name="img" /><txp:image_info type="ext" />" widh="<txp:image_info type="w" />" height="<txp:image_info type="h" />" alt="<txp:if_variable name="alt" value="">Chart<txp:else /><txp:variable name="alt" /></txp:if_variable>" />
						</txp:images>
					</txp:if_yield>
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in>
							<p class="error">Warning: <b>title</b> is a recommended attribute.</p>
						</txp:if_logged_in>
					</txp:if_yield>	
					<p>Hosted by Datawrapper on <a rel="external noopener" href="https://www.datawrapper.de/_/<txp:yield name="media" />">datawrapper.de/_/<txp:yield name="media" /></a>.
					<p><a rel="external noopener" href="https://www.datawrapper.de/privacy/">Datawrapper&#8217;s privacy policy</a>.</p>
					<p class="accept"><a rel= "nofollow noindex noodp noydir noarchive nocache" href="?<txp:site_name trim="/\s+/" replace="_" />_datawrapper=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>
