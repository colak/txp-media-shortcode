<txp:hide>TED</txp:hide>
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:variable name="sitename" />_ted' duration='<txp:variable name="cookielife" />' values="yes" />
			<txp:oui_if_cookie name='<txp:variable name="sitename" />_ted'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/VideoObject">
					<iframe loading="lazy" src="https://embed.ted.com/talks/<txp:yield name="media" />" scrolling="no" allowfullscreen></iframe>
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
					<txp:if_yield name="img">
						<txp:variable name="img" />
					</txp:if_yield>
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in><txp:variable name="title" /></txp:if_logged_in>
					</txp:if_yield>
					<p>Hosted by TED on <a rel="external noopener" href="https://www.ted.com/talks/<txp:yield name="media" />">ted.com/talks/<txp:yield name="media" /></a>.</p>
					<p class="licence"><a rel="external noopener licence" href="https://www.ted.com/about/our-organization/our-policies-terms/privacy-policy">TED&#8217;s privacy policy</a>.</p>
					<p class="accept"><a rel="nofollow noindex noodp noydir noarchive nocache" href="?<txp:variable name="sitename" />_ted=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
