<txp:hide>PeerTube</txp:hide>
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:variable name="sitename" />_peertube' duration='<txp:variable name="cookielife" />' values="yes" />
			<txp:oui_if_cookie name='<txp:variable name="sitename" />_peertube'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/VideoObject">
					<iframe loading="lazy" width="560" height="315" sandbox="allow-same-origin allow-scripts" src="https://peertube.video/videos/embed/<txp:yield name="media" />" allowfullscreen></iframe>
				</div>
				<txp:if_logged_in>
					<txp:if_yield name="title" not>
						<txp:oui_if_cookie name='<txp:variable name="sitename" />_hide' not>
							<div class="gdpr">
								<txp:variable name="title" />
								<p class="accept"><a rel="nofollow noindex noodp noydir noarchive nocache" href="?<txp:variable name="sitename" />_hide=yes">Hide warnings for 30 minutes</a></p>
							</div>
						</txp:oui_if_cookie>
					</txp:if_yield>
				</txp:if_logged_in>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="0" not>
						<txp:if_yield name="img">
							<txp:variable name="img" />
						<else />
							<img loading="lazy" src="https://peertube.video/static/thumbnails/<txp:yield name="media" />.jpg" srcset="https://peertube.video/static/thumbnails/<txp:yield name="media" />.jpg 223w, https://peertube.video/static/previews/<txp:yield name="media" />.jpg 850w" alt="<txp:yield name="title" escape="textile, tags" default="External video still" />" itemscope itemtype="http://schema.org/ImageObject" />
						</txp:if_yield>
					</txp:if_yield>
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in><txp:variable name="title" /></txp:if_logged_in>
					</txp:if_yield>
					<p>Hosted by PeerTube on <a rel="external noopener" href="https://peertube.video/videos/watch/<txp:yield name="media" />">peertube.video/videos/watch/<txp:yield name="media" /></a>.</p>
					<p class="licence"><a rel="external noopener licence" href="https://peertube.video/about/instance">PeerTube&#8217;s privacy policy</a>.</p>
					<p class="accept"><a rel="nofollow noindex noodp noydir noarchive nocache" href="?<txp:variable name="sitename" />_peertube=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
