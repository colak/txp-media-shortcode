<txp:hide>MetaCafe</txp:hide>
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:variable name="sitename" />_metacafe' duration='<txp:variable name="cookielife" />' values="yes" />
			<txp:oui_if_cookie name='<txp:variable name="sitename" />_metacafe'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/VideoObject">
					<iframe loading="lazy" src="https://www.metacafe.com/embed/<txp:yield name="media" />/" allowfullscreen></iframe>
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
						<txp:else />
							<txp:variable name="id_num"><txp:yield name="media" /></txp:variable>
							<txp:variable name="remote_file">https://cdn.mcstatic.com/contents/videos_screenshots/<txp:variable name="id_num" trim="/(.*)\d{3}/" replace="${1}000" />/<txp:yield name="media" />/preview.jpg</txp:variable>
							<img src="https://cdn.mcstatic.com/contents/videos_screenshots/<txp:variable name="remote_file" />/<txp:variable name="id_num" />/preview.jpg" width="856" heigh="458" alt="<txp:yield name="title" escape="textile, tags" default="External video still" />" />
						</txp:if_yield>
					</txp:if_yield>
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in><txp:variable name="title" /></txp:if_logged_in>
					</txp:if_yield>
					<p>Hosted by MetaCafe on <a rel="external noopener" href="https://www.metacafe.com/watch/<txp:yield name="media" />/">metacafe.com/watch/<txp:yield name="media" />/</a>.</p>
					<p class="licence"><a rel="external noopener licence" href="https://www.metacafe.com/privacy/policy/">MetaCafe&#8217;s privacy policy</a>.</p>
					<p class="accept"><a rel="nofollow noindex noodp noydir noarchive nocache" href="?<txp:variable name="sitename" />_metacafe=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
