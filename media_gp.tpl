<txp:hide>Giphy</txp:hide>
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:variable name="sitename" />_giphy' duration='<txp:variable name="cookielife" />' values="yes" />
			<txp:oui_if_cookie name='<txp:variable name="sitename" />_giphy'>
				<txp:if_yield name="url" not>
					<txp:if_logged_in>
						<div class="gdpr">
							<txp:if_yield name="title" not>
								<txp:variable name="title" />
							</txp:if_yield>
							<p class="error">Error: <b>url</b> is a required attribute. Use url="g" for gif embeds and url="v" for video embeds.</p>
						</div>
					</txp:if_logged_in>
				</txp:if_yield>
				<txp:if_yield name="url" value="1">
					<txp:if_logged_in>
						<div class="gdpr">
							<txp:if_yield name="title" not>
								<txp:variable name="title" />
							</txp:if_yield>
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
							<img itemscope itemtype="http://schema.org/ImageObject" src="<txp:site_url />images/<txp:yield name="img" /><txp:image_info type="ext" />" widh="<txp:image_info type="w" />" height="<txp:image_info type="h" />" alt="<txp:image_info type="alt" default="External video still" />" />
						</txp:images>
					</txp:if_yield>
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in><txp:variable name="title" /></txp:if_logged_in>
					</txp:if_yield>
					<txp:if_yield name="url" value="v">
						<p>Hosted by Giphy on <a rel="external noopener" href="https://giphy.com/videos/<txp:yield name="media" />">giphy.com/videos/<txp:yield name="media" /></a>.</p>
						<p class="licence"><a rel="external noopener licence" href="https://support.giphy.com/hc/en-us/articles/360032872931-GIPHY-Privacy-Policy">Giphy&#8217;s privacy policy</a>.</p>
						<p class="accept"><a rel= "nofollow noindex noodp noydir noarchive nocache" href="?<txp:variable name="sitename" />_giphy=yes#m_<txp:yield name="media" />">View it here</a></p>
					</txp:if_yield>
					<txp:if_yield name="url" value="g">
						<p>Hosted by Giphy on <a rel="external noopener" href="https://giphy.com/gifs/<txp:yield name="media" />">giphy.com/gifs/<txp:yield name="media" /></a>.</p>
						<p class="licence"><a rel="external noopener licence" href="https://support.giphy.com/hc/en-us/articles/360032872931-GIPHY-Privacy-Policy">Giphy&#8217;s privacy policy</a>.</p>
						<p class="accept"><a rel= "nofollow noindex noodp noydir noarchive nocache" href="?<txp:variable name="sitename" />_giphy=yes#m_<txp:yield name="media" />">View it here</a></p>
					</txp:if_yield>
					<txp:if_yield name="url" not>
						<txp:if_logged_in>
							<p class="error">Error: <b>url</b> is a required attribute. Use url="g" for gif embeds and url="v" for video embeds.</p>
						</txp:if_logged_in>
					</txp:if_yield>
					<txp:if_yield name="url" value="1">
						<txp:if_logged_in>
							<p class="error">Error: <b>url</b> is a required attribute. Use url="g" for gif embeds and url="v" for video embeds.</p>
						</txp:if_logged_in>
					</txp:if_yield>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
