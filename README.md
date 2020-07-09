# txp-media-shortcode Introduction

This textpattern shortcode draws inspiration from [Nicolas Morand's](https://github.com/NicolasGraph) oui_player plugin and tries to produce similar results using textapattern's native tags but also make the players [GDPR](https://gdpr-info.eu/) compliant. 

## Dependencies 

* [Textpattern 4.7+](https://textpattern.com/)
* [oui_cookie](https://forum.textpattern.com/viewtopic.php?id=47048)

## Installing

1. Copy the latest txp snippet from the [GitHub project page](https://github.com/colak/txp-media-shortcode/blob/master/media.tpl), 
2. Create a new miscellanious form in your Textpattern administration interface and name it 'media',
3. Paste the code into the form administration and save.

## Usage

To embed the media, use `==<txp::media from="xxx" media="yyy" txt="my text here" />==` in your articles. Replace `xxx` and `yyy' as appropriate. 

## Attributes

For hosting providers use the from attribute as follows

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
            <td> c </td>
            <td> d </td>
        </tr>

</table>

