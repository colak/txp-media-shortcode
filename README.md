# txp-media-shortcode 


## Introduction

This textpattern shortcode draws inspiration from [Nicolas Morand's](https://github.com/NicolasGraph) oui_player plugin and tries to produce similar results using textapattern's native tags but also make the players [GDPR](https://gdpr-info.eu/) compliant. In the case of locally hosted media no cookie consent is required. This work was encouraged by [Stef Dawson](https://forum.textpattern.com/viewtopic.php?pid=324309#p324309), who first developed the smd_macro textpattern plugin which later became part of txp's core code thanks to Oleg Loukianov's reworking of the native `<txp:yield />` tag.

## Dependencies 

* [Textpattern 4.7+](https://textpattern.com/)
* [oui_cookie](https://forum.textpattern.com/viewtopic.php?id=47048)
* The media hosts' url schemas and embed codes.
* Georestrictions and privacy settings of individual media.
* The availability of the content. Millions of videos and sound-files are taken off the web daily. This is because they are removed by the original uploader or blocked by the hosts (usually because of DMCA notices).

## Advantages and disadvantages of shortcodes

Shortcodes are easy to edit by those without any knowledge of php but with sufficient knowledge of html and txp tags. 
If you often embed media in your website, it is much easier to update the shortcode when providers change their embed scripts rather than find all instances of the embedded content in your articles.
The shortcode's GDPR warnings are parsed automatically, which save on typing and remembering cookie names. When visitors accept a particular host's cookies, they do so for all embeds from that host site-wide. 
Shortcodes are normally slower in execution than php plugins.

## Installing

1. Copy the latest txp snippet from the [GitHub project page](https://github.com/colak/txp-media-shortcode/blob/master/media.tpl), 
2. Create a new miscellaneous form in your Textpattern administration interface and name it `media`,
3. Paste the code into the form administration and save.
4. Copy and paste the provided [css](https://github.com/colak/txp-media-shortcode/blob/master/css.css) in your style sheet and edit it to your liking.

## Cookies

According to GDPR, webmasters should never serve any tracking cookies without their visitors' consent. The GDPR gives the right to any EU citizen to legally institute legal proceedings against any website owner, regardless of the website's or owner's location. The cookies served by the oui_cookie plugin do not track, but most media hosting providers do include tracking in their embeddable content. As such, and in order to make websites GDPR compliant, this shortcode does not load any embedded content which comes with tracking cookies, without the explicit acceptance of the site visitors. I have made oui_cookies to last for a duration of one year. 

This however is but only one of the steps needed for full adherence to the EU law which also requests for a privacy policy and a description of the first and third party cookies served. Examples of such pages can be found in the neme.org site on:

* http://www.neme.org/about/privacy-policy
* http://www.neme.org/about/cookies

## Usage

1. To embed the media, simply use 

`==<txp::media from="xxx" media="yyy" title="my text here" />==`

2. Using the shortcode above, insert the id of the media file in the `media` attribute. The id can normally be found in the url of the video. For example:

* For a Vimeo address such as https://vimeo.com/336049258, the video id is `336049258`
* For a YouTube address such as https://www.youtube.com/watch?v=zlZTghhCuxg, the video id is `zlZTghhCuxg`

3. Use the `title` attribute should you wish to have a textile enabled descriptive text in the GDPR container. This text is replaced by the `embed` container once the cookie for the particular provider is accepted.

4. The `url` attribute is only used for services like Soundcloud where the media id does not appear in the url of the page that hosts the media file.

## Attributes

1. from (required)
2. media (required)
3. title (recommended)
4. url (Only available for some hosts)
5. <i>others</i>. (Only available for locally served media. See examples.)

### Details

<table>
	<thead>
		<tr>
			<th scope="col">Media hosts</th>
			<th scope="col">from</th>
			<th scope="col">url</th>
			<th scope="col">title</th>
			<th scope="col"><i>others</i></th>
			<th scope="col">Examples</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td colspan="6"> <b>Video or audio</b> </td>
		</tr>
		<tr>
			<td rowspan="2"> Local</td>
			<td rowspan="2"> local </td>
			<td> url="v" </td>
			<td> Loads a posterframe with image id. </td>
			<td> mp4, ogg, mpeg-4, flac, webm </td>
			<td> <a href="#6-embed-a-local-video">(6)</a> </td>
		</tr>
		<tr>
			<td> url="a" </td>
			<td> NA </td>
			<td> m4a, mp3, ogg, mp4, sac, webm, flac </td>
			<td> <a href="#4-embed-local-audio">(4)</a> </td>
		</tr>
		<tr>
			<td rowspan="2"> <a href="https://archive.org/">Internet Archive</a> </td>
			<td rowspan="2"> ia </td>
			<td> url="v" </td>
			<td rowspan="2"> </td>
			<td rowspan="2"> NA </td>
			<td rowspan="2"> <a href="#8-embed-from-the-internet-archive">(8)</a> </td>
		</tr>
		<tr>
			<td> url="a" </td>
		</tr>
		<tr>
			<td colspan="6"> <b>Video</b> </td>
		</tr>
		<tr>
			<td> <a href="https://www.youtube.com/">YouTube</a> </td>
			<td> yt </td>
			<td> NA </td>
			<td> </td>
			<td> NA </td>
			<td> <a href="#7-embed-from-youtube">(7)</a> </td>
		</tr>
		<tr>
			<td> <a href="https://www.vimeo.com/">Vimeo</a> </td>
			<td> v </td>
			<td> NA </td>
			<td> </td>
			<td> NA </td>
			<td> <a href="#1-embed-from-vimeo">(1)</a> </td>
		</tr>
		<tr>
			<td> <a href="https://www.dailymotion.com/">DailyMotion</a> </td>
			<td> dm </td>
			<td> NA </td>
			<td> </td>
			<td> NA </td>
			<td> </td>
		</tr>
		<tr>
			<td> <a href="https://giphy.com/">Giphy</a> </td>
			<td> gp </td>
			<td> Simply handles different types of url paths served by the host. </td>
			<td> </td>
			<td> NA </td>
			<td> <a href="#5-embed-from-giphy">(5)</a> </td>
		</tr>
		<tr>
			<td> <a href="https://peertube.video">PeerTube</a> </td>
			<td> pt </td>
			<td> NA </td>
			<td> </td>
			<td> NA </td>
			<td> </td>
		</tr>
		<tr>
			<td> <a href="https://ted.com">TED</a> </td>
			<td> ted </td>
			<td> NA </td>
			<td> </td>
			<td> NA </td>
			<td> </td>
		</tr>
		<tr>
			<td> <a href="https://youtube-nocookie.com/">YouTube-nocookie</a> <sup id="a1"><a href="#fn1">1</a></sup> </td>
			<td> ytnc </td>
			<td> NA </td>
			<td> </td>
			<td> NA </td>
			<td> </td>
		</tr>
		<tr>
			<td> <a href="https://metacafe.com/">MetaCafe</a> </td>
			<td> mc </td>
			<td> NA </td>
			<td> </td>
			<td> NA </td>
			<td> </td>
		</tr>
		<tr>
			<td> <a href="https://coub.com/">Coub</a> </td>
			<td> cb </td>
			<td> NA </td>
			<td> </td>
			<td> NA </td>
			<td> </td>
		</tr>
		<tr>
			<td colspan="6"> <b>Audio</b> </td>
		</tr>
		<tr>
			<td> <a href="https://audioboom.com/">AudioBoom</a> </td>
			<td> ab </td>
			<td> NA </td>
			<td> </td>
			<td> NA </td>
			<td> </td>
		</tr>
		<tr>
			<td> <a href="https://www.indiesound.com/">IndieSound</a> </td>
			<td> is </td>
			<td> NA </td>
			<td> </td>
			<td> NA </td>
			<td> </td>
		</tr>
		<tr>
			<td> <a href="https://soundcloud.com/">SoundCloud</a> </td>
			<td> sc </td>
			<td> url in SoundCloud </td>
			<td> </td>
			<td> NA </td>
			<td> <a href="#2-embed-from-soundcloud">(2)</a>, <a href="#3-embed-from-soundcloud-using-the-url-attribute">(3)</a> </td>
		</tr>
		<tr>
			<td colspan="6" style="background-color:#ffc;color:#000;"> <b>Others</b> </td>
		</tr>
		<tr>
			<td> <a href="https://www.google.com/mymaps">Google Maps</a> <sup id="a2"><a href="#fn2">2</a></sup> </td>
			<td> gm </td>
			<td> NA </td>
			<td> </td>
			<td> NA </td>
			<td> </td>
		</tr>
		<tr>
			<td> <a href="https://www.datawrapper.de">Datawrapper</a>  </td>
			<td> dw </td>
			<td> NA </td>
			<td> </td>
			<td> NA </td>
			<td> </td>
		</tr>
	</tbody>
</table>

##  Examples

### 1. Embed from Vimeo

`<txp::media from="v" media="336049258" title="My awesome video" />`

Resulting code before cookie is accepted

	<div class="gdpr">
		<p>My awesome video</p>
		<p>Hosted by Vimeo on <a rel="external noopener" href="https://vimeo.com/336049258">vimeo.com/336049258</a>.</p>
		<p><a rel="external noopener" href="https://vimeo.com/privacy">Vimeo&#8217;s private policy</a>.</p>
		<p class="accept"><a rel="nofollow" href="?My_Site_vimeo_cookie=yes#m_336049258">View it here</a></p>
	</div>

Resulting code after cookie is accepted

	<div class="embed-container" id="m_336049258" itemscope itemtype="http://schema.org/VideoObject">
		<iframe src="https://player.vimeo.com/video/336049258?title=0&amp;byline=0&amp;portrait=0" allowfullscreen></iframe>
	</div>

The `title` attribute is textile enabled. As such you can have

`<txp::media from="v" media="336049258" title="h3. My awesome video" />`

Resulting code before cookie is accepted

	<div class="gdpr">
		<h3>My awesome video</h3>
		<p>Hosted by Vimeo on <a rel="external noopener" href="https://vimeo.com/336049258">vimeo.com/336049258</a>.</p>
		<p><a rel="external noopener" href="https://vimeo.com/privacy">Vimeo&#8217;s private policy</a>.</p>
		<p class="accept"><a rel="nofollow" href="?My_Site_vimeo_cookie=yes#m_336049258">View it here</a></p>
	</div>

### 2. Embed from SoundCloud

`<txp::media from="sc" media="336049258" title="News from Nowhere" />`

Resulting code before cookie is accepted

	<div class="gdpr">
		<p>News from Nowhere</p>
        	<p>Hosted by  <a rel="external noopener" href="https://soundcloud.com/">SoundCloud</a>.</p>
		<p><a rel="external noopener" href="https://soundcloud.com/pages/privacy">SoundCloud&#8217;s private policy</a>.</p>
		<p class="accept"><a rel="nofollow" href="?My_Site_soundcloud_cookie=yes#m_336049258">Listen to it here</a></p>
	</div>

Resulting code after cookie is accepted

	<div class="embed-container" id="m_336049258" itemscope itemtype="http://schema.org/AudioObject">
		<iframe width="100%" height="300" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/336049258&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=true&amp;show_comments=false&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true&amp;visual=true"></iframe>
	</div>

### 3. Embed from SoundCloud using the url attribute

`<txp::media from="sc" media="336049258" title="News from Nowhere" url="https://soundcloud.com/furtherfield/news-from-where-we-are-1" />`

Resulting code before cookie is accepted

	<div class="gdpr">
		<p>News from Nowhere</p>
		<p>Hosted by SoundCloud on <a rel="external noopener" href="https://soundcloud.com/furtherfield/news-from-where-we-are-1">https://soundcloud.com/furtherfield/news-from-where-we-are-1</a>.</p>
		<p><a rel="external noopener" href="https://soundcloud.com/pages/privacy">SoundCloud&#8217;s private policy</a>.</p>
		<p class="accept"><a rel="nofollow" href="?My_Site_soundcloud_cookie=yes#m_336049258">Listen to it here</a></p>
	</div>

The resulting code after the cookie is accepted is the same as the one in the second example.

### 4. Embed local audio

The html5 audio tag, allows for the embedding of multiple formats to enhance compatibility with the various browsers and computer setups. To embed music residing in your installation's files directory, first upload the audio files using the same name followed by the extension. In your articles call the file name and state the extensions you have encoded those files to. (Currently the tag supports m4a, mp3, mp4, aac, webm, flac and ogg). You may want to check the [formats supported by different web browsers](https://en.wikipedia.org/wiki/HTML5_audio#Supported_audio_coding_formats).

`<txp::media from="local" url="a" media="my_title" m4a mp3 flac />`

The resulting code will be

	<span itemscope itemtype="http://schema.org/AudioObject">
		<audio controls>
			<source src="http(s)://site.tld/files/files/my_title.m4a" type="audio/m4a">
			<source src="http(s)://site.tld/files/files/my_title.mp3" type="audio/mpeg">
			<source src="http(s)://site.tld/files/files/my_title.flac" type="audio/flac">
			<p>Your browser does not support the audio element.</p>
		</audio>
	</span>

### 5. Embed from Giphy

Giphy offers two types of urls based on the media type, gif and video.

* giphy.com/gifs/name
* giphy.com/videos/name

To embed a gif from Giphy use

`<txp::media from="gp" media="QZyYmcnN7uYgx6uGyL" title="We want justice" />`

Resulting code before cookie is accepted

	<div class="gdpr">
		<p>We want justice</p>
		<p>Hosted by Giphy on <a rel="external noopener" href="https://giphy.com/gifs/QZyYmcnN7uYgx6uGyL">giphy.com/gifs/QZyYmcnN7uYgx6uGyL</a>.</p>
		<p><a rel="external noopener" href="https://support.giphy.com/hc/en-us/articles/360032872931-GIPHY-Privacy-Policy">Giphy&#8217;s private policy</a>.</p>
		<p class="accept"><a rel="nofollow" href="?My_Site_giphy_cookie=yes#m_QZyYmcnN7uYgx6uGyL">View to it here</a></p>
	</div>

Resulting code after cookie is accepted

	<div class="embed-container" id="m_QZyYmcnN7uYgx6uGyL"  itemscope itemtype="http://schema.org/ImageObject">
		<iframe src="https://giphy.com/embed/QZyYmcnN7uYgx6uGyL" frameBorder="0" allowFullScreen></iframe>
	</div>

To embed a video from Giphy use

`<txp::media from="gp" media="YOMRpF8MSxjMqlPO6h" title="Tear Gas" url />`

Resulting code before cookie is accepted

	<div class="gdpr">
		<p>Tear Gas</p>
		<p>Hosted by Giphy on <a rel="external noopener" href="https://giphy.com/videos/YOMRpF8MSxjMqlPO6h">giphy.com/videos/YOMRpF8MSxjMqlPO6h</a>.</p>
		<p><a rel="external noopener" href="https://support.giphy.com/hc/en-us/articles/360032872931-GIPHY-Privacy-Policy">Giphy&#8217;s private policy</a>.</p>
		<p class="accept"><a rel="nofollow" href="?My_Site_giphy_cookie=yes#m_YOMRpF8MSxjMqlPO6h">View to it here</a></p>
	</div>

Resulting code after cookie is accepted

	<div class="embed-container" id="YOMRpF8MSxjMqlPO6h"  itemscope itemtype="http://schema.org/VideoObject">
		<iframe src="https://giphy.com/embed/YOMRpF8MSxjMqlPO6h" frameBorder="0" allowFullScreen></iframe>
	</div>

### 6. Embed a local video

The html5 video tag, allows for the embedding of multiple formats to enhance compatibility with the various browsers and computer setups. To embed your videos residing in your installation's files directory, first upload the video files using the same name followed by the extension. In your articles call the file name and state the extensions you have encoded those files to. (Currently the tag supports  mp4, ogg, mpeg-4, flac, webm). You may want to check the [status of video format support in each web browser](https://en.wikipedia.org/wiki/HTML5_video#Browser_support).

`<txp::media from="local" url="v" media="my_title" mp4 webm />`

The resulting code will be

	<span itemscope itemtype="http://schema.org/VideoObject">
		<video width="100%" height="100%" controls>
			<source src="http(s)://site.tld/files/my_video.mp4" type="video/mp4">
			<source src="http(s)://site.tld/files/my_video.webm" type="video/webm">
			<p>Your browser does not support the video element.</p>
		</video>
	</span>

If you wish to include a poster-frame for the video use

`<txp::media from="local" url="v" media="my_title" mp4 webm title="32" />`

Where the `32` is the id number of your selected image from the database.

The resulting code will be

	<span itemscope itemtype="http://schema.org/VideoObject">
		<video width="100%" height="100%" controls poster="http(s)://site.tld/images/32.jpg">
			<source src="http(s)://site.tld/files/my_video.mp4" type="video/mp4">
			<source src="http(s)://site.tld/files/my_video.webm" type="video/webm">
			<p>Your browser does not support the video element.</p>
		</video>
	</span>

### 7. Embed from YouTube

YouTube's url structures allow for the presentation of the video thumbnail before their cookies are served. As such the code below also embeds the thumbnail before the cookie is accepted. 

`<txp::media from="yt" media="zlZTghhCuxg" title="Delivery for Mr. Assange" />`

Resulting code before cookie is accepted

	<div class="gdpr">
		<img src="https://img.youtube.com/vi/zlZTghhCuxg/hqdefault.jpg" alt="Delivery for Mr. Assange" />
		<p>Delivery for Mr. Assange</p>
		<p>Hosted by Vimeo on <a rel="external noopener" href="https://youtube.com/watch?v=zlZTghhCuxg">youtube.com/watch?v=zlZTghhCuxg</a>.</p>
		<p><a rel="external noopener" href="https://youtube.com/privacy">YouTube&#8217;s private policy</a>.</p>
		<p class="accept"><a rel="nofollow" href="?My_Site_youtube_cookie=yes#m_zlZTghhCuxg">View it here</a></p>
	</div>

Resulting code after cookie is accepted

	<div class="embed-container" id="m_zlZTghhCuxg"  itemscope itemtype="http://schema.org/VideoObject">
		<iframe src="https://www.youtube.com/embed/zlZTghhCuxg?rel=0" frameborder="0" allowfullscreen></iframe>
	</div>

### 8. Embed from the Internet archive

The Internet archive allows the embedding of both video and audio files.

To embed from the Archive simply, use


`<txp::media from="ia" media="PiesAndaluzyjski" title="Luis Bunuel: Un Chien Andalou, 1929" />`

The resultig code befor cookie is accepted

	<div class="gdpr">
		<p>Luis Bunuel: Un Chien Andalou, 1929</p>
		<p>Hosted by Vimeo on <a rel="external noopener" href="https://archive.org/details/PiesAndaluzyjski">archive.org/details/PiesAndaluzyjski</a>.</p>
		<p><a rel="external noopener" href="https://archive.org/about/terms.php">Internet Archive&#8217;s private policy</a>.</p>
		<p class="accept"><a rel="nofollow" href="?My_Site_youtube_cookie=yes#m_PiesAndaluzyjski">View it here</a></p>
		<p class="accept"><a rel="nofollow noindex" href="?My_Site_iarchive_cookie=yes#m_PiesAndaluzyjski">View it here</a></p>
	</div>

Resulting code after cookie is accepted

	<div class="embed-container" id="m_PiesAndaluzyjski">
		<iframe src="https://archive.org/embed/PiesAndaluzyjski" frameborder="0" webkitallowfullscreen="true" mozallowfullscreen="true" allowfullscreen></iframe>
	</div>

You may notice that the parsed code of the embed-container, after the cookie is accepted does not include ARIA. This is because the Object types (video or audio) need to be specified. You can do that by typing: `url="v"` or `url="a"`, where `v` is for video and `a` is for audio. 

`<txp::media from="ia" media="PiesAndaluzyjski" title="Luis Bunuel: Un Chien Andalou, 1929" url="v" />`

Resulting code after cookie is accepted

	<div class="embed-container" id="m_PiesAndaluzyjski" itemscope itemtype="http://schema.org/VideoObject">
		<iframe src="https://archive.org/embed/PiesAndaluzyjski" frameborder="0" webkitallowfullscreen="true" mozallowfullscreen="true" allowfullscreen></iframe>
	</div>

## Licence 

This shortcode is distributed as free software. Read about it on https://github.com/colak/txp-media-shortcode/blob/master/LICENCE.md.

## Support

Please post any questions requests, or bugs on https://forum.textpattern.com/viewtopic.php?id=50879

## Notes

<p class="footnote" id="fn1"><sup>1</sup> I have detected that embedded videos from youtube-nocookies do serve 3 cookies, 2 of which are from youtube. I have nevertheless included it in the list as, unlike Youtube, the embedded videos do not show related content when a video is paused or finished.</p> 
<p class="footnote" id="fn2"><sup>2</sup> Created in and shared from the <i>My Maps</i> API.</p>
