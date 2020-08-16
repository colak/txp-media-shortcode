<txp:hide>MixCloud</txp:hide>
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:variable name="sitename" />_mixcloud' duration='<txp:variable name="cookielife" />' values="yes" />
			<txp:oui_if_cookie name='<txp:variable name="sitename" />_mixcloud'>
				<txp:if_yield name="url">
					<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/AudioObject">
						<iframe width="100%" height="120" src="https://www.mixcloud.com/widget/iframe/?hide_cover=1&amp;light=1&amp;feed=%2F<txp:yield name="url" />%2F<txp:yield name="media" />%2F" frameborder="0" ></iframe>
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
					<txp:if_logged_in>
						<div class="gdpr">
							<p class="error">Error: <b>url</b> is a required attribute. Use url="artistname" and replace <i>artistname</i> with the handle of the artist as it appears in the url of the soundfile you wish to embed.</p>
							<txp:if_yield name="title" not>
								<txp:variable name="title" />
							</txp:if_yield>
						</div>
					</txp:if_logged_in>
				</txp:if_yield>
			<txp:else />
				<div class="gdpr">
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in><txp:variable name="title" /></txp:if_logged_in>
					</txp:if_yield>
					<txp:if_yield name="url">
						<p>Hosted by Mixcloud on <a rel="external noopener" href="https://www.mixcloud.com/<txp:yield name="url" />/<txp:yield name="media" />/">mixcloud.com/<txp:yield name="url" />/<txp:yield name="media" />/</a>.</p>
						<p class="licence"><a rel="external noopener licence" href="https://www.mixcloud.com/privacy/">Mixcloud&#8217;s privacy policy</a>.</p>
						<p class="accept"><a rel= "nofollow noindex noodp noydir noarchive nocache" href="?<txp:variable name="sitename" />_mixcloud=yes#m_<txp:yield name="media" />">Listen to it here</a></p>
					<txp:else />
						<txp:if_logged_in>
							<p class="error">Error: <b>url</b> is a required attribute. Use url="artistname" and replace <i>artistname</i> with the handle of the artist as it appears in the url of the soundfile you wish to embed.</p>
						</txp:if_logged_in>
					</txp:if_yield>						
				</div>
			</txp:oui_if_cookie>
</txp:if_yield>
