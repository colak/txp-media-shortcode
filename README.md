# txp-media-shortcode 


## Introduction

This textpattern shortcode draws inspiration from [Nicolas Morand's](https://github.com/NicolasGraph) oui_player plugin and tries to produce similar results using textapattern's native tags but also make the players [GDPR](https://gdpr-info.eu/) compliant. In the case of locally hosted media no cookie consent is required. This work was [encouraged](https://forum.textpattern.com/viewtopic.php?pid=324309#p324309) by [Stef Dawson](https://github.com/Bloke), who first developed the smd_macro textpattern plugin which later became part of txp's core code thanks to [Oleg's](https://github.com/bloatware) reworking of the native `<txp:yield />` tag. Finally, many thanks are also due to [Michael K. Pate](https://github.com/michaelkpate) for the exhaustive testing and help for the detection of numerous bugs.

## Disclaimer (further to the one in the Licence)

Obviously, the author does not agree with one, or any of the policies or content of the providers the shortcode supports. 

## Dependencies 

* [Textpattern 4.7+](https://textpattern.com/)
* [oui_cookie](https://forum.textpattern.com/viewtopic.php?id=47048)
* [etc_query](https://forum.textpattern.com/viewtopic.php?id=37932)
* The media hosts' url schemas and embed codes.
* Georestrictions and privacy settings of individual media.
* The availability of the content. Millions of videos and sound-files are taken off the web daily. This is because they are removed by the original uploader or blocked by the hosts (usually because of DMCA notices).

## Advantages and disadvantages of shortcodes

Shortcodes are easy to edit by those without any knowledge of php but with sufficient knowledge of html and txp tags. 

If you often embed media in your website, it is much easier to update the shortcode when providers change their embed scripts rather than find and change all instances of the embedded content in your articles.

The shortcode's GDPR warnings are parsed automatically, which save on typing, remembering cookie names, and privacy policy links. 

When visitors accept a particular host's cookies, they do so for all embeds from that host site-wide. 

Shortcodes are normally slightly slower in execution than raw php, or txp plugins.

## Installing

1. Copy the latest txp snippet from the [GitHub project page](https://github.com/colak/txp-media-shortcode/blob/master/media.tpl), 
2. Create a new miscellaneous form in your Textpattern administration interface and name it `media`,
3. Paste the code into the form you created, and save.
4. Copy the media providers you are using for your website and paste those codes in new miscellaneous forms, using the same names as the ones provided without the tpl extension. For example `media_yt.tpl`should be `media_yt`.
5. Copy and paste the provided [css](https://github.com/colak/txp-media-shortcode/blob/master/css.css) in your style sheet and edit it to your liking.

## Cookies

According to GDPR, webmasters should never serve any tracking cookies without their visitors' explicit consent. The GDPR gives the right to any EU citizen to legally institute legal proceedings against any website owner, regardless of the website's or owner's location. The cookies served by the oui_cookie plugin do not track, but most media hosting providers do include tracking in their embeddable content. The acceptance cookies last for a duration of one year. 

The above is but only one of the steps needed for full adherence to the EU law which also requests for a privacy policy and a description of the first and third party cookies served. Examples of such pages can be found in the neme.org site on:

* http://www.neme.org/about/privacy-policy
* http://www.neme.org/about/cookies

## Usage

1. To embed the media, simply use 

`==<txp::media from="xxx" media="yyy" title="my text here" />==`

2. Using the shortcode above, insert the id of the media file in the `media` attribute. The id can normally be found in the url of the video. For example:

* For a Vimeo address such as https://vimeo.com/336049258, the video id is `336049258`
* For a YouTube address such as https://www.youtube.com/watch?v=zlZTghhCuxg, the video id is `zlZTghhCuxg`

3. Use the `title` attribute should you wish to have a textile enabled descriptive text in the GDPR container. This text is replaced by the `embed` container once the cookie for the particular provider is accepted.

4. The `url` attribute is used in different ways, explained in the examples.

## Errors and warnings

You may see some errors and warnings after posting your shortcodes. These can appear before or after the cookies are accepted and they are only visible to logged-in users. They were added as prompts to promote the proper usage of the attributes. 

## Attributes

1. from (required)
2. media (required)
3. title (recommended)
4. url (Required or recommended by some hosts)
5. img (optional id of an image from the database)
6. <i>others</i>. (See examples.)

### Details

<table>
	<thead>
		<tr>
			<th scope="col">Media hosts</th>
			<th scope="col">from</th>
			<th scope="col">url</th>
			<th scope="col">title</th>
			<th scope="col">img</th>
			<th scope="col"><i>others</i></th>
			<th scope="col">Examples</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td colspan="7"> <b>Video or audio</b> </td>
		</tr>
		<tr>
			<td rowspan="2"> Local</td>
			<td rowspan="2"> local </td>
			<td> url="v" </td>
			<td> ISO 639-1 </td>
			<td> &check; </td>
			<td> mp4, ogg, mpeg-4, flac, webm, m4v, mpg </td>
			<td> <a href="#5-embed-a-local-video">(5)</a> </td>
		</tr>
		<tr>
			<td> url="a" </td>
			<td> NA </td>
			<td> NA </td>
			<td> m4a, mp3, ogg, mp4, sac, webm, flac </td>
			<td> <a href="#3-embed-local-audio">(3)</a> </td>
		</tr>
		<tr>
			<td rowspan="2"> <a href="https://archive.org/">Internet Archive</a> </td>
			<td rowspan="2"> ia </td>
			<td> url="v" </td>
			<td rowspan="2"> &check; </td>
			<td> &check; </td>
			<td rowspan="2"> NA </td>
			<td rowspan="2"> <a href="#7-embed-from-the-internet-archive">(7)</a> </td>
		</tr>
		<tr>
			<td> url="a" </td>
			<td> NA </td>
		</tr>
		<tr>
			<td colspan="7"> <b>Video</b> </td>
		</tr>
		<tr>
			<td rowspan="3"> <a href="https://www.youtube.com/">YouTube</a> </td>
			<td rowspan="3"> yt </td>
			<td> &nbsp; </td>
			<td rowspan="3"> &check; </td>
			<td rowspan="3"> &check; </td>
			<td rowspan="3"> 0 </td>
			<td rowspan="3"> <a href="#6-embed-from-youtube">(6)</a> </td>
		</tr>
		<tr>
			<td> url="pl" </td>
		</tr>
		<tr>
			<td> url="user" </td>
		</tr>
		<tr>
			<td rowspan="3"> <a href="https://www.vimeo.com/">Vimeo</a> </td>
			<td rowspan="3"> v </td>
			<td> &nbsp; </td>
			<td rowspan="3"> &check; </td>
			<td rowspan="3"> &check; </td>
			<td rowspan="3"> NA </td>
			<td rowspan="3"> <a href="#1-embed-from-vimeo">(1)</a> </td>
		</tr>
		<tr>
			<td> url="a" </td>
		</tr>
		<tr>
			<td> url="vr" </td>
		</tr>
		<tr>
			<td> <a href="https://www.dailymotion.com/">DailyMotion</a> </td>
			<td> dm </td>
			<td> NA </td>
			<td> &check; </td>
			<td> &check; </td>
			<td> 0 </td>
			<td> </td>
		</tr>
		<tr>
			<td> <a href="https://peertube.video">PeerTube</a> </td>
			<td> peer </td>
			<td> NA </td>
			<td> &check; </td>
			<td> &check; </td>
			<td> 0 </td>
			<td> </td>
		</tr>
		<tr>
			<td> <a href="https://rumble.com/">Rumble</a> </td>
			<td> rum </td>
			<td> NA </td>
			<td> &check; </td>
			<td> &check; </td>
			<td> 0 </td>
			<td> </td>
		</tr>
		<tr>
			<td> <a href="https://ted.com">TED</a> </td>
			<td> ted </td>
			<td> NA </td>
			<td> &check; </td>
			<td> &check; </td>
			<td> NA </td>
			<td> </td>
		</tr>
		<tr>
			<td> <a href="https://www.vidyard.com/">Vidyard</a> </td>
			<td> vy </td>
			<td> NA </td>
			<td> &check; </td>
			<td> &check; </td>
			<td> 0 </td>
			<td>  </td>
		</tr>
		<tr>
			<td> <a href="https://www.vlare.tv/">Vlare</a> </td>
			<td> vl </td>
			<td> NA </td>
			<td> &check; </td>
			<td> &check; </td>
			<td> NA </td>
			<td>  </td>
		</tr>
		<tr>
			<td> <a href="https://www.freespeechtube.org/">Freespeechtube</a> </td>
			<td> fst </td>
			<td> NA </td>
			<td> &check; </td>
			<td> &check; </td>
			<td> NA </td>
			<td> </td>
		</tr>
		<tr>
			<td> <a href="https://www.bitchute.com">BitChute</a> </td>
			<td> bc </td>
			<td> NA </td>
			<td> &check; </td>
			<td> &check; </td>
			<td> NA </td>
			<td> </td>
		</tr>
		<tr>
			<td> <a href="https://www.playtube.pk">Playtube</a> </td>
			<td> pt </td>
			<td> NA </td>
			<td> &check; </td>
			<td> &check; </td>
			<td> 0 </td>
			<td> </td>
		</tr>
		<tr>
			<td> <a href="https://youtube-nocookie.com/">YouTube-nocookie</a> <sup id="a1"><a href="#fn1">1</a></sup> </td>
			<td> ytnc </td>
			<td> NA </td>
			<td> &check; </td>
			<td> &check; </td>
			<td> 0 </td>
			<td> </td>
		</tr>
		<tr>
			<td> <a href="https://metacafe.com/">MetaCafe</a> </td>
			<td> mc </td>
			<td> NA </td>
			<td> &check; </td>
			<td> &check; </td>
			<td> 0 </td>
			<td> </td>
		</tr>
		<tr>
			<td> <a href="https://coub.com/">Coub</a> </td>
			<td> cb </td>
			<td> NA </td>
			<td> &check; </td>
			<td> &check; </td>
			<td> NA </td>
			<td> </td>
		</tr>
		<tr>
			<td colspan="7"> <b>Video and GIF</b> </td>
		</tr>
		<tr>
			<td rowspan="2"> <a href="https://giphy.com/">Giphy</a> </td>
			<td rowspan="2"> gp </td>
			<td> url="g" </td>
			<td rowspan="2"> &check; </td>
			<td rowspan="2"> &check; </td>
			<td rowspan="2"> NA </td>
			<td rowspan="2"> <a href="#4-embed-from-giphy">(4)</a> </td>
		</tr>
		<tr>
			<td> url="v" </td>
		</tr>
		<tr>
			<td colspan="7"> <b>Audio</b> </td>
		</tr>
		<tr>
			<td> <a href="https://audioboom.com/">AudioBoom</a> </td>
			<td> ab </td>
			<td> NA </td>
			<td> &check; </td>
			<td> NA </td>
			<td> NA </td>
			<td> </td>
		</tr>
		<tr>
			<td> <a href="https://www.indiesound.com/">IndieSound</a> </td>
			<td> is </td>
			<td> NA </td>
			<td> &check; </td>
			<td> NA </td>
			<td> NA </td>
			<td> </td>
		</tr>
		<tr>
			<td> <a href="https://soundcloud.com/">SoundCloud</a> </td>
			<td> sc </td>
			<td> url in SoundCloud </td>
			<td> &check; </td>
			<td> NA </td>
			<td> NA </td>
			<td> <a href="#2-embed-from-soundcloud">(2)</a> </td>
		</tr>
		<tr>
			<td> <a href="https://spotify.com/">Spotify</a> </td>
			<td> sf </td>
			<td> NA </td>
			<td> &check; </td>
			<td> &check; </td>
			<td> NA </td>
			<td> </td>
		</tr>
		<tr>
			<td> <a href="https://bandcamp.com/">BandCamp</a> (albums) </td>
			<td> bac </td>
			<td> Artist&#8217;s name as it appears in the subdomain</td>
			<td> NA </td>
			<td> &check; </td>
			<td> NA </td>
			<td> <a href="#8-embed-from-bandcamp">(8)</a> </td>
		</tr>
		<tr>
			<td> <a href="https://www.mixcloud.com/">MixCloud</a> </td>
			<td> mix </td>
			<td> Artist&#8217;s name as it appears in the url</td>
			<td> &check; </td>
			<td> NA </td>
			<td> NA </td>
			<td> <a href="#9-embed-from-mixcloud">(9)</a> </td>
		</tr>
		<tr>
			<td colspan="7" style="background-color:#ffc;color:#000;"> <b>Others</b> </td>
		</tr>
		<tr>
			<td> <a href="https://www.google.com/mymaps">Google Maps</a> <sup id="a2"><a href="#fn2">2</a></sup> </td>
			<td> gm </td>
			<td> NA </td>
			<td> &check; </td>
			<td> &check; </td>
			<td> NA </td>
			<td> </td>
		</tr>
		<tr>
			<td> <a href="https://www.datawrapper.de">Datawrapper</a>  </td>
			<td> dw </td>
			<td> NA </td>
			<td> &check; </td>
			<td> &check; </td>
			<td> NA </td>
			<td> </td>
		</tr>
	</tbody>
</table>

##  Examples

### 1. Embed from Vimeo

The shortcode allows for **individual video** embeds and Vimeo albums. 

To embed an individual video use

`<txp::media from="v" media="336049258" title="My awesome video" img="33" />`

Resulting code before cookie is accepted

	<div class="gdpr">
		<img src="http(s)://site.tld/images/33.jpg" width="720" height="576" alt="still from my ausome video" />
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

`<txp::media from="v" media="336049258" title="h3. My awesome video" img="33" />`

Resulting code before cookie is accepted

	<div class="gdpr">
		<txp:img src="http(s)://site.tld/images/33.jpg" width="720" height="576" alt="still from my ausome video" />
		<h3>My awesome video</h3>
		<p>Hosted by Vimeo on <a rel="external noopener" href="https://vimeo.com/336049258">vimeo.com/336049258</a>.</p>
		<p><a rel="external noopener" href="https://vimeo.com/privacy">Vimeo&#8217;s private policy</a>.</p>
		<p class="accept"><a rel="nofollow" href="?My_Site_vimeo_cookie=yes#m_336049258">View it here</a></p>
	</div>

For Vimeo **albums** use the `url="a"` attribute

`<txp::media from="v" media="2217152" url="a" title="Through the Roadblocks" img="33" />`

Resulting code after cookie is accepted

	<div class="embed-container" id="m_2217152" itemscope itemtype="http://schema.org/VideoObject">
		<iframe src='https://vimeo.com/showcase/2217152/embed' allowfullscreen frameborder='0' style='position:absolute;top:0;left:0;width:100%;height:100%;'></iframe>		</div>

`<txp::media from="v" media="336049258" title="My awesome video" img="33" />`

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

Embed from SoundCloud **using the url** attribute

`<txp::media from="sc" media="336049258" title="News from Nowhere" url="https://soundcloud.com/furtherfield/news-from-where-we-are-1" />`

Resulting code before cookie is accepted

	<div class="gdpr">
		<p>News from Nowhere</p>
		<p>Hosted by SoundCloud on <a rel="external noopener" href="https://soundcloud.com/furtherfield/news-from-where-we-are-1">https://soundcloud.com/furtherfield/news-from-where-we-are-1</a>.</p>
		<p><a rel="external noopener" href="https://soundcloud.com/pages/privacy">SoundCloud&#8217;s private policy</a>.</p>
		<p class="accept"><a rel="nofollow" href="?My_Site_soundcloud_cookie=yes#m_336049258">Listen to it here</a></p>
	</div>

The resulting code after the cookie is accepted is the same as the one in the second example.

### 3. Embed local audio

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

### 4. Embed from Giphy

Giphy offers two types of urls based on the media type, gif and video.

* giphy.com/gifs/name
* giphy.com/videos/name

To embed a **gif from Giphy** use

`<txp::media from="gp" media="QZyYmcnN7uYgx6uGyL" title="We want justice" url="g" />`

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

To embed a **video from Giphy** use

`<txp::media from="gp" media="YOMRpF8MSxjMqlPO6h" title="Tear Gas" url="v" />`

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

### 5. Embed a local video

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

`<txp::media from="local" url="v" media="my_title" mp4 webm img="32" />`

Where the `32` is the id number of your selected image from the database.

The resulting code will be

	<span itemscope itemtype="http://schema.org/VideoObject">
		<video width="100%" height="100%" controls poster="http(s)://site.tld/images/32.jpg">
			<source src="http(s)://site.tld/files/my_video.mp4" type="video/mp4">
			<source src="http(s)://site.tld/files/my_video.webm" type="video/webm">
			<p>Your browser does not support the video element.</p>
		</video>
	</span>

HTML5 allows the addition of subitiles in the videos and suport for one **srt** subtitle track is provided. The track should have the same name as the video file with the addition of `_language`, so for an english subtitled track the name of the file could be `my_video_en.srt`. The language string should use the [ISO 639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) standard.

So for:

`<txp::media from="local" url="v" media="my_title" mp4 webm img="32" title="en" />`

The resulting code will be

	<span itemscope itemtype="http://schema.org/VideoObject">
		<video width="100%" height="100%" controls poster="http(s)://site.tld/images/32.jpg">
			<source src="http(s)://site.tld/files/my_video.mp4" type="video/mp4">
			<source src="http(s)://site.tld/files/my_video.webm" type="video/webm">
			<track enabled="true" kind="subtitles" label="en" srclang="en" type="text/x-srt" src="http(s)://site.tld/files/my_video_en.srt" /></track>
			<p>Your browser does not support the video element.</p>
		</video>
	</span>

### 6. Embed from YouTube

YouTube's url structures allow for the presentation of the video thumbnail before their cookies are served. As such the code below also embeds the thumbnail before the cookie is accepted. 

The shorcode allows for embeding individual videos, YouTube playlists, or a feed from a YouTube user. 

Embed an **individual video**

`<txp::media from="yt" media="zlZTghhCuxg" title="Delivery for Mr. Assange" />`

Resulting code before cookie is accepted

	<div class="gdpr">
		<img src="https://i3.ytimg.com/vi/zlZTghhCuxg/hqdefault.jpg" srcset="https://i3.ytimg.com/vi/zlZTghhCuxg/hqdefault.jpg 480w, https://i3.ytimg.com/vi/zlZTghhCuxg/maxresdefault.jpg 1280w" alt="Delivery for Mr. Assange" itemscope itemtype="http://schema.org/ImageObject" /><picture>
		<p>Delivery for Mr. Assange</p>
		<p>Hosted by YouTube on <a rel="external noopener" href=https://youtu.be/zlZTghhCuxg">youtu.be/zlZTghhCuxg</a>.</p>
		<p><a rel="external noopener" href="https://youtube.com/privacy">YouTube&#8217;s private policy</a>.</p>
		<p class="accept"><a rel="nofollow" href="?My_Site_youtube_cookie=yes#m_zlZTghhCuxg">View it here</a></p>
	</div>

Resulting code after cookie is accepted

	<div class="embed-container" id="m_zlZTghhCuxg"  itemscope itemtype="http://schema.org/VideoObject">
		<iframe src="https://www.youtube.com/embed/zlZTghhCuxg?rel=0" frameborder="0" allowfullscreen></iframe>
	</div>

The default, pre cookie acceptance behaviour, calls the images from YouTube and some may find this unacceptable so I provided an option to include an image from the database. For that you can use:

`<txp::media from="yt" media="zlZTghhCuxg" title="Delivery for Mr. Assange" img="34" />`

Resulting code before cookie is accepted

	<div class="gdpr">
		<img src="http(s)://site.tld/images/34.jpg" alt="Delivery for Mr. Assange" width="720" height="576" /> 
		<p>Delivery for Mr. Assange</p>
		<p>Hosted by YouTube on <a rel="external noopener" href=https://youtu.be/zlZTghhCuxg">youtu.be/zlZTghhCuxg</a>.</p>
		<p><a rel="external noopener" href="https://youtube.com/privacy">YouTube&#8217;s private policy</a>.</p>
		<p class="accept"><a rel="nofollow" href="?My_Site_youtube_cookie=yes#m_zlZTghhCuxg">View it here</a></p>
	</div>

If an image is not desired before the cookie acceptance use 

`<txp::media from="yt" media="zlZTghhCuxg" title="Delivery for Mr. Assange" 0 />`

Resulting code before cookie is accepted

	<div class="gdpr">
		<p>Delivery for Mr. Assange</p>
		<p>Hosted by YouTube on <a rel="external noopener" href=https://youtu.be/zlZTghhCuxg">youtu.be/zlZTghhCuxg</a>.</p>
		<p><a rel="external noopener" href="https://youtube.com/privacy">YouTube&#8217;s private policy</a>.</p>
		<p class="accept"><a rel="nofollow" href="?My_Site_youtube_cookie=yes#m_zlZTghhCuxg">View it here</a></p>
	</div>

To embed a **YouTube user's feed** use the `media` attribute for the user handle and the `url` attribute to prompt the shortcode that it will will be embedding the feed. 

`<txp::media from="yt" url="user" media="thejuicemedia" title="The Juice Media" />`

Resulting code after cookie is accepted

	<div class="embed-container">
		<iframe src="https://www.youtube.com/embed?listType=user_uploads&amp;list=thejuicemedia" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>

To embed a **playlist from YouTube** use the `url` attribute to prompt the shortcode that it will be loading a playlist and the `media` attribute for the playlist ID. Note that YouTube playlist IDs always start with `PL`. 

`<txp::media from="yt" url="pl" media="PLAC463A2B6B2CEC7F" title="TED talks" />`

Resulting code after cookie is accepted

	<div class="embed-container">
		<iframe src="https://www.youtube.com/embed/videoseries?list=PLAC463A2B6B2CEC7F" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>

### 7. Embed from the Internet archive

The Internet archive allows the embedding of both video and audio files.

To embed a **video** from the the Archive simply, use

`<txp::media from="ia" url="v" media="PiesAndaluzyjski" title="Luis Bunuel: Un Chien Andalou, 1929" />`

The resultig code before cookie is accepted

	<div class="gdpr">
		<p>Luis Bunuel: Un Chien Andalou, 1929</p>
		<p>Hosted by Vimeo on <a rel="external noopener" href="https://archive.org/details/PiesAndaluzyjski">archive.org/details/PiesAndaluzyjski</a>.</p>
		<p><a rel="external noopener" href="https://archive.org/about/terms.php">Internet Archive&#8217;s private policy</a>.</p>
		<p class="accept"><a rel="nofollow noindex" href="?My_Site_iarchive_cookie=yes#m_PiesAndaluzyjski">View it here</a></p>
	</div>

Resulting code after cookie is accepted

	<div class="embed-container" id="m_PiesAndaluzyjski">
		<iframe src="https://archive.org/embed/PiesAndaluzyjski" frameborder="0" webkitallowfullscreen="true" mozallowfullscreen="true" allowfullscreen></iframe>
	</div>

You may have noticed that the parsed code of the embed-container, after the cookie is accepted, does not include ARIA. This is because the Object types (video or audio) need to be specified. You can do that by typing: `url="v"` or `url="a"`, where `v` is for video and `a` is for audio. 

### 8. Embed from Bandcamp

Bandcamp offers subdomains for their artists and normalised urls do not appear to be supported. The id of the tracks can be found in their embed code but found no way to link to their pages by using those ids. Having this in mind, to embed from Bandcamp use

`<txp::media from="bac" media="600847421" title="Icarus" url="jabbacartel" />`

Resulting code after cookie is accepted:

	<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/AudioObject">
		<iframe style="border: 0; width: 100%; height: 274px;" src="https://bandcamp.com/EmbeddedPlayer/album=600847421/size=large/bgcol=ffffff/linkcol=0687f5/artwork=small/transparent=true/" seamless></iframe>
	</div>

Resultig code before cookie is accepted

	<div class="gdpr">
		<p>Icarus</p>
		<p>Hosted by BandCamp on <a rel="external noopener" href="https://jabbacartel.bandcamp.com/album/icarus">jabbacartel.bandcamp.com/album/icarus</a>.</p>
		<p><a rel="external noopener" href="https://bandcamp.com/privacy">BandCamp&#8217;s private policy</a>.</p>
		<p class="accept"><a rel="nofollow" href="?My_Site_bandcamp_cookie=yes#m_600847421">Listen to it here</a></p>
	</div>

If the url attribute is not used, a warning, only visible to logged in users will be provided

	<div class="gdpr">
		<p>Icarus</p>
		<p>Hosted by <a rel="external noopener" href="https://bandcamp.com">BandCamp</a>.</p>
		<p><a rel="external noopener" href="https://bandcamp.com/privacy">BandCamp&#8217;s private policy</a>.</p>
		<p class="error">Warning: <b>url</b> is a recommended attribute. Use url="artistname" and replace <i>artistname</i> with the name appearing in the subdomain.</p>
		<p class="accept"><a rel="nofollow" href="?My_Site_bandcamp_cookie=yes#m_600847421">Listen to it here</a></p>
	</div>

### 9. Embed from Mixcloud

Mixcloud offers subdirectories for their artists and normalised urls do not appear to be supported. The id of the tracks can be found in their embed code but found no way to link to their pages by using those ids. Also the artist's name is a required field and should be used under the `url` attribute. Having this in mind, to embed from Mixcloud use

`<txp::media from="mix" media="midnight-silhouettes-7-5-20" title="Midnight silhouettes" url="eyeam4real" />`

Resulting code after cookie is accepted:

	<div class="embed-container" id="m_<txp:yield name="media" />" itemscope itemtype="http://schema.org/AudioObject">
		<iframe width="100%" height="120" src="https://www.mixcloud.com/widget/iframe/?hide_cover=1&light=1&feed=%2Feyeam4real%2Fmidnight-silhouettes-7-5-20%2F" frameborder="0" ></iframe>
	</div>

Resultig code before cookie is accepted

	<div class="gdpr">
		<p>Midnight silhouettes</p>
		<p>Hosted by Mixcloud on <a rel="external noopener" href="https://www.mixcloud.com/eyeam4real/midnight-silhouettes-7-5-20/">mixcloud.com/eyeam4real/midnight-silhouettes-7-5-20/</a>.</p>
		<p><a rel="external noopener" href="https://mixcloud.com/privacy">Mixcloud&#8217;s private policy</a>.</p>
		<p class="accept"><a rel="nofollow" href="?My_Site_mixcloud_cookie=yes#m_idnight-silhouettes-7-5-20">Listen to it here</a></p>
	</div>


If the required `url` attribute is not used, an error will be presented

Resultig code before cookie is accepted

	<div class="gdpr">
		<p>Midnight silhouettes</p>
		<p class="error">Error: <b>url</b> is a required attribute.</p> <!-- only visible to logged-in users -->
	</div>

Resultig code after cookie is accepted

	<div class="embed_container"> <!-- only visible to logged-in users -->
		<p class="error">Error: <b>url</b> is a required attribute.</p>
	</div>

## Licence 

This shortcode is released as free and unencumbered software. Read about it on https://github.com/colak/txp-media-shortcode/blob/master/LICENCE.md.

## Support

Please post any questions requests, or bugs on https://forum.textpattern.com/viewtopic.php?id=50879

## Not what you are looking for?

If you are not using textpattern or if you are looking for a general php which can *embed from anywhere*, you may want to have a look at Oscar Otero's [Embed](https://github.com/oscarotero/Embed).

## Notes

<p class="footnote" id="fn1"><sup>1</sup> I have detected that embedded videos from youtube-nocookies do serve 3 cookies, 2 of which are from youtube. I have nevertheless included it in the list as, unlike Youtube, the embedded videos do not show related content when a video is paused or finished.</p> 
<p class="footnote" id="fn2"><sup>2</sup> Created in and shared from the <i>My Maps</i> API.</p>
