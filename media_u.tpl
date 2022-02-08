<txp:hide>Utreon</txp:hide>
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:variable name="sitename" />_utreon' duration='<txp:variable name="cookielife" />' values="yes" />
			<txp:oui_if_cookie name='<txp:variable name="sitename" />_utreon'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/VideoObject">
					<iframe width="560" height="315" src="https://utreon.com/embed/<txp:yield name="media" />" title="Utreon video player" frameborder="0" scrolling="no" allow="accelerometer; autoplay="no"; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen loading="lazy"></iframe>
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
						</txp:if_yield>
					</txp:if_yield>
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in><txp:variable name="title" /></txp:if_logged_in>
					</txp:if_yield>
					<p>Hosted by Utreon on <a rel="external noopener" href="https://utreon.com/v/<txp:yield name="media" />">utreon.com/v/<txp:yield name="media" /></a>.</p>
					<p class="licence"><a rel="external noopener licence" href="https://utreon.com/privacy">Utreon&#8217;s privacy policy</a>.</p>
					<p class="accept"><a rel="nofollow noindex noodp noydir noarchive nocache" href="?<txp:variable name="sitename" />_utreon=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
