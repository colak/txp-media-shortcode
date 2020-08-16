<txp:hide>Playtube</txp:hide>
	<txp:if_yield name="media">
		<txp:oui_cookie name='<txp:variable name="sitename" />_playtube' duration='<txp:variable name="cookielife" />' values="yes" />
			<txp:oui_if_cookie name='<txp:variable name="sitename" />_playtube'>
				<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/VideoObject">
					<iframe loading="lazy" width="600px" height="370px" src="https://playtube.pk/embed/<txp:yield name="media" />" scrolling="NO" frameborder="0" style="overflow:hidden; border: 0px;"  webkitallowfullscreen mozallowfullscreen allowfullscreen ></iframe>
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
							<txp:images id='<txp:yield name="img" />'><img itemscope itemtype="http://schema.org/ImageObject" src="<txp:site_url />images/<txp:yield name="img" /><txp:image_info type="ext" />" widh="<txp:image_info type="w" />" height="<txp:image_info type="h" />" alt="<txp:image_info type="alt" default="External video still" />" /></txp:images>
						<txp:else />
							<img loading="lazy" src="https://i3.ytimg.com/vi/<txp:yield name="media" />/hqdefault.jpg" srcset="https://i3.ytimg.com/vi/<txp:yield name="media" />/hqdefault.jpg 480w, https://i3.ytimg.com/vi/<txp:yield name="media" />/maxresdefault.jpg 1280w" alt="<txp:yield name="title" escape="textile, tags" default="External video still" />" itemscope itemtype="http://schema.org/ImageObject" />
						</txp:if_yield>
					</txp:if_yield>
					<txp:if_yield name="title">
						<txp:yield name="title" escape="textile" />
					<txp:else />
						<txp:if_logged_in><txp:variable name="title" /></txp:if_logged_in>
					</txp:if_yield>
					<p>Hosted by Playtube on <a rel="external noopener" href="https://playtube.com/<txp:yield name="media" />">playtube.com/<txp:yield name="media" /></a>.</p>
					<p class="licence"><a rel="external noopener licence" href="https://playtube.pk/privacy">Playtube&#8217;s privacy policy</a>.</p>
					<p class="accept"><a rel="nofollow noindex noodp noydir noarchive nocache" href="?<txp:variable name="sitename" />_playtube=yes#m_<txp:yield name="media" />">View it here</a></p>
				</div>
			</txp:oui_if_cookie>
	</txp:if_yield>
