<txp:hide>Internet Archive (Audio and Video)</txp:hide>
<txp:if_yield name="from" value="ia">
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:variable name="sitename" />_iarchive' duration='<txp:variable name="cookielife" />' values="yes" />
			<txp:oui_if_cookie name='<txp:variable name="sitename" />_iarchive'>
				<div class="embed-container" id="m_<txp:yield name="media" />"<txp:if_yield name="url" value="v"> itemscope itemtype="http://schema.org/VideoObject"</txp:if_yield><txp:if_yield name="url" value="a"> itemscope itemtype="http://schema.org/AudioObject"</txp:if_yield>>
					<iframe src="https://archive.org/embed/<txp:yield name="media" />" webkitallowfullscreen="true" mozallowfullscreen="true" allowfullscreen></iframe>
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
						<txp:images id='<txp:yield name="img" />'>
							<img itemprop="image" src="<txp:site_url />images/<txp:yield name="img" /><txp:image_info type="ext" />" widh="<txp:image_info type="w" />" height="<txp:image_info type="h" />" alt="<txp:image_info type="alt" default="External video still" />" />
						</txp:images>
					</txp:if_yield>
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in><txp:variable name="title" /></txp:if_logged_in>
					</txp:if_yield>
					<p>Hosted by the Internet Archive on <a rel="external noopener" href="https://archive.org/details/<txp:yield name="media" />">archive.org/details/<txp:yield name="media" /></a>.</p>
					<p class="licence"><a rel="external noopener licence" href="https://archive.org/about/terms.php">Internet Archive&#8217;s privacy policy</a>.</p>
					<p class="accept"><a rel="nofollow noindex noodp noydir noarchive nocache" href="?<txp:variable name="sitename" />_iarchive=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
</txp:if_yield>
