<txp:hide>Datawrapper</txp:hide>
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:variable name="sitename" />_datawrapper' duration='<txp:variable name="cookielife" />' values="yes" />
			<txp:oui_if_cookie name='<txp:variable name="sitename" />_datawrapper'>
				<div class="embed-container" id="m_<txp:yield name="media" />">
					<iframe  loading="lazy" aria-label="Interactive line chart" id="datawrapper-chart-<txp:yield name="media" />" src="https://datawrapper.dwcdn.net/<txp:yield name="media" />/1/" scrolling="no" style="width: 0; min-width: 100% !important; border: none;" height="422"></iframe>
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
					<p>Hosted by Datawrapper on <a rel="external noopener" href="https://www.datawrapper.de/_/<txp:yield name="media" />">datawrapper.de/_/<txp:yield name="media" /></a>.
					<p class="licence"><a rel="external noopener licence" href="https://www.datawrapper.de/privacy/">Datawrapper&#8217;s privacy policy</a>.</p>
					<p class="accept"><a rel= "nofollow noindex noodp noydir noarchive nocache" href="?<txp:variable name="sitename" />_datawrapper=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
