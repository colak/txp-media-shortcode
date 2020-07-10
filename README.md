# txp-media-shortcode Introduction

This textpattern shortcode draws inspiration from [Nicolas Morand's](https://github.com/NicolasGraph) oui_player plugin and tries to produce similar results using textapattern's native tags but also make the players [GDPR](https://gdpr-info.eu/) compliant. In the case of locally and Internet Archive hosted media no cookie consent is required. This work was encouraged by [Stef Dawson](https://forum.textpattern.com/viewtopic.php?pid=324309#p324309), who first developed the smd_macro textpattern plugin which later became part of txp's core code thanks to Oleg Loukianov's reworking of the native `<txp:yield />` tag.

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

## Usage

To embed the media, use `==<txp::media from="xxx" media="yyy" title="my text here" />==` in your articles. Replace `xxx` and `yyy` as appropriate. 

## Attributes

1. from
2. media
3. title
4. url

### Details

1. For hosting providers use the `from` attribute as follows

<table>
        <tr>
            <td> Local mp4 video </td>
            <td> local_v </td>
        </tr>
        <tr>
            <td> Internet Archive video </td>
            <td> iav </td>
        </tr>
        <tr>
            <td> YouTube </td>
            <td> yt </td>
        </tr>
        <tr>
            <td> Vimeo </td>
            <td> v </td>
        </tr>
        <tr>
            <td> DailyMotion </td>
            <td> dm </td>
        </tr>
        <tr>
            <td> Local mp3 audio </td>
            <td> local_a </td>
        </tr>
        <tr>
            <td> Internet Archive audio </td>
            <td> iaa </td>
        </tr>
        <tr>
            <td> AudioBoom </td>
            <td> ab </td>
        </tr>
        <tr>
            <td> IndieSound </td>
            <td> is </td>
        </tr>
        <tr>
            <td> SoundCloud </td>
            <td> sc </td>
        </tr>
</table>


2. Insert the id of the media file in the `media` attribute. The id can normally be found in the url of the video. For example:

* For a Vimeo address such as https://vimeo.com/336049258, the video id is `336049258`
* For a YouTube address such as https://www.youtube.com/watch?v=zlZTghhCuxg, the video id is `zlZTghhCuxg`

3. Use the `title` attribute should you wish to have a descriptive text in the GDPR container. This text is replaced by the `embed` container once the cookie for the particular provider is accepted.

4. The `url` attribute is only used for services like Soundcloud where the media id does not appear in the url of the page that hosts the media file.

##  Examples

1. Embed on vimeo 

`<txp::media from="v" media="336049258" title="My awesome video" />`

Resulting code before cookie is accepted

	<div class="gdpr">
		<p>My awesome video</p>
		<p>Hosted by Vimeo on <a rel="external noopener" href="https://vimeo.com/336049258">vimeo.com/336049258</a>.</p>
		<p><a rel="external noopener" href="https://vimeo.com/privacy">Vimeo&#8217;s private policy</a>.</p>
		<p class="accept"><a rel="nofollow" href="?My_Site_vimeo_cookie=yes#m_336049258">View it here</a></p>
	</div>

Resulting code after cookie is accepted

	<div class="embed-container" id="m_336049258"><iframe src="https://player.vimeo.com/video/336049258?title=0&amp;byline=0&amp;portrait=0" allowfullscreen></iframe></div>


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

        <div class="embed-container" id="<txp:yield name="media" />">
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

The resulting code after the cookie is selected is the same as the one in the second example.

## Support

I can answer any questions about this shortcode on https://forum.textpattern.com/viewtopic.php?pid=324388
