<txp:hide>DailyMotion</txp:hide>
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:variable name="sitename" />_dailymotion' duration='<txp:variable name="cookielife" />' values="yes" />
			<txp:oui_if_cookie name='<txp:variable name="sitename" />_dailymotion'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/VideoObject">
					<iframe type="text/html" src="https://www.dailymotion.com/embed/video/<txp:yield name="media" />" allowfullscreen></iframe>
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
							<txp:images id='<txp:yield name="img" />'>
								<img itemscope itemtype="http://schema.org/ImageObject" src="<txp:site_url />images/<txp:yield name="img" /><txp:image_info type="ext" />" widh="<txp:image_info type="w" />" height="<txp:image_info type="h" />" alt="<txp:image_info type="alt" default="External video still" />" />
							</txp:images>
						<txp:else />
							<img src="https://s1.dmcdn.net/v/<txp:yield name="media" />/x240" alt="<txp:yield name="title" escape="textile, tags" default="External video still" />" />
						</txp:if_yield>
					</txp:if_yield>
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in><txp:variable name="title" /></txp:if_logged_in>
					</txp:if_yield>
					<p>Hosted by DailyMotion on <a rel="external noopener" href="https://dailymotion.com/video/<txp:yield name="media" />">dailymotion.com/video/<txp:yield name="media" /></a>.</p>
					<p class="licence"><a rel="external noopener licence" href="https://www.dailymotion.com/legal/privacy">DailyMotion&#8217;s privacy policy</a>.</p>
					<p class="accept"><a rel= "nofollow noindex noodp noydir noarchive nocache" href="?<txp:variable name="sitename" />_dailymotion=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
