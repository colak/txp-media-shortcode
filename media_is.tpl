<txp:hide>IndieSound</txp:hide>
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:variable name="sitename" />_indiesound' duration='<txp:variable name="cookielife" />' values="yes" />
			<txp:oui_if_cookie name='<txp:variable name="sitename" />_indiesound'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/AudioObject">
					<iframe width="100%" scrolling="no" src="https://www.indiesound.com/embed/<txp:yield name="media" />"></iframe>
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
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in><txp:variable name="title" /></txp:if_logged_in>
					</txp:if_yield>
					<p>Hosted by IndieSound on <a rel="external noopener" href="https://www.indiesound.com/track/<txp:yield name="media" />">indiesound.com/track/<txp:yield name="media" /></a>.</p>
					<p class="licence"><a rel="external noopener licence" href="https://www.indiesound.com/blog/terms-conditions">IndieSound&#8217;s terms &amp; conditions</a>.</p>
					<p class="accept"><a rel= "nofollow noindex noodp noydir noarchive nocache" href="?<txp:variable name="sitename" />_indiesound=yes#m_<txp:yield name="media" />">Listen to it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
