# txp-media-shortcode 


## Introduction

This textpattern shortcode draws inspiration from [Nicolas Morand's](https://github.com/NicolasGraph) oui_player plugin and tries to produce similar results using textapattern's native tags but also make the players [GDPR](https://gdpr-info.eu/) compliant. In the case of locally hosted media no cookie consent is required. This work was encouraged by [Stef Dawson](https://forum.textpattern.com/viewtopic.php?pid=324309#p324309), who first developed the smd_macro textpattern plugin which later became part of txp's core code thanks to Oleg Loukianov's reworking of the native `<txp:yield />` tag.

## Dependencies 

* [Textpattern 4.7+](https://textpattern.com/)
* [oui_cookie](https://forum.textpattern.com/viewtopic.php?id=47048)
* The media hosts' url schemas and embed codes. 

## Advantages and disadvantages of shortcodes

Shortcodes are easy to edit by those without any knowledge of php but with sufficient knowledge of html and txp tags. As such, for those keeping their textpattern installation up to date, the shortcode should keep on working seamlessly. 
Shortcodes are normally slower in execution than php plugins.

## Installing

1. Copy the latest txp snippet from the [GitHub project page](https://github.com/colak/txp-media-shortcode/blob/master/media.tpl), 
2. Create a new miscellanious form in your Textpattern administration interface and name it `media`,
3. Paste the code into the form administration and save.
4. Copy and paste the provided [css](https://github.com/colak/txp-media-shortcode/blob/master/css.css) in your style sheet and edit it to your liking.

## Cookies

According to GDPR, webmasters should never serve any tracking cookies without their visitors' consent. The GDPR gives the right to any EU citizen to legally institute legal proceedings against any website owner, regardless of the website's or owner's location. The cookies served by the oui_cookie plugin do not track, but most media hosting providers do include tracking in their embeddable content. As such, and in order to make websites GDPR compliant, this shortcode does not load any embedded content which comes with tracking cookies, without the explicit acceptance of the site visitors. I have made oui_cookies to last for a duration of one year. 

This however is but only one of the steps needed for full adherence to the EU law which also requests for a privacy policy and a description of the first and third party cookies served. Examples of such pages can be found in the neme.org site on:

* http://www.neme.org/about/privacy-policy
* http://www.neme.org/about/cookies

## Usage

To embed the media, simply use 

	==<txp::media from="xxx" media="yyy" title="my text here" />==
	
In your articles. Replace `xxx` and `yyy` as appropriate. 

## Attributes

1. from
2. media
3. title
4. url

### Details

1. For hosting providers use the `from` attribute as follows

<table>
	<thead>
		<tr>
			<th scope="col">Media hosts</th>
			<th scope="col">from</th>
			<th scope="col">url</th>
			<th scope="col"><i>others</i></th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td> Local video </td>
			<td> local_v </td>
			<td>  </td>
			<td> mp4, ogg, mpeg-4, flac, webm </td>
		</tr>
		<tr>
			<td> <a href="https://archive.org/details/movies">Internet Archive video</a> </td>
			<td> iav </td>
			<td>  </td>
			<td>  </td>
		</tr>
		<tr>
			<td> <a href="https://www.youtube.com/">YouTube</a> </td>
			<td> yt </td>
			<td>  </td>
			<td>  </td>
		</tr>
		<tr>
			<td> <a href="https://www.vimeo.com/">Vimeo</a> </td>
			<td> v </td>
			<td>  </td>
			<td>  </td>
		</tr>
		<tr>
			<td> <a href="https://www.dailymotion.com/">DailyMotion</a> </td>
			<td> dm </td>
			<td>  </td>
			<td>  </td>
		</tr>
		<tr>
			<td> <a href="https://giphy.com/">Giphy</a> </td>
			<td> gp </td>
			<td> any </td>
			<td>  </td>
		</tr>
		<tr>
			<td> Local mp3 audio </td>
			<td> local_a </td>
			<td>  </td>
			<td> m4a, mp3, ogg, mp4, sac, webm, flac </td>
		</tr>
		<tr>
			<td> <a href="https://archive.org/details/audio">Internet Archive audio</a> </td>
			<td> iaa </td>
			<td>  </td>
			<td>  </td>
		</tr>
		<tr>
			<td> <a href="https://audioboom.com/">AudioBoom</a> </td>
			<td> ab </td>
			<td>  </td>
			<td>  </td>
		</tr>
		<tr>
			<td> <a href="https://www.indiesound.com/">IndieSound</a> </td>
			<td> is </td>
			<td>  </td>
			<td>  </td>
		</tr>
		<tr>
			<td> <a href="https://soundcloud.com/">SoundCloud</a> </td>
			<td> sc </td>
			<td> url in soundclud </td>
			<td>  </td>
		</tr>
		<tr>
			<td> <a href="https://www.google.com/mymaps">Google Maps</a>, created in and shared from the <i>My Maps</i> API </td>
			<td> gm </td>
			<td>  </td>
			<td>  </td>
		</tr>
	</tbody>
</table>


2. Insert the id of the media file in the `media` attribute. The id can normally be found in the url of the video. For example:

* For a Vimeo address such as https://vimeo.com/336049258, the video id is `336049258`
* For a YouTube address such as https://www.youtube.com/watch?v=zlZTghhCuxg, the video id is `zlZTghhCuxg`

3. Use the `title` attribute should you wish to have a textile enabled descriptive text in the GDPR container. This text is replaced by the `embed` container once the cookie for the particular provider is accepted.

4. The `url` attribute is only used for services like Soundcloud where the media id does not appear in the url of the page that hosts the media file.

##  Examples

1. Embed a video hosted by Vimeo on your website

`<txp::media from="v" media="336049258" title="My awesome video" />`

Resulting code before cookie is accepted

	<div class="gdpr">
		<p>My awesome video</p>
		<p>Hosted by Vimeo on <a rel="external noopener" href="https://vimeo.com/336049258">vimeo.com/336049258</a>.</p>
		<p><a rel="external noopener" href="https://vimeo.com/privacy">Vimeo&#8217;s private policy</a>.</p>
		<p class="accept"><a rel="nofollow" href="?My_Site_vimeo_cookie=yes#m_336049258">View it here</a></p>
	</div>

Resulting code after cookie is accepted

	<div class="embed-container" id="m_336049258">
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

2. Embed on SoundCloud

`<txp::media from="sc" media="336049258" title="News from Nowhere" />`

Resulting code before cookie is accepted

	<div class="gdpr">
		<p>News from Nowhere</p>
        	<p>Hosted by  <a rel="external noopener" href="https://soundcloud.com/">SoundCloud</a>.</p>
		<p><a rel="external noopener" href="https://soundcloud.com/pages/privacy">SoundCloud&#8217;s private policy</a>.</p>
		<p class="accept"><a rel="nofollow" href="?My_Site_soundcloud_cookie=yes#m_336049258">Listen to it here</a></p>
	</div>

Resulting code after cookie is accepted

	<div class="embed-container" id="m_336049258">
		<iframe width="100%" height="300" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/336049258&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=true&amp;show_comments=false&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true&amp;visual=true"></iframe>
	</div>

3. Embed on SoundCloud using the url attribute

`<txp::media from="sc" media="336049258" title="News from Nowhere" url="https://soundcloud.com/furtherfield/news-from-where-we-are-1" />`

Resulting code before cookie is accepted

	<div class="gdpr">
		<p>News from Nowhere</p>
		<p>Hosted by SoundCloud on <a rel="external noopener" href="https://soundcloud.com/furtherfield/news-from-where-we-are-1">https://soundcloud.com/furtherfield/news-from-where-we-are-1</a>.</p>
		<p><a rel="external noopener" href="https://soundcloud.com/pages/privacy">SoundCloud&#8217;s private policy</a>.</p>
		<p class="accept"><a rel="nofollow" href="?My_Site_soundcloud_cookie=yes#m_336049258">Listen to it here</a></p>
	</div>

The resulting code after the cookie is accepted is the same as the one in the second example.

4. Embed local audio

The html5 audio tag, allows for the embeding of multible embeding formats in order to enhance compatibility with the various brousers and computer setups. To embed audio files residing in your installation's files directory, first upload the audio files using the same name followed by the extention. In your articles call the file name and state the extentions you have encoded those files to. (Currently the tag supports m4a, mp3, and ogg).  

`<txp::media from="local_a" media="my_title" m4a mp3 />`

The resulting code will be

	<audio controls>
		<source src="/files/my_title.m4a" type="audio/m4a">
		<source src="/files/my_title.mp3" type="audio/mpeg">
	</audio>

## Licence 

This shortcode is distributed as free software. Read about it on https://github.com/colak/txp-media-shortcode/blob/master/LICENCE.md.

## Support

Please post any questions requests, or bugs on https://forum.textpattern.com/viewtopic.php?id=50879
