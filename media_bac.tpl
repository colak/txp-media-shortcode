<txp:hide>BandCamp</txp:hide>
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:variable name="sitename" />_bandcamp' duration='<txp:variable name="cookielife" />' values="yes" />
			<txp:oui_if_cookie name='<txp:variable name="sitename" />_bandcamp'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/AudioObject">
					<iframe loading="lazy" style="border: 0; width: 100%; height: 274px;" src="https://bandcamp.com/EmbeddedPlayer/album=<txp:yield name="media" />/size=large/bgcol=ffffff/linkcol=0687f5/artwork=small/transparent=true/" seamless></iframe>
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
					<txp:if_yield name="url">
						<p>Hosted by BandCamp on <a rel="external noopener" href="https://<txp:yield name="url" />.bandcamp.com/album?id=<txp:yield name="media" />">bandcamp.com/album?id=<txp:yield name="media" /></a>.</p>
					<txp:else />
						<txp:if_logged_in>
							<p class="error">Warning: <b>url</b> is a recommended attribute. Use url="artistname" and replace <i>artistname</i> with the name appearing in the subdomain.</p>
						</txp:if_logged_in>
						<p class="licence"><a rel="external noopener licence" href="https://bandcamp.com/privacy">Bandcamp&#8217;s privacy policy</a>.</p>
					</txp:if_yield>	
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
