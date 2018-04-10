<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html>
<html b:version='2' class='v2' expr:dir='data:blog.languageDirection' expr:lang='data:blog.locale' xmlns='http://www.w3.org/1999/xhtml' xmlns:b='http://www.google.com/2005/gml/b' xmlns:data='http://www.google.com/2005/gml/data' xmlns:expr='http://www.google.com/2005/gml/expr'>
  <head>
    <meta expr:content='data:blog.isMobile         ? &quot;width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0&quot;         : &quot;width=1100&quot;' name='viewport'/>
    <b:include data='blog' name='all-head-content'/>
    <title><data:blog.pageTitle/></title>

    <b:skin><![CDATA[/*-----------------------------------------------

Blogger Template Style
Name:     Picture Window
Designer: Blogger
URL:      www.blogger.com
----------------------------------------------- */

/* Variable definitions
   ====================
   <Variable name="keycolor" description="Main Color" type="color" default="#1a222a" value="#992211"/>
   <Variable name="body.background" description="Body Background" type="background"
       color="$(body.background.color)" default="#111111 url(//themes.googleusercontent.com/image?id=1OACCYOE0-eoTRTfsBuX1NMN9nz599ufI1Jh0CggPFA_sK80AGkIr8pLtYRpNUKPmwtEa) repeat-x fixed top center" value="#dddddd url(//themes.googleusercontent.com/image?id=1fupio4xM9eVxyr-k5QC5RiCJlYR35r9dXsp63RKsKt64v33poi2MvnjkX_1MULBY8BsT) repeat-x fixed bottom center"/>

   <Group description="Page Text" selector="body">
     <Variable name="body.font" description="Font" type="font"
         default="normal normal 15px Arial, Tahoma, Helvetica, FreeSans, sans-serif" value="normal normal 15px Arial, Tahoma, Helvetica, FreeSans, sans-serif"/>
     <Variable name="body.text.color" description="Text Color" type="color" default="#333333" value="#333333"/>
   </Group>

   <Group description="Backgrounds" selector=".body-fauxcolumns-outer">
     <Variable name="body.background.color" description="Outer Background" type="color" default="#296695" value="#dddddd"/>
     <Variable name="header.background.color" description="Header Background" type="color" default="transparent" value="#992211"/>
     <Variable name="post.background.color" description="Post Background" type="color" default="#ffffff" value="#ffffff"/>
   </Group>

   <Group description="Links" selector=".main-outer">
     <Variable name="link.color" description="Link Color" type="color" default="#336699" value="#992211"/>
     <Variable name="link.visited.color" description="Visited Color" type="color" default="#6699cc" value="#771100"/>
     <Variable name="link.hover.color" description="Hover Color" type="color" default="#33aaff" value="#cc4411"/>
   </Group>

   <Group description="Blog Title" selector=".header h1">
     <Variable name="header.font" description="Title Font" type="font"
         default="normal normal 36px Arial, Tahoma, Helvetica, FreeSans, sans-serif" value="normal normal 36px Arial, Tahoma, Helvetica, FreeSans, sans-serif"/>
     <Variable name="header.text.color" description="Text Color" type="color" default="#ffffff"  value="#ffffff"/>
   </Group>

   <Group description="Tabs Text" selector=".tabs-inner .widget li a">
     <Variable name="tabs.font" description="Font" type="font"
         default="normal normal 15px Arial, Tahoma, Helvetica, FreeSans, sans-serif" value="normal normal 15px Arial, Tahoma, Helvetica, FreeSans, sans-serif"/>
     <Variable name="tabs.text.color" description="Text Color" type="color" default="#ffffff" value="#992211"/>
     <Variable name="tabs.selected.text.color" description="Selected Color" type="color" default="$(link.color)" value="#000000"/>
   </Group>

   <Group description="Tabs Background" selector=".tabs-outer .PageList">
     <Variable name="tabs.background.color" description="Background Color" type="color" default="transparent" value="#f5f5f5"/>
     <Variable name="tabs.selected.background.color" description="Selected Color" type="color" default="transparent" value="#ffffff"/>
     <Variable name="tabs.separator.color" description="Separator Color" type="color" default="transparent" value="#cccccc"/>
   </Group>

   <Group description="Post Title" selector="h3.post-title, .comments h4">
     <Variable name="post.title.font" description="Title Font" type="font"
         default="normal normal 18px Arial, Tahoma, Helvetica, FreeSans, sans-serif" value="normal normal 18px Arial, Tahoma, Helvetica, FreeSans, sans-serif"/>
   </Group>

   <Group description="Date Header" selector=".date-header">
     <Variable name="date.header.color" description="Text Color" type="color" default="$(body.text.color)" value="#333333"/>
   </Group>

   <Group description="Post" selector=".post">
     <Variable name="post.footer.text.color" description="Footer Text Color" type="color" default="#999999" value="#999999"/>
     <Variable name="post.border.color" description="Border Color" type="color" default="#dddddd" value="#dddddd"/>
   </Group>

   <Group description="Gadgets" selector="h2">
     <Variable name="widget.title.font" description="Title Font" type="font"
        default="bold normal 13px Arial, Tahoma, Helvetica, FreeSans, sans-serif" value="bold normal 13px Arial, Tahoma, Helvetica, FreeSans, sans-serif"/>
     <Variable name="widget.title.text.color" description="Title Color" type="color" default="#888888" value="#666666"/>
   </Group>

   <Group description="Footer" selector=".footer-outer">
     <Variable name="footer.text.color" description="Text Color" type="color" default="#cccccc" value="#eeeeee"/>
     <Variable name="footer.widget.title.text.color" description="Gadget Title Color" type="color" default="#aaaaaa" value="#bbbbbb"/>
   </Group>

   <Group description="Footer Links" selector=".footer-outer">
     <Variable name="footer.link.color" description="Link Color" type="color" default="#99ccee" value="#ffffdd"/>
     <Variable name="footer.link.visited.color" description="Visited Color" type="color" default="#77aaee" value="#cccc99"/>
     <Variable name="footer.link.hover.color" description="Hover Color" type="color" default="#33aaff" value="#ffffff"/>
   </Group>

   <Variable name="content.margin" description="Content Margin Top" type="length" default="20px" min="0" max="100px" value="30px"/>
   <Variable name="content.padding" description="Content Padding" type="length" default="0" min="0" max="100px" value="15px"/>
   <Variable name="content.background" description="Content Background" type="background"
       default="transparent none repeat scroll top left" value="transparent url(https://resources.blogblog.com/blogblog/data/1kt/transparent/white80.png) repeat scroll top left"/>
   <Variable name="content.border.radius" description="Content Border Radius" type="length" default="0" min="0" max="100px" value="15px"/>
   <Variable name="content.shadow.spread" description="Content Shadow Spread" type="length" default="0" min="0" max="100px" value="3px"/>

   <Variable name="header.padding" description="Header Padding" type="length" default="0" min="0" max="100px" value="30px"/>
   <Variable name="header.background.gradient" description="Header Gradient" type="url"
       default="none" value="url(https://resources.blogblog.com/blogblog/data/1kt/transparent/header_gradient_shade.png)"/>
   <Variable name="header.border.radius" description="Header Border Radius" type="length" default="0" min="0" max="100px" value="10px"/>

   <Variable name="main.border.radius.top" description="Main Border Radius" type="length" default="20px" min="0" max="100px" value="0"/>
   <Variable name="footer.border.radius.top" description="Footer Border Radius Top" type="length" default="0" min="0" max="100px" value="10px"/>
   <Variable name="footer.border.radius.bottom" description="Footer Border Radius Bottom" type="length" default="20px" min="0" max="100px" value="10px"/>
   <Variable name="region.shadow.spread" description="Main and Footer Shadow Spread" type="length" default="3px" min="0" max="100px" value="0"/>
   <Variable name="region.shadow.offset" description="Main and Footer Shadow Offset" type="length" default="1px" min="-50px" max="50px" value="0"/>

   <Variable name="tabs.background.gradient" description="Tab Background Gradient" type="url" default="none" value="url(https://resources.blogblog.com/blogblog/data/1kt/transparent/tabs_gradient_shade.png)"/>
   <Variable name="tab.selected.background.gradient" description="Selected Tab Background" type="url"
       default="url(https://resources.blogblog.com/blogblog/data/1kt/transparent/white80.png)" value="url(https://resources.blogblog.com/blogblog/data/1kt/transparent/tabs_gradient_shade.png)"/>
   <Variable name="tab.background" description="Tab Background" type="background"
       default="transparent url(https://resources.blogblog.com/blogblog/data/1kt/transparent/black50.png) repeat scroll top left" value="transparent none no-repeat scroll top left"/>

   <Variable name="tab.border.radius" description="Tab Border Radius" type="length" default="10px" min="0" max="100px" value="0"/>
   <Variable name="tab.first.border.radius" description="First Tab Border Radius" type="length" default="10px" min="0" max="100px" value="10px"/>
   <Variable name="tabs.border.radius" description="Tabs Border Radius" type="length" default="0" min="0" max="100px" value="10px"/>

   <Variable name="tabs.spacing" description="Tab Spacing" type="length" default=".25em" min="0" max="10em" value="0"/>
   <Variable name="tabs.margin.bottom" description="Tab Margin Bottom" type="length" default="0" min="0" max="100px" value="0"/>
   <Variable name="tabs.margin.sides" description="Tab Margin Sides" type="length" default="20px" min="0" max="100px" value="0"/>

   <Variable name="main.background" description="Main Background" type="background"
       default="transparent url(https://resources.blogblog.com/blogblog/data/1kt/transparent/white80.png) repeat scroll top left" value="transparent none repeat scroll top center"/>
   <Variable name="main.padding.sides" description="Main Padding Sides" type="length" default="20px" min="0" max="100px" value="5px"/>

   <Variable name="footer.background" description="Footer Background" type="background"
       default="transparent url(https://resources.blogblog.com/blogblog/data/1kt/transparent/black50.png) repeat scroll top left" value="transparent url(https://resources.blogblog.com/blogblog/data/1kt/transparent/black50.png) repeat scroll top left"/>

   <Variable name="post.margin.sides" description="Post Margin Sides" type="length" default="-20px" min="-50px" max="50px" value="-20px"/>
   <Variable name="post.border.radius" description="Post Border Radius" type="length" default="5px" min="0" max="100px" value="10px"/>
   <Variable name="widget.title.text.transform" description="Widget Title Text Transform" type="string" default="uppercase" value="uppercase"/>

   <Variable name="mobile.background.overlay" description="Mobile Background Overlay" type="string"
       default="transparent none repeat scroll top left" value="transparent none repeat scroll top left"/>

   <Variable name="startSide" description="Side where text starts in blog language" type="automatic" default="left"/>
   <Variable name="endSide" description="Side where text ends in blog language" type="automatic" default="right"/>
*/

/* Content
----------------------------------------------- */
body {
  font: $(body.font);
  color: $(body.text.color);
  background: $(body.background);
}

html body .region-inner {
  min-width: 0;
  max-width: 100%;
  width: auto;
}

.content-outer {
  font-size: 90%;
}

a:link {
  text-decoration:none;
  color: $(link.color);
}

a:visited {
  text-decoration:none;
  color: $(link.visited.color);
}

a:hover {
  text-decoration:underline;
  color: $(link.hover.color);
}

.content-outer {
  background: $(content.background);

  -moz-border-radius: $(content.border.radius);
  -webkit-border-radius: $(content.border.radius);
  -goog-ms-border-radius: $(content.border.radius);
  border-radius: $(content.border.radius);

  -moz-box-shadow: 0 0 $(content.shadow.spread) rgba(0, 0, 0, .15);
  -webkit-box-shadow: 0 0 $(content.shadow.spread) rgba(0, 0, 0, .15);
  -goog-ms-box-shadow: 0 0 $(content.shadow.spread) rgba(0, 0, 0, .15);
  box-shadow: 0 0 $(content.shadow.spread) rgba(0, 0, 0, .15);

  margin: $(content.margin) auto;
}

.content-inner {
  padding: $(content.padding);
}

/* Header
----------------------------------------------- */
.header-outer {
  background: $(header.background.color) $(header.background.gradient) repeat-x scroll top left;
  _background-image: none;

  color: $(header.text.color);

  -moz-border-radius: $(header.border.radius);
  -webkit-border-radius: $(header.border.radius);
  -goog-ms-border-radius: $(header.border.radius);
  border-radius: $(header.border.radius);
}

.Header img, .Header #header-inner {
  -moz-border-radius: $(header.border.radius);
  -webkit-border-radius: $(header.border.radius);
  -goog-ms-border-radius: $(header.border.radius);
  border-radius: $(header.border.radius);
}

.header-inner .Header .titlewrapper,
.header-inner .Header .descriptionwrapper {
  padding-left: $(header.padding);
  padding-right: $(header.padding);
}

.Header h1 {
  font: $(header.font);
  text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.3);
}

.Header h1 a {
  color: $(header.text.color);
}

.Header .description {
  font-size: 130%;
}

/* Tabs
----------------------------------------------- */
.tabs-inner {
  margin: .5em $(tabs.margin.sides) $(tabs.margin.bottom);
  padding: 0;
}

.tabs-inner .section {
  margin: 0;
}

.tabs-inner .widget ul {
  padding: 0;

  background: $(tabs.background.color) $(tabs.background.gradient) repeat scroll bottom;

  -moz-border-radius: $(tabs.border.radius);
  -webkit-border-radius: $(tabs.border.radius);
  -goog-ms-border-radius: $(tabs.border.radius);
  border-radius: $(tabs.border.radius);
}

.tabs-inner .widget li {
  border: none;
}

.tabs-inner .widget li a {
  display: inline-block;

  padding: .5em 1em;
  margin-$endSide: $(tabs.spacing);

  color: $(tabs.text.color);
  font: $(tabs.font);

  -moz-border-radius: $(tab.border.radius) $(tab.border.radius) 0 0;
  -webkit-border-top-left-radius: $(tab.border.radius);
  -webkit-border-top-right-radius: $(tab.border.radius);
  -goog-ms-border-radius: $(tab.border.radius) $(tab.border.radius) 0 0;
  border-radius: $(tab.border.radius) $(tab.border.radius) 0 0;

  background: $(tab.background);

  border-$endSide: 1px solid $(tabs.separator.color);
}

.tabs-inner .widget li:first-child a {
  padding-$startSide: 1.25em;

  -moz-border-radius-top$startSide: $(tab.first.border.radius);
  -moz-border-radius-bottom$startSide: $(tabs.border.radius);
  -webkit-border-top-$startSide-radius: $(tab.first.border.radius);
  -webkit-border-bottom-$startSide-radius: $(tabs.border.radius);
  -goog-ms-border-top-$startSide-radius: $(tab.first.border.radius);
  -goog-ms-border-bottom-$startSide-radius: $(tabs.border.radius);
  border-top-$startSide-radius: $(tab.first.border.radius);
  border-bottom-$startSide-radius: $(tabs.border.radius);
}

.tabs-inner .widget li.selected a,
.tabs-inner .widget li a:hover {
  position: relative;
  z-index: 1;

  background: $(tabs.selected.background.color) $(tab.selected.background.gradient) repeat scroll bottom;
  color: $(tabs.selected.text.color);

  -moz-box-shadow: 0 0 $(region.shadow.spread) rgba(0, 0, 0, .15);
  -webkit-box-shadow: 0 0 $(region.shadow.spread) rgba(0, 0, 0, .15);
  -goog-ms-box-shadow: 0 0 $(region.shadow.spread) rgba(0, 0, 0, .15);
  box-shadow: 0 0 $(region.shadow.spread) rgba(0, 0, 0, .15);
}

/* Headings
----------------------------------------------- */
h2 {
  font: $(widget.title.font);
  text-transform: $(widget.title.text.transform);
  color: $(widget.title.text.color);
  margin: .5em 0;
}

/* Main
----------------------------------------------- */
.main-outer {
  background: $(main.background);

  -moz-border-radius: $(main.border.radius.top) $(main.border.radius.top) 0 0;
  -webkit-border-top-left-radius: $(main.border.radius.top);
  -webkit-border-top-right-radius: $(main.border.radius.top);
  -webkit-border-bottom-left-radius: 0;
  -webkit-border-bottom-right-radius: 0;
  -goog-ms-border-radius: $(main.border.radius.top) $(main.border.radius.top) 0 0;
  border-radius: $(main.border.radius.top) $(main.border.radius.top) 0 0;

  -moz-box-shadow: 0 $(region.shadow.offset) $(region.shadow.spread) rgba(0, 0, 0, .15);
  -webkit-box-shadow: 0 $(region.shadow.offset) $(region.shadow.spread) rgba(0, 0, 0, .15);
  -goog-ms-box-shadow: 0 $(region.shadow.offset) $(region.shadow.spread) rgba(0, 0, 0, .15);
  box-shadow: 0 $(region.shadow.offset) $(region.shadow.spread) rgba(0, 0, 0, .15);
}

.main-inner {
  padding: 15px $(main.padding.sides) 20px;
}

.main-inner .column-center-inner {
  padding: 0 0;
}

.main-inner .column-left-inner {
  padding-left: 0;
}

.main-inner .column-right-inner {
  padding-right: 0;
}

/* Posts
----------------------------------------------- */
h3.post-title {
  margin: 0;
  font: $(post.title.font);
}

.comments h4 {
  margin: 1em 0 0;
  font: $(post.title.font);
}

.date-header span {
  color: $(date.header.color);
}

.post-outer {
  background-color: $(post.background.color);
  border: solid 1px $(post.border.color);

  -moz-border-radius: $(post.border.radius);
  -webkit-border-radius: $(post.border.radius);
  border-radius: $(post.border.radius);
  -goog-ms-border-radius: $(post.border.radius);

  padding: 15px 20px;
  margin: 0 $(post.margin.sides) 20px;
}

.post-body {
  line-height: 1.4;
  font-size: 110%;
  position: relative;
}

.post-header {
  margin: 0 0 1.5em;

  color: $(post.footer.text.color);
  line-height: 1.6;
}

.post-footer {
  margin: .5em 0 0;

  color: $(post.footer.text.color);
  line-height: 1.6;
}

#blog-pager {
  font-size: 140%
}

#comments .comment-author {
  padding-top: 1.5em;

  border-top: dashed 1px #ccc;
  border-top: dashed 1px rgba(128, 128, 128, .5);

  background-position: 0 1.5em;
}

#comments .comment-author:first-child {
  padding-top: 0;

  border-top: none;
}

.avatar-image-container {
  margin: .2em 0 0;
}

/* Comments
----------------------------------------------- */
.comments .comments-content .icon.blog-author {
  background-repeat: no-repeat;
  background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASCAYAAABWzo5XAAAAAXNSR0IArs4c6QAAAAZiS0dEAP8A/wD/oL2nkwAAAAlwSFlzAAALEgAACxIB0t1+/AAAAAd0SU1FB9sLFwMeCjjhcOMAAAD+SURBVDjLtZSvTgNBEIe/WRRnm3U8RC1neQdsm1zSBIU9VVF1FkUguQQsD9ITmD7ECZIJSE4OZo9stoVjC/zc7ky+zH9hXwVwDpTAWWLrgS3QAe8AZgaAJI5zYAmc8r0G4AHYHQKVwII8PZrZFsBFkeRCABYiMh9BRUhnSkPTNCtVXYXURi1FpBDgArj8QU1eVXUzfnjv7yP7kwu1mYrkWlU33vs1QNu2qU8pwN0UpKoqokjWwCztrMuBhEhmh8bD5UDqur75asbcX0BGUB9/HAMB+r32hznJgXy2v0sGLBcyAJ1EK3LFcbo1s91JeLwAbwGYu7TP/3ZGfnXYPgAVNngtqatUNgAAAABJRU5ErkJggg==);
}

.comments .comments-content .loadmore a {
  border-top: 1px solid $(link.hover.color);
  border-bottom: 1px solid $(link.hover.color);
}

.comments .continue {
  border-top: 2px solid $(link.hover.color);
}

/* Widgets
----------------------------------------------- */
.widget ul, .widget #ArchiveList ul.flat {
  padding: 0;
  list-style: none;
}

.widget ul li, .widget #ArchiveList ul.flat li {
  border-top: dashed 1px #ccc;
  border-top: dashed 1px rgba(128, 128, 128, .5);
}

.widget ul li:first-child, .widget #ArchiveList ul.flat li:first-child {
  border-top: none;
}

.widget .post-body ul {
  list-style: disc;
}

.widget .post-body ul li {
  border: none;
}

/* Footer
----------------------------------------------- */
.footer-outer {
  color:$(footer.text.color);
  background: $(footer.background);

  -moz-border-radius: $(footer.border.radius.top) $(footer.border.radius.top) $(footer.border.radius.bottom) $(footer.border.radius.bottom);
  -webkit-border-top-left-radius: $(footer.border.radius.top);
  -webkit-border-top-right-radius: $(footer.border.radius.top);
  -webkit-border-bottom-left-radius: $(footer.border.radius.bottom);
  -webkit-border-bottom-right-radius: $(footer.border.radius.bottom);
  -goog-ms-border-radius: $(footer.border.radius.top) $(footer.border.radius.top) $(footer.border.radius.bottom) $(footer.border.radius.bottom);
  border-radius: $(footer.border.radius.top) $(footer.border.radius.top) $(footer.border.radius.bottom) $(footer.border.radius.bottom);

  -moz-box-shadow: 0 $(region.shadow.offset) $(region.shadow.spread) rgba(0, 0, 0, .15);
  -webkit-box-shadow: 0 $(region.shadow.offset) $(region.shadow.spread) rgba(0, 0, 0, .15);
  -goog-ms-box-shadow: 0 $(region.shadow.offset) $(region.shadow.spread) rgba(0, 0, 0, .15);
  box-shadow: 0 $(region.shadow.offset) $(region.shadow.spread) rgba(0, 0, 0, .15);
}

.footer-inner {
  padding: 10px $(main.padding.sides) 20px;
}

.footer-outer a {
  color: $(footer.link.color);
}

.footer-outer a:visited {
  color: $(footer.link.visited.color);
}

.footer-outer a:hover {
  color: $(footer.link.hover.color);
}

.footer-outer .widget h2 {
  color: $(footer.widget.title.text.color);
}

/* Mobile
----------------------------------------------- */
html body.mobile {
  height: auto;
}

html body.mobile {
  min-height: 480px;
  background-size: 100% auto;
}

.mobile .body-fauxcolumn-outer {
  background: $(mobile.background.overlay);
}

html .mobile .mobile-date-outer, html .mobile .blog-pager {
  border-bottom: none;
  background: $(main.background);
  margin-bottom: 10px;
}

.mobile .date-outer {
  background: $(main.background);
}

.mobile .header-outer, .mobile .main-outer,
.mobile .post-outer, .mobile .footer-outer {
  -moz-border-radius: 0;
  -webkit-border-radius: 0;
  -goog-ms-border-radius: 0;
  border-radius: 0;
}

.mobile .content-outer,
.mobile .main-outer,
.mobile .post-outer {
  background: inherit;
  border: none;
}

.mobile .content-outer {
  font-size: 100%;
}

.mobile-link-button {
  background-color: $(link.color);
}

.mobile-link-button a:link, .mobile-link-button a:visited {
  color: $(post.background.color);
}

.mobile-index-contents {
  color: $(body.text.color);
}

.mobile .tabs-inner .PageList .widget-content {
  background: $(tabs.selected.background.color) $(tab.selected.background.gradient) repeat scroll bottom;
  color: $(tabs.selected.text.color);
}

.mobile .tabs-inner .PageList .widget-content .pagelist-arrow {
  border-$startSide: 1px solid $(tabs.separator.color);
}
]]></b:skin>

    <b:template-skin>
      <b:variable default='960px' name='content.width' type='length'/>
      <b:variable default='0' name='main.column.left.width' type='length'/>
      <b:variable default='310px' name='main.column.right.width' type='length'/>

      <![CDATA[
      body {
        min-width: $(content.width);
      }

      .content-outer, .content-fauxcolumn-outer, .region-inner {
        min-width: $(content.width);
        max-width: $(content.width);
        _width: $(content.width);
      }

      .main-inner .columns {
        padding-left: $(main.column.left.width);
        padding-right: $(main.column.right.width);
      }

      .main-inner .fauxcolumn-center-outer {
        left: $(main.column.left.width);
        right: $(main.column.right.width);
        /* IE6 does not respect left and right together */
        _width: expression(this.parentNode.offsetWidth -
            parseInt("$(main.column.left.width)") -
            parseInt("$(main.column.right.width)") + 'px');
      }

      .main-inner .fauxcolumn-left-outer {
        width: $(main.column.left.width);
      }

      .main-inner .fauxcolumn-right-outer {
        width: $(main.column.right.width);
      }

      .main-inner .column-left-outer {
        width: $(main.column.left.width);
        right: 100%;
        margin-left: -$(main.column.left.width);
      }

      .main-inner .column-right-outer {
        width: $(main.column.right.width);
        margin-right: -$(main.column.right.width);
      }

      #layout {
        min-width: 0;
      }

      #layout .content-outer {
        min-width: 0;
        width: 800px;
      }

      #layout .region-inner {
        min-width: 0;
        width: auto;
      }

      body#layout div.add_widget {
        padding: 8px;
      }

      body#layout div.add_widget a {
        margin-left: 32px;
      }
      ]]>
    </b:template-skin>

    <b:if cond='data:skin.vars.body_background.image.isResizable'>
      <b:include cond='not data:view.isPreview' data='{                          image: data:skin.vars.body_background.image,                          selector: &quot;body&quot;                        }' name='responsiveImageStyle'/>
    </b:if>

    <b:include data='blog' name='google-analytics'/>
  </head>

  <body expr:class='&quot;loading&quot; + data:blog.mobileClass'>
  <b:section class='navbar' id='navbar' maxwidgets='1' name='Navbar' showaddelement='no'>
    <b:widget id='Navbar1' locked='true' title='Barra de navegación' type='Navbar'>
      <b:includable id='main'>&lt;script type=&quot;text/javascript&quot;&gt;
    function setAttributeOnload(object, attribute, val) {
      if(window.addEventListener) {
        window.addEventListener(&#39;load&#39;,
          function(){ object[attribute] = val; }, false);
      } else {
        window.attachEvent(&#39;onload&#39;, function(){ object[attribute] = val; });
      }
    }
  &lt;/script&gt;
&lt;div id=&quot;navbar-iframe-container&quot;&gt;&lt;/div&gt;
&lt;script type=&quot;text/javascript&quot; src=&quot;https://apis.google.com/js/plusone.js&quot;&gt;&lt;/script&gt;
&lt;script type=&quot;text/javascript&quot;&gt;
      gapi.load(&quot;gapi.iframes:gapi.iframes.style.bubble&quot;, function() {
        if (gapi.iframes &amp;&amp; gapi.iframes.getContext) {
          gapi.iframes.getContext().openChild({
              url: &#39;https://www.blogger.com/navbar.g?targetBlogID\x3d2868695616379928767\x26blogName\x3dKurtTv\x26publishMode\x3dPUBLISH_MODE_BLOGSPOT\x26navbarType\x3dLIGHT\x26layoutType\x3dLAYOUTS\x26searchRoot\x3dhttps://popeye17tv.blogspot.com/search\x26blogLocale\x3des\x26v\x3d2\x26homepageUrl\x3dhttps://popeye17tv.blogspot.com/\x26vt\x3d-8638050702490764470&#39;,
              where: document.getElementById(&quot;navbar-iframe-container&quot;),
              id: &quot;navbar-iframe&quot;
          });
        }
      });
    &lt;/script&gt;&lt;script type=&quot;text/javascript&quot;&gt;
(function() {
var script = document.createElement(&#39;script&#39;);
script.type = &#39;text/javascript&#39;;
script.src = &#39;//pagead2.googlesyndication.com/pagead/js/google_top_exp.js&#39;;
var head = document.getElementsByTagName(&#39;head&#39;)[0];
if (head) {
head.appendChild(script);
}})();
&lt;/script&gt;
</b:includable>
    </b:widget>
  </b:section>

  <b:if cond='data:blog.pageType == &quot;index&quot;'>
    <div itemscope='itemscope' itemtype='http://schema.org/Blog' style='display: none;'>
      <meta expr:content='data:blog.title' itemprop='name'/>
      <b:if cond='data:blog.metaDescription'>
        <meta expr:content='data:blog.metaDescription' itemprop='description'/>
      </b:if>
    </div>
  </b:if>

  <div class='body-fauxcolumns'>
    <div class='fauxcolumn-outer body-fauxcolumn-outer'>
    <div class='cap-top'>
      <div class='cap-left'/>
      <div class='cap-right'/>
    </div>
    <div class='fauxborder-left'>
    <div class='fauxborder-right'/>
    <div class='fauxcolumn-inner'>
    </div>
    </div>
    <div class='cap-bottom'>
      <div class='cap-left'/>
      <div class='cap-right'/>
    </div>
    </div>
  </div>

  <div class='content'>
  <div class='content-fauxcolumns'>
    <div class='fauxcolumn-outer content-fauxcolumn-outer'>
    <div class='cap-top'>
      <div class='cap-left'/>
      <div class='cap-right'/>
    </div>
    <div class='fauxborder-left'>
    <div class='fauxborder-right'/>
    <div class='fauxcolumn-inner'>
    </div>
    </div>
    <div class='cap-bottom'>
      <div class='cap-left'/>
      <div class='cap-right'/>
    </div>
    </div>
  </div>

  <div class='content-outer'>
  <div class='content-cap-top cap-top'>
    <div class='cap-left'/>
    <div class='cap-right'/>
  </div>
  <div class='fauxborder-left content-fauxborder-left'>
  <div class='fauxborder-right content-fauxborder-right'/>
  <div class='content-inner'>

    <header>
    <div class='header-outer'>
    <div class='header-cap-top cap-top'>
      <div class='cap-left'/>
      <div class='cap-right'/>
    </div>
    <div class='fauxborder-left header-fauxborder-left'>
    <div class='fauxborder-right header-fauxborder-right'/>
    <div class='region-inner header-inner'>
      <b:section class='header' id='header' maxwidgets='1' name='Header' showaddelement='no'>
        <b:widget id='Header1' locked='true' title='KurtTv (cabecera)' type='Header'>
          <b:widget-settings>
            <b:widget-setting name='displayUrl'/>
            <b:widget-setting name='displayHeight'>0</b:widget-setting>
            <b:widget-setting name='sectionWidth'>-1</b:widget-setting>
            <b:widget-setting name='useImage'>false</b:widget-setting>
            <b:widget-setting name='shrinkToFit'>false</b:widget-setting>
            <b:widget-setting name='imagePlacement'>BEHIND</b:widget-setting>
            <b:widget-setting name='displayWidth'>0</b:widget-setting>
          </b:widget-settings>
          <b:includable id='main'>

  <b:if cond='data:useImage'>
    <b:if cond='data:imagePlacement == &quot;BEHIND&quot;'>
      <!--
      Show image as background to text. You can't really calculate the width
      reliably in JS because margins are not taken into account by any of
      clientWidth, offsetWidth or scrollWidth, so we don't force a minimum
      width if the user is using shrink to fit.
      This results in a margin-width's worth of pixels being cropped. If the
      user is not using shrink to fit then we expand the header.
      -->
      <b:if cond='data:mobile'>
        <div id='header-inner'>
          <div class='titlewrapper' style='background: transparent'>
            <h1 class='title' style='background: transparent; border-width: 0px'>
              <b:include name='title'/>
            </h1>
          </div>
          <b:include name='description'/>
        </div>
      <b:else/>
        <div expr:style='&quot;background-image: url(\&quot;&quot; + data:sourceUrl + &quot;\&quot;); &quot;                      + &quot;background-position: &quot;                      + data:backgroundPositionStyleStr + &quot;; &quot;                      + data:widthStyleStr                      + &quot;min-height: &quot; + data:height                      + &quot;_height: &quot; + data:height                      + &quot;background-repeat: no-repeat; &quot;' id='header-inner'>
          <div class='titlewrapper' style='background: transparent'>
            <h1 class='title' style='background: transparent; border-width: 0px'>
              <b:include name='title'/>
            </h1>
          </div>
          <b:include name='description'/>
        </div>
      </b:if>
    <b:else/>
      <!--Show the image only-->
      <div id='header-inner'>
        <a expr:href='data:blog.homepageUrl' style='display: block'>
          <img expr:alt='data:title' expr:height='data:height' expr:id='data:widget.instanceId + &quot;_headerimg&quot;' expr:src='data:sourceUrl' expr:width='data:width' style='display: block'/>
        </a>
        <!--Show the description-->
        <b:if cond='data:imagePlacement == &quot;BEFORE_DESCRIPTION&quot;'>
          <b:include name='description'/>
        </b:if>
      </div>
    </b:if>
  <b:else/>
    <!--No header image -->
    <div id='header-inner'>
      <div class='titlewrapper'>
        <h1 class='title'>
          <b:include name='title'/>
        </h1>
      </div>
      <b:include name='description'/>
    </div>
  </b:if>
</b:includable>
          <b:includable id='description'>
  <div class='descriptionwrapper'>
    <p class='description'><span><data:description/></span></p>
  </div>
</b:includable>
          <b:includable id='title'>
  <b:tag cond='data:blog.url != data:blog.homepageUrl' expr:href='data:blog.homepageUrl' name='a'>
    <data:title/>
  </b:tag>
</b:includable>
        </b:widget>
      </b:section>
    </div>
    </div>
    <div class='header-cap-bottom cap-bottom'>
      <div class='cap-left'/>
      <div class='cap-right'/>
    </div>
    </div>
    </header>

    <div class='tabs-outer'>
    <div class='tabs-cap-top cap-top'>
      <div class='cap-left'/>
      <div class='cap-right'/>
    </div>
    <div class='fauxborder-left tabs-fauxborder-left'>
    <div class='fauxborder-right tabs-fauxborder-right'/>
    <div class='region-inner tabs-inner'>
      <b:section class='tabs' id='crosscol' maxwidgets='1' name='Cross-Column' showaddelement='yes'>
        <b:widget id='PageList1' locked='false' title='' type='PageList'>
          <b:widget-settings>
            <b:widget-setting name='pageListJson'><![CDATA[{'link0': {'href': 'http://popeye17tv.blogspot.com/2017/09/popeyetv.html', 'title': 'INICIO', 'position': 0}}]]></b:widget-setting>
            <b:widget-setting name='homeTitle'>Página principal</b:widget-setting>
          </b:widget-settings>
          <b:includable id='main'>
  <b:if cond='data:title != &quot;&quot;'><h2><data:title/></h2></b:if>
  <div class='widget-content'>
    <b:if cond='data:mobile'>
      <select expr:id='data:widget.instanceId + &quot;_select&quot;'>
        <b:loop values='data:links' var='link'>
          <option expr:value='data:link.href'>
            <b:attr cond='data:link.isCurrentPage' name='selected' value='selected'/>
            <data:link.title/>
          </option>
        </b:loop>
      </select>
      <span class='pagelist-arrow'>&amp;#9660;</span>
    <b:else/>
      <ul>
        <b:loop values='data:links' var='link'>
          <li>
            <b:class cond='data:link.isCurrentPage' name='selected'/>
            <a expr:href='data:link.href'><data:link.title/></a>
          </li>
        </b:loop>
      </ul>
    </b:if>
    <b:include name='quickedit'/>
  </div>
</b:includable>
        </b:widget>
      </b:section>
      <b:section class='tabs' id='crosscol-overflow' name='Cross-Column 2' showaddelement='no'/>
    </div>
    </div>
    <div class='tabs-cap-bottom cap-bottom'>
      <div class='cap-left'/>
      <div class='cap-right'/>
    </div>
    </div>

    <div class='main-outer'>
    <div class='main-cap-top cap-top'>
      <div class='cap-left'/>
      <div class='cap-right'/>
    </div>

    <div class='fauxborder-left main-fauxborder-left'>
    <div class='fauxborder-right main-fauxborder-right'/>
    <div class='region-inner main-inner'>

      <div class='columns fauxcolumns'>

        <div class='fauxcolumn-outer fauxcolumn-center-outer'>
        <div class='cap-top'>
          <div class='cap-left'/>
          <div class='cap-right'/>
        </div>
        <div class='fauxborder-left'>
        <div class='fauxborder-right'/>
        <div class='fauxcolumn-inner'>
        </div>
        </div>
        <div class='cap-bottom'>
          <div class='cap-left'/>
          <div class='cap-right'/>
        </div>
        </div>

        <div class='fauxcolumn-outer fauxcolumn-left-outer'>
        <div class='cap-top'>
          <div class='cap-left'/>
          <div class='cap-right'/>
        </div>
        <div class='fauxborder-left'>
        <div class='fauxborder-right'/>
        <div class='fauxcolumn-inner'>
        </div>
        </div>
        <div class='cap-bottom'>
          <div class='cap-left'/>
          <div class='cap-right'/>
        </div>
        </div>

        <div class='fauxcolumn-outer fauxcolumn-right-outer'>
        <div class='cap-top'>
          <div class='cap-left'/>
          <div class='cap-right'/>
        </div>
        <div class='fauxborder-left'>
        <div class='fauxborder-right'/>
        <div class='fauxcolumn-inner'>
        </div>
        </div>
        <div class='cap-bottom'>
          <div class='cap-left'/>
          <div class='cap-right'/>
        </div>
        </div>

        <!-- corrects IE6 width calculation -->
        <div class='columns-inner'>

        <div class='column-center-outer'>
        <div class='column-center-inner'>
          <b:section class='main' id='main' name='Main' showaddelement='no'>
            <b:widget id='Blog1' locked='true' title='Entradas del blog' type='Blog'>
              <b:widget-settings>
                <b:widget-setting name='showDateHeader'>false</b:widget-setting>
                <b:widget-setting name='style.textcolor'>#333333</b:widget-setting>
                <b:widget-setting name='showShareButtons'>false</b:widget-setting>
                <b:widget-setting name='authorLabel'>Posted by</b:widget-setting>
                <b:widget-setting name='showCommentLink'>false</b:widget-setting>
                <b:widget-setting name='style.urlcolor'>#999999</b:widget-setting>
                <b:widget-setting name='showAuthor'>false</b:widget-setting>
                <b:widget-setting name='style.linkcolor'>#992211</b:widget-setting>
                <b:widget-setting name='style.unittype'>TextAndImage</b:widget-setting>
                <b:widget-setting name='style.bgcolor'>#ffffff</b:widget-setting>
                <b:widget-setting name='timestampLabel'>on</b:widget-setting>
                <b:widget-setting name='showAuthorProfile'>false</b:widget-setting>
                <b:widget-setting name='style.layout'>1x1</b:widget-setting>
                <b:widget-setting name='showLabels'>false</b:widget-setting>
                <b:widget-setting name='showLocation'>false</b:widget-setting>
                <b:widget-setting name='showTimestamp'>false</b:widget-setting>
                <b:widget-setting name='postsPerAd'>1</b:widget-setting>
                <b:widget-setting name='showBacklinks'>false</b:widget-setting>
                <b:widget-setting name='style.bordercolor'>#ffffff</b:widget-setting>
                <b:widget-setting name='showInlineAds'>true</b:widget-setting>
                <b:widget-setting name='backlinksLabel'>Vínculos a esta publicación</b:widget-setting>
                <b:widget-setting name='showReactions'>false</b:widget-setting>
              </b:widget-settings>
              <b:includable id='main' var='top'>
  <b:if cond='!data:mobile'>
    <!-- posts -->
    <div class='blog-posts hfeed'>

      <b:include data='top' name='status-message'/>

      <b:loop values='data:posts' var='post'>
        <b:if cond='data:post.isDateStart and not data:post.isFirstPost'>
          &lt;/div&gt;&lt;/div&gt;
        </b:if>
        <b:if cond='data:post.isDateStart'>
          &lt;div class=&quot;date-outer&quot;&gt;
        </b:if>
        <b:if cond='data:post.dateHeader'>
          <h2 class='date-header'><span><data:post.dateHeader/></span></h2>
        </b:if>
        <b:if cond='data:post.isDateStart'>
          &lt;div class=&quot;date-posts&quot;&gt;
        </b:if>
        <div class='post-outer'>
          <b:include data='post' name='post'/>
          <b:include cond='data:blog.pageType in {&quot;static_page&quot;,&quot;item&quot;}' data='post' name='comment_picker'/>
        </div>

        <!-- Ad -->
        <b:if cond='data:post.includeAd'>
          <div class='inline-ad'>
            <data:adCode/>
          </div>
        </b:if>
      </b:loop>
      <b:if cond='data:numPosts != 0'>
        &lt;/div&gt;&lt;/div&gt;
      </b:if>
    </div>

    <!-- navigation -->
    <b:include name='nextprev'/>

    <!-- feed links -->
    <b:include name='feedLinks'/>

  <b:else/>
    <b:include name='mobile-main'/>
  </b:if>

  <b:include cond='data:top.showPlusOne' name='googlePlusBootstrap'/>
</b:includable>
              <b:includable id='backlinkDeleteIcon' var='backlink'>
  <span expr:class='&quot;item-control &quot; + data:backlink.adminClass'>
    <a expr:href='data:backlink.deleteUrl' expr:title='data:top.deleteBacklinkMsg'>
      <img src='https://resources.blogblog.com/img/icon_delete13.gif'/>
    </a>
  </span>
</b:includable>
              <b:includable id='backlinks' var='post'>
  <a name='links'/><h4><data:post.backlinksLabel/></h4>
  <b:if cond='data:post.numBacklinks != 0'>
    <dl class='comments-block' id='comments-block'>
      <b:loop values='data:post.backlinks' var='backlink'>
        <div class='collapsed-backlink backlink-control'>
          <dt class='comment-title'>
            <span class='backlink-toggle-zippy'>&#160;</span>
            <a expr:href='data:backlink.url' rel='nofollow'><data:backlink.title/></a>
            <b:include data='backlink' name='backlinkDeleteIcon'/>
          </dt>
          <dd class='comment-body collapseable'>
            <data:backlink.snippet/>
          </dd>
          <dd class='comment-footer collapseable'>
            <span class='comment-author'><data:post.authorLabel/> <data:backlink.author/></span>
            <span class='comment-timestamp'><data:post.timestampLabel/> <data:backlink.timestamp/></span>
          </dd>
        </div>
      </b:loop>
    </dl>
  </b:if>
  <p class='comment-footer'>
    <a class='comment-link' expr:href='data:post.createLinkUrl' expr:id='data:widget.instanceId + &quot;_backlinks-create-link&quot;' target='_blank'><data:post.createLinkLabel/></a>
  </p>
</b:includable>
              <b:includable id='comment-form' var='post'>
  <div class='comment-form'>
    <a name='comment-form'/>
    <b:if cond='data:mobile'>
      <h4 id='comment-post-message'>
        <a expr:id='data:widget.instanceId + &quot;_comment-editor-toggle-link&quot;' href='javascript:void(0)'><data:postCommentMsg/></a></h4>
      <p><data:blogCommentMessage/></p>
      <data:blogTeamBlogMessage/>
      <a expr:href='data:post.commentFormIframeSrc' id='comment-editor-src'/>
      <iframe allowtransparency='true' class='blogger-iframe-colorize blogger-comment-from-post' expr:height='data:cmtIframeInitialHeight' frameborder='0' id='comment-editor' name='comment-editor' src='' style='display: none' width='100%'/>
    <b:else/>
      <h4 id='comment-post-message'><data:postCommentMsg/></h4>
      <p><data:blogCommentMessage/></p>
      <data:blogTeamBlogMessage/>
      <a expr:href='data:post.commentFormIframeSrc' id='comment-editor-src'/>
      <iframe allowtransparency='true' class='blogger-iframe-colorize blogger-comment-from-post' expr:height='data:cmtIframeInitialHeight' frameborder='0' id='comment-editor' name='comment-editor' src='' width='100%'/>
    </b:if>
    <data:post.cmtfpIframe/>
    <script type='text/javascript'>
      BLOG_CMT_createIframe(&#39;<data:post.appRpcRelayPath/>&#39;);
    </script>
  </div>
</b:includable>
              <b:includable id='commentDeleteIcon' var='comment'>
  <span expr:class='&quot;item-control &quot; + data:comment.adminClass'>
    <b:if cond='data:showCmtPopup'>
      <div class='goog-toggle-button'>
        <div class='goog-inline-block comment-action-icon'/>
      </div>
    <b:else/>
      <a class='comment-delete' expr:href='data:comment.deleteUrl' expr:title='data:top.deleteCommentMsg'>
        <img src='https://resources.blogblog.com/img/icon_delete13.gif'/>
      </a>
    </b:if>
  </span>
</b:includable>
              <b:includable id='comment_count_picker' var='post'>
  <b:if cond='data:post.commentSource == 1'>
    <span class='cmt_count_iframe_holder' expr:data-count='data:post.numComments' expr:data-onclick='data:post.addCommentOnclick' expr:data-post-url='data:post.url' expr:data-url='data:post.url.canonical.http'>
    </span>
  <b:else/>
    <a class='comment-link' expr:href='data:post.addCommentUrl' expr:onclick='data:post.addCommentOnclick'>
      <data:post.commentLabelFull/>:
    </a>
  </b:if>
</b:includable>
              <b:includable id='comment_picker' var='post'>
  <b:if cond='data:post.commentSource == 1'>
    <b:include data='post' name='iframe_comments'/>
  <b:elseif cond='data:post.showThreadedComments'/>
    <b:include data='post' name='threaded_comments'/>
  <b:else/>
    <b:include data='post' name='comments'/>
  </b:if>
</b:includable>
              <b:includable id='comments' var='post'>
  <div class='comments' id='comments'>
    <a name='comments'/>
    <b:if cond='data:post.allowComments'>
      <h4><data:post.commentLabelFull/>:</h4>

      <b:if cond='data:post.commentPagingRequired'>
        <span class='paging-control-container'>
          <b:if cond='data:post.hasOlderLinks'>
            <a expr:class='data:post.oldLinkClass' expr:href='data:post.oldestLinkUrl'><data:post.oldestLinkText/></a>
              &#160;
            <a expr:class='data:post.oldLinkClass' expr:href='data:post.olderLinkUrl'><data:post.olderLinkText/></a>
              &#160;
          </b:if>

          <data:post.commentRangeText/>

          <b:if cond='data:post.hasNewerLinks'>
            &#160;
            <a expr:class='data:post.newLinkClass' expr:href='data:post.newerLinkUrl'><data:post.newerLinkText/></a>
            &#160;
            <a expr:class='data:post.newLinkClass' expr:href='data:post.newestLinkUrl'><data:post.newestLinkText/></a>
          </b:if>
        </span>
      </b:if>

      <div expr:id='data:widget.instanceId + &quot;_comments-block-wrapper&quot;'>
        <dl expr:class='data:post.avatarIndentClass' id='comments-block'>
          <b:loop values='data:post.comments' var='comment'>
            <dt expr:class='&quot;comment-author &quot; + data:comment.authorClass' expr:id='data:comment.anchorName'>
              <b:if cond='data:comment.favicon'>
                <img expr:src='data:comment.favicon' height='16px' style='margin-bottom:-2px;' width='16px'/>
              </b:if>
              <a expr:name='data:comment.anchorName'/>
              <b:if cond='data:blog.enabledCommentProfileImages'>
                <data:comment.authorAvatarImage/>
              </b:if>
              <b:if cond='data:comment.authorUrl'>
                <a expr:href='data:comment.authorUrl' rel='nofollow'><data:comment.author/></a>
              <b:else/>
                <data:comment.author/>
              </b:if>
              <data:commentPostedByMsg/>
            </dt>
            <dd class='comment-body' expr:id='data:widget.instanceId + data:comment.cmtBodyIdPostfix'>
              <b:if cond='data:comment.isDeleted'>
                <span class='deleted-comment'><data:comment.body/></span>
              <b:else/>
                <p>
                  <data:comment.body/>
                </p>
              </b:if>
            </dd>
            <dd class='comment-footer'>
              <span class='comment-timestamp'>
                <a expr:href='data:comment.url' title='comment permalink'>
                  <data:comment.timestamp/>
                </a>
                <b:include data='comment' name='commentDeleteIcon'/>
              </span>
            </dd>
          </b:loop>
        </dl>
      </div>

      <b:if cond='data:post.commentPagingRequired'>
        <span class='paging-control-container'>
          <a expr:class='data:post.oldLinkClass' expr:href='data:post.oldestLinkUrl'>
            <data:post.oldestLinkText/>
          </a>
          <a expr:class='data:post.oldLinkClass' expr:href='data:post.olderLinkUrl'>
            <data:post.olderLinkText/>
          </a>
          &#160;
          <data:post.commentRangeText/>
          &#160;
          <a expr:class='data:post.newLinkClass' expr:href='data:post.newerLinkUrl'>
            <data:post.newerLinkText/>
          </a>
          <a expr:class='data:post.newLinkClass' expr:href='data:post.newestLinkUrl'>
            <data:post.newestLinkText/>
          </a>
        </span>
      </b:if>

      <p class='comment-footer'>
        <b:if cond='data:post.embedCommentForm'>
          <b:if cond='data:post.allowNewComments'>
            <b:include data='post' name='comment-form'/>
          <b:else/>
            <data:post.noNewCommentsText/>
          </b:if>
        <b:elseif cond='data:post.allowComments'/>
          <a expr:href='data:post.addCommentUrl' expr:onclick='data:post.addCommentOnclick'><data:postCommentMsg/></a>
        </b:if>
      </p>
    </b:if>
    <b:if cond='data:showCmtPopup'>
      <div id='comment-popup'>
        <iframe allowtransparency='true' frameborder='0' id='comment-actions' name='comment-actions' scrolling='no'>
        </iframe>
      </div>
    </b:if>

    <div id='backlinks-container'>
    <div expr:id='data:widget.instanceId + &quot;_backlinks-container&quot;'>
       <b:include cond='data:post.showBacklinks' data='post' name='backlinks'/>
    </div>
    </div>
  </div>
</b:includable>
              <b:includable id='feedLinks'>
  <b:if cond='data:blog.pageType != &quot;item&quot;'> <!-- Blog feed links -->
    <b:if cond='data:feedLinks'>
      <div class='blog-feeds'>
        <b:include data='feedLinks' name='feedLinksBody'/>
      </div>
    </b:if>

  <b:else/> <!--Post feed links -->
    <div class='post-feeds'>
      <b:loop values='data:posts' var='post'>
        <b:include cond='data:post.allowComments and data:post.feedLinks' data='post.feedLinks' name='feedLinksBody'/>
      </b:loop>
    </div>
  </b:if>
</b:includable>
              <b:includable id='feedLinksBody' var='links'>
  <div class='feed-links'>
  <data:feedLinksMsg/>
  <b:loop values='data:links' var='f'>
     <a class='feed-link' expr:href='data:f.url' expr:type='data:f.mimeType' target='_blank'><data:f.name/> (<data:f.feedType/>)</a>
  </b:loop>
  </div>
</b:includable>
              <b:includable id='iframe_comments' var='post'>

  <b:if cond='data:post.allowIframeComments'>
    <script expr:src='data:post.iframeCommentSrc' type='text/javascript'/>
    <div class='cmt_iframe_holder' expr:data-href='data:post.url.canonical' expr:data-viewtype='data:post.viewType'/>

    <b:if cond='data:post.embedCommentForm == &quot;false&quot;'>
      <a expr:href='data:post.addCommentUrl' expr:onclick='data:post.addCommentOnclick'><data:postCommentMsg/></a>
    </b:if>
  </b:if>
</b:includable>
              <b:includable id='mobile-index-post' var='post'>
  <div class='mobile-date-outer date-outer'>
    <b:if cond='data:post.dateHeader'>
      <div class='date-header'>
        <span><data:post.dateHeader/></span>
      </div>
    </b:if>

    <div class='mobile-post-outer'>
      <a expr:href='data:post.url'>
        <h3 class='mobile-index-title entry-title' itemprop='name'>
          <data:post.title/>
        </h3>

        <div class='mobile-index-arrow'>&amp;rsaquo;</div>

        <div class='mobile-index-contents'>
          <b:if cond='data:post.thumbnailUrl'>
            <div class='mobile-index-thumbnail'>
              <div class='Image'>
                <img expr:src='data:post.thumbnailUrl'/>
              </div>
            </div>
          </b:if>

          <div class='post-body'>
            <b:if cond='data:post.snippet'><data:post.snippet/></b:if>
          </div>
        </div>

        <div style='clear: both;'/>
      </a>

      <div class='mobile-index-comment'>
        <b:include cond='data:blog.pageType != &quot;static_page&quot;                          and data:post.allowComments                          and data:post.numComments != 0' data='post' name='comment_count_picker'/>
      </div>
    </div>
  </div>
</b:includable>
              <b:includable id='mobile-main' var='top'>
    <!-- posts -->
    <div class='blog-posts hfeed'>

      <b:include data='top' name='status-message'/>

      <b:if cond='data:blog.pageType == &quot;index&quot;'>
        <b:loop values='data:posts' var='post'>
          <b:include data='post' name='mobile-index-post'/>
        </b:loop>
      <b:else/>
        <b:loop values='data:posts' var='post'>
          <b:include data='post' name='mobile-post'/>
        </b:loop>
      </b:if>
    </div>

   <b:include name='mobile-nextprev'/>
</b:includable>
              <b:includable id='mobile-nextprev'>
  <div class='blog-pager' id='blog-pager'>
    <b:if cond='data:newerPageUrl'>
      <div class='mobile-link-button' id='blog-pager-newer-link'>
      <a class='blog-pager-newer-link' expr:href='data:newerPageUrl' expr:id='data:widget.instanceId + &quot;_blog-pager-newer-link&quot;' expr:title='data:newerPageTitle'>&amp;lsaquo;</a>
      </div>
    </b:if>

    <b:if cond='data:olderPageUrl'>
      <div class='mobile-link-button' id='blog-pager-older-link'>
      <a class='blog-pager-older-link' expr:href='data:olderPageUrl' expr:id='data:widget.instanceId + &quot;_blog-pager-older-link&quot;' expr:title='data:olderPageTitle'>&amp;rsaquo;</a>
      </div>
    </b:if>

    <div class='mobile-link-button' id='blog-pager-home-link'>
    <a class='home-link' expr:href='data:blog.homepageUrl'><data:homeMsg/></a>
    </div>

    <div class='mobile-desktop-link'>
      <a class='home-link' expr:href='data:desktopLinkUrl'><data:desktopLinkMsg/></a>
    </div>

  </div>
  <div class='clear'/>
</b:includable>
              <b:includable id='mobile-post' var='post'>
  <div class='date-outer'>
    <b:if cond='data:post.dateHeader'>
      <h2 class='date-header'><span><data:post.dateHeader/></span></h2>
    </b:if>
    <div class='date-posts'>
      <div class='post-outer'>

        <div class='post hentry uncustomized-post-template' itemscope='itemscope' itemtype='http://schema.org/BlogPosting'>
          <b:if cond='data:post.thumbnailUrl'>
            <meta expr:content='data:post.thumbnailUrl' itemprop='image_url'/>
          </b:if>
          <meta expr:content='data:blog.blogId' itemprop='blogId'/>
          <meta expr:content='data:post.id' itemprop='postId'/>

          <a expr:name='data:post.id'/>
          <b:if cond='data:post.title'>
            <h3 class='post-title entry-title' itemprop='name'>
              <b:if cond='data:post.link'>
                <a expr:href='data:post.link'><data:post.title/></a>
              <b:elseif cond='data:post.url and data:blog.url != data:post.url'/>
                <a expr:href='data:post.url'><data:post.title/></a>
              <b:else/>
                <data:post.title/>
              </b:if>
            </h3>
          </b:if>

          <div class='post-header'>
            <div class='post-header-line-1'/>
          </div>

          <div class='post-body entry-content' expr:id='&quot;post-body-&quot; + data:post.id' itemprop='articleBody'>
            <data:post.body/>
            <div style='clear: both;'/> <!-- clear for photos floats -->
          </div>

          <div class='post-footer'>
            <div class='post-footer-line post-footer-line-1'>
              <span class='post-author vcard'>
                <b:if cond='data:top.showAuthor'>
                  <b:if cond='data:post.authorProfileUrl'>
                    <span class='fn' itemprop='author' itemscope='itemscope' itemtype='http://schema.org/Person'>
                      <meta expr:content='data:post.authorProfileUrl' itemprop='url'/>
                      <a expr:href='data:post.authorProfileUrl' rel='author' title='author profile'>
                        <span itemprop='name'><data:post.author/></span>
                      </a>
                    </span>
                  <b:else/>
                    <span class='fn' itemprop='author' itemscope='itemscope' itemtype='http://schema.org/Person'>
                      <span itemprop='name'><data:post.author/></span>
                    </span>
                  </b:if>
                </b:if>
              </span>

              <span class='post-timestamp'>
                <b:if cond='data:top.showTimestamp'>
                  <data:top.timestampLabel/>
                  <b:if cond='data:post.url'>
                    <meta expr:content='data:post.url.canonical' itemprop='url'/>
                    <a class='timestamp-link' expr:href='data:post.url' rel='bookmark' title='permanent link'><abbr class='published' expr:title='data:post.timestampISO8601' itemprop='datePublished'><data:post.timestamp/></abbr></a>
                  </b:if>
                </b:if>
              </span>

              <span class='post-comment-link'>
                <b:include cond='data:blog.pageType not in {&quot;item&quot;,&quot;static_page&quot;}                                  and data:post.allowComments' data='post' name='comment_count_picker'/>
              </span>
            </div>

            <div class='post-footer-line post-footer-line-2'>
              <b:if cond='data:top.showMobileShare'>
                <div class='mobile-link-button goog-inline-block' id='mobile-share-button'>
                  <a href='javascript:void(0);'><data:shareMsg/></a>
                </div>
              </b:if>
              <b:if cond='data:top.showDummy'>
                <div class='goog-inline-block dummy-container'><data:post.dummyTag/></div>
              </b:if>
            </div>

          </div>
        </div>

        <b:include cond='data:blog.pageType in {&quot;static_page&quot;,&quot;item&quot;}' data='post' name='comment_picker'/>
      </div>
    </div>
  </div>
</b:includable>
              <b:includable id='nextprev'>
  <div class='blog-pager' id='blog-pager'>
    <b:if cond='data:newerPageUrl'>
      <span id='blog-pager-newer-link'>
      <a class='blog-pager-newer-link' expr:href='data:newerPageUrl' expr:id='data:widget.instanceId + &quot;_blog-pager-newer-link&quot;' expr:title='data:newerPageTitle'><data:newerPageTitle/></a>
      </span>
    </b:if>

    <b:if cond='data:olderPageUrl'>
      <span id='blog-pager-older-link'>
      <a class='blog-pager-older-link' expr:href='data:olderPageUrl' expr:id='data:widget.instanceId + &quot;_blog-pager-older-link&quot;' expr:title='data:olderPageTitle'><data:olderPageTitle/></a>
      </span>
    </b:if>

    <a class='home-link' expr:href='data:blog.homepageUrl'><data:homeMsg/></a>

    <b:if cond='data:mobileLinkUrl'>
      <div class='blog-mobile-link'>
        <a expr:href='data:mobileLinkUrl'><data:mobileLinkMsg/></a>
      </div>
    </b:if>

  </div>
  <div class='clear'/>
</b:includable>
              <b:includable id='post' var='post'>
  <div class='post hentry uncustomized-post-template' itemprop='blogPost' itemscope='itemscope' itemtype='http://schema.org/BlogPosting'>
    <b:if cond='data:post.firstImageUrl'>
      <meta expr:content='data:post.firstImageUrl' itemprop='image_url'/>
    </b:if>
    <meta expr:content='data:blog.blogId' itemprop='blogId'/>
    <meta expr:content='data:post.id' itemprop='postId'/>

    <a expr:name='data:post.id'/>
    <b:if cond='data:post.title'>
      <h3 class='post-title entry-title' itemprop='name'>
      <b:if cond='data:post.link or (data:post.url and data:blog.url != data:post.url)'>
        <a expr:href='data:post.link ? data:post.link : data:post.url'><data:post.title/></a>
      <b:else/>
        <data:post.title/>
      </b:if>
      </h3>
    </b:if>

    <div class='post-header'>
    <div class='post-header-line-1'/>
    </div>

    <!-- Then use the post body as the schema.org description, for good G+/FB snippeting. -->
    <div class='post-body entry-content' expr:id='&quot;post-body-&quot; + data:post.id' expr:itemprop='(data:blog.metaDescription ? &quot;&quot; : &quot;description &quot;) + &quot;articleBody&quot;'>
      <data:post.body/>
      <div style='clear: both;'/> <!-- clear for photos floats -->
    </div>

    <b:if cond='data:post.hasJumpLink'>
      <div class='jump-link'>
        <a expr:href='data:post.url + &quot;#more&quot;' expr:title='data:post.title'><data:post.jumpText/></a>
      </div>
    </b:if>

    <div class='post-footer'>
    <div class='post-footer-line post-footer-line-1'>
      <span class='post-author vcard'>
        <b:if cond='data:top.showAuthor'>
          <data:top.authorLabel/>
            <b:if cond='data:post.authorProfileUrl'>
              <span class='fn' itemprop='author' itemscope='itemscope' itemtype='http://schema.org/Person'>
                <meta expr:content='data:post.authorProfileUrl' itemprop='url'/>
                <a class='g-profile' expr:href='data:post.authorProfileUrl' rel='author' title='author profile'>
                  <span itemprop='name'><data:post.author/></span>
                </a>
              </span>
            <b:else/>
              <span class='fn' itemprop='author' itemscope='itemscope' itemtype='http://schema.org/Person'>
                <span itemprop='name'><data:post.author/></span>
              </span>
            </b:if>
        </b:if>
      </span>

      <span class='post-timestamp'>
        <b:if cond='data:top.showTimestamp'>
          <data:top.timestampLabel/>
          <b:if cond='data:post.url'>
            <meta expr:content='data:post.url.canonical' itemprop='url'/>
            <a class='timestamp-link' expr:href='data:post.url' rel='bookmark' title='permanent link'><abbr class='published' expr:title='data:post.timestampISO8601' itemprop='datePublished'><data:post.timestamp/></abbr></a>
          </b:if>
        </b:if>
      </span>

      <span class='reaction-buttons'>
        <b:if cond='data:top.showReactions'>
          <table border='0' cellpadding='0' cellspacing='0' width='100%'><tr>
            <td class='reactions-label-cell' nowrap='nowrap' valign='top' width='1%'>
              <span class='reactions-label'>
              <data:top.reactionsLabel/></span>&#160;</td>
            <td><iframe allowtransparency='true' class='reactions-iframe' expr:src='data:post.reactionsUrl' frameborder='0' name='reactions' scrolling='no'/></td>
           </tr></table>
        </b:if>
      </span>

      <span class='post-comment-link'>
        <b:include cond='data:blog.pageType not in {&quot;item&quot;,&quot;static_page&quot;}                          and data:post.allowComments' data='post' name='comment_count_picker'/>
      </span>

       <!-- backlinks -->
       <span class='post-backlinks post-comment-link'>
         <b:if cond='data:blog.pageType not in {&quot;item&quot;,&quot;static_page&quot;}                      and data:post.showBacklinks'>
           <a class='comment-link' expr:href='data:post.url + &quot;#links&quot;'><data:top.backlinkLabel/></a>
         </b:if>
       </span>

      <span class='post-icons'>
        <!-- email post links -->
        <b:if cond='data:post.emailPostUrl'>
          <span class='item-action'>
          <a expr:href='data:post.emailPostUrl' expr:title='data:top.emailPostMsg'>
            <img alt='' class='icon-action' height='13' src='https://resources.blogblog.com/img/icon18_email.gif' width='18'/>
          </a>
          </span>
        </b:if>

        <!-- quickedit pencil -->
        <b:include data='post' name='postQuickEdit'/>
      </span>

      <!-- share buttons -->
      <div class='post-share-buttons goog-inline-block'>
        <b:include cond='data:post.sharePostUrl' data='post' name='shareButtons'/>
      </div>

      </div>

      <div class='post-footer-line post-footer-line-2'>
      <span class='post-labels'>
        <b:if cond='data:top.showPostLabels and data:post.labels'>
          <data:postLabelsLabel/>
          <b:loop values='data:post.labels' var='label'>
            <a expr:href='data:label.url' rel='tag'><data:label.name/></a><b:if cond='not data:label.isLast'>,</b:if>
          </b:loop>
        </b:if>
      </span>
      </div>

      <div class='post-footer-line post-footer-line-3'>
      <span class='post-location'>
        <b:if cond='data:top.showLocation and data:post.location'>
          <data:postLocationLabel/>
          <a expr:href='data:post.location.mapsUrl' target='_blank'><data:post.location.name/></a>
        </b:if>
      </span>
      </div>
      <b:if cond='data:post.authorAboutMe'>
        <div class='author-profile' itemprop='author' itemscope='itemscope' itemtype='http://schema.org/Person'>
          <b:if cond='data:post.authorPhoto.url'>
            <img expr:src='data:post.authorPhoto.url' itemprop='image' width='50px'/>
          </b:if>
          <div>
            <a class='g-profile' expr:href='data:post.authorProfileUrl' itemprop='url' rel='author' title='author profile'>
              <span itemprop='name'><data:post.author/></span>
            </a>
          </div>
          <span itemprop='description'><data:post.authorAboutMe/></span>
        </div>
      </b:if>
    </div>
  </div>
</b:includable>
              <b:includable id='postQuickEdit' var='post'>
  <b:if cond='data:post.editUrl'>
    <span expr:class='&quot;item-control &quot; + data:post.adminClass'>
      <a expr:href='data:post.editUrl' expr:title='data:top.editPostMsg'>
        <img alt='' class='icon-action' height='18' src='https://resources.blogblog.com/img/icon18_edit_allbkg.gif' width='18'/>
      </a>
    </span>
  </b:if>
</b:includable>
              <b:includable id='shareButtons' var='post'>
  <b:if cond='data:top.showEmailButton'><a class='goog-inline-block share-button sb-email' expr:href='data:post.sharePostUrl + &quot;&amp;target=email&quot;' expr:title='data:top.emailThisMsg' target='_blank'><span class='share-button-link-text'><data:top.emailThisMsg/></span></a></b:if><b:if cond='data:top.showBlogThisButton'><a class='goog-inline-block share-button sb-blog' expr:href='data:post.sharePostUrl + &quot;&amp;target=blog&quot;' expr:onclick='&quot;window.open(this.href, \&quot;_blank\&quot;, \&quot;height=270,width=475\&quot;); return false;&quot;' expr:title='data:top.blogThisMsg' target='_blank'><span class='share-button-link-text'><data:top.blogThisMsg/></span></a></b:if><b:if cond='data:top.showTwitterButton'><a class='goog-inline-block share-button sb-twitter' expr:href='data:post.sharePostUrl + &quot;&amp;target=twitter&quot;' expr:title='data:top.shareToTwitterMsg' target='_blank'><span class='share-button-link-text'><data:top.shareToTwitterMsg/></span></a></b:if><b:if cond='data:top.showFacebookButton'><a class='goog-inline-block share-button sb-facebook' expr:href='data:post.sharePostUrl + &quot;&amp;target=facebook&quot;' expr:onclick='&quot;window.open(this.href, \&quot;_blank\&quot;, \&quot;height=430,width=640\&quot;); return false;&quot;' expr:title='data:top.shareToFacebookMsg' target='_blank'><span class='share-button-link-text'><data:top.shareToFacebookMsg/></span></a></b:if><b:if cond='data:top.showPinterestButton'><a class='goog-inline-block share-button sb-pinterest' expr:href='data:post.sharePostUrl + &quot;&amp;target=pinterest&quot;' expr:title='data:top.shareToPinterestMsg' target='_blank'><span class='share-button-link-text'><data:top.shareToPinterestMsg/></span></a></b:if><b:if cond='data:top.showPlusOne'><div class='goog-inline-block google-plus-share-container'><data:post.googlePlusShareTag/></div></b:if>
</b:includable>
              <b:includable id='status-message'>
  <b:if cond='data:navMessage'>
  <div class='status-msg-wrap'>
    <div class='status-msg-body'>
      <data:navMessage/>
    </div>
    <div class='status-msg-border'>
      <div class='status-msg-bg'>
        <div class='status-msg-hidden'><data:navMessage/></div>
      </div>
    </div>
  </div>
  <div style='clear: both;'/>
  </b:if>
</b:includable>
              <b:includable id='threaded-comment-form' var='post'>
  <div class='comment-form'>
    <a name='comment-form'/>
    <b:if cond='data:mobile'>
      <p><data:blogCommentMessage/></p>
      <data:blogTeamBlogMessage/>
      <a expr:href='data:post.commentFormIframeSrc' id='comment-editor-src'/>
      <iframe allowtransparency='true' class='blogger-iframe-colorize blogger-comment-from-post' expr:height='data:cmtIframeInitialHeight' frameborder='0' id='comment-editor' name='comment-editor' src='' style='display: none' width='100%'/>
    <b:else/>
      <p><data:blogCommentMessage/></p>
      <data:blogTeamBlogMessage/>
      <a expr:href='data:post.commentFormIframeSrc' id='comment-editor-src'/>
      <iframe allowtransparency='true' class='blogger-iframe-colorize blogger-comment-from-post' expr:height='data:cmtIframeInitialHeight' frameborder='0' id='comment-editor' name='comment-editor' src='' width='100%'/>
    </b:if>
    <data:post.cmtfpIframe/>
    <script type='text/javascript'>
      BLOG_CMT_createIframe(&#39;<data:post.appRpcRelayPath/>&#39;);
    </script>
  </div>
</b:includable>
              <b:includable id='threaded_comment_js' var='post'>
  <script async='async' expr:src='data:post.commentSrc' type='text/javascript'/>

  <script type='text/javascript'>
    (function() {
      var items = <data:post.commentJso/>;
      var msgs = <data:post.commentMsgs/>;
      var config = <data:post.commentConfig/>;

// <![CDATA[
      var cursor = null;
      if (items && items.length > 0) {
        cursor = parseInt(items[items.length - 1].timestamp) + 1;
      }

      var bodyFromEntry = function(entry) {
        var text = (entry &&
                    ((entry.content && entry.content.$t) ||
                     (entry.summary && entry.summary.$t))) ||
            '';
        if (entry && entry.gd$extendedProperty) {
          for (var k in entry.gd$extendedProperty) {
            if (entry.gd$extendedProperty[k].name == 'blogger.contentRemoved') {
              return '<span class="deleted-comment">' + text + '</span>';
            }
          }
        }
        return text;
      }

      var parse = function(data) {
        cursor = null;
        var comments = [];
        if (data && data.feed && data.feed.entry) {
          for (var i = 0, entry; entry = data.feed.entry[i]; i++) {
            var comment = {};
            // comment ID, parsed out of the original id format
            var id = /blog-(\d+).post-(\d+)/.exec(entry.id.$t);
            comment.id = id ? id[2] : null;
            comment.body = bodyFromEntry(entry);
            comment.timestamp = Date.parse(entry.published.$t) + '';
            if (entry.author && entry.author.constructor === Array) {
              var auth = entry.author[0];
              if (auth) {
                comment.author = {
                  name: (auth.name ? auth.name.$t : undefined),
                  profileUrl: (auth.uri ? auth.uri.$t : undefined),
                  avatarUrl: (auth.gd$image ? auth.gd$image.src : undefined)
                };
              }
            }
            if (entry.link) {
              if (entry.link[2]) {
                comment.link = comment.permalink = entry.link[2].href;
              }
              if (entry.link[3]) {
                var pid = /.*comments\/default\/(\d+)\?.*/.exec(entry.link[3].href);
                if (pid && pid[1]) {
                  comment.parentId = pid[1];
                }
              }
            }
            comment.deleteclass = 'item-control blog-admin';
            if (entry.gd$extendedProperty) {
              for (var k in entry.gd$extendedProperty) {
                if (entry.gd$extendedProperty[k].name == 'blogger.itemClass') {
                  comment.deleteclass += ' ' + entry.gd$extendedProperty[k].value;
                } else if (entry.gd$extendedProperty[k].name == 'blogger.displayTime') {
                  comment.displayTime = entry.gd$extendedProperty[k].value;
                }
              }
            }
            comments.push(comment);
          }
        }
        return comments;
      };

      var paginator = function(callback) {
        if (hasMore()) {
          var url = config.feed + '?alt=json&v=2&orderby=published&reverse=false&max-results=50';
          if (cursor) {
            url += '&published-min=' + new Date(cursor).toISOString();
          }
          window.bloggercomments = function(data) {
            var parsed = parse(data);
            cursor = parsed.length < 50 ? null
                : parseInt(parsed[parsed.length - 1].timestamp) + 1
            callback(parsed);
            window.bloggercomments = null;
          }
          url += '&callback=bloggercomments';
          var script = document.createElement('script');
          script.type = 'text/javascript';
          script.src = url;
          document.getElementsByTagName('head')[0].appendChild(script);
        }
      };
      var hasMore = function() {
        return !!cursor;
      };
      var getMeta = function(key, comment) {
        if ('iswriter' == key) {
          var matches = !!comment.author
              && comment.author.name == config.authorName
              && comment.author.profileUrl == config.authorUrl;
          return matches ? 'true' : '';
        } else if ('deletelink' == key) {
          return config.baseUri + '/delete-comment.g?blogID='
               + config.blogId + '&postID=' + comment.id;
        } else if ('deleteclass' == key) {
          return comment.deleteclass;
        }
        return '';
      };

      var replybox = null;
      var replyUrlParts = null;
      var replyParent = undefined;

      var onReply = function(commentId, domId) {
        if (replybox == null) {
          // lazily cache replybox, and adjust to suit this style:
          replybox = document.getElementById('comment-editor');
          if (replybox != null) {
            replybox.height = '250px';
            replybox.style.display = 'block';
            replyUrlParts = replybox.src.split('#');
          }
        }
        if (replybox && (commentId !== replyParent)) {
          replybox.src = '';
          document.getElementById(domId).insertBefore(replybox, null);
          replybox.src = replyUrlParts[0]
              + (commentId ? '&parentID=' + commentId : '')
              + '#' + replyUrlParts[1];
          replyParent = commentId;
        }
      };

      var hash = (window.location.hash || '#').substring(1);
      var startThread, targetComment;
      if (/^comment-form_/.test(hash)) {
        startThread = hash.substring('comment-form_'.length);
      } else if (/^c[0-9]+$/.test(hash)) {
        targetComment = hash.substring(1);
      }

      // Configure commenting API:
      var configJso = {
        'maxDepth': config.maxThreadDepth
      };
      var provider = {
        'id': config.postId,
        'data': items,
        'loadNext': paginator,
        'hasMore': hasMore,
        'getMeta': getMeta,
        'onReply': onReply,
        'rendered': true,
        'initComment': targetComment,
        'initReplyThread': startThread,
        'config': configJso,
        'messages': msgs
      };

      var render = function() {
        if (window.goog && window.goog.comments) {
          var holder = document.getElementById('comment-holder');
          window.goog.comments.render(holder, provider);
        }
      };

      // render now, or queue to render when library loads:
      if (window.goog && window.goog.comments) {
        render();
      } else {
        window.goog = window.goog || {};
        window.goog.comments = window.goog.comments || {};
        window.goog.comments.loadQueue = window.goog.comments.loadQueue || [];
        window.goog.comments.loadQueue.push(render);
      }
    })();
// ]]>
  </script>
</b:includable>
              <b:includable id='threaded_comments' var='post'>
  <div class='comments' id='comments'>
    <a name='comments'/>
    <h4><data:post.commentLabelFull/>:</h4>

    <div class='comments-content'>
      <b:include cond='data:post.embedCommentForm' data='post' name='threaded_comment_js'/>
      <div id='comment-holder'>
         <data:post.commentHtml/>
      </div>
    </div>

    <p class='comment-footer'>
      <b:if cond='data:post.allowNewComments'>
        <b:include data='post' name='threaded-comment-form'/>
      <b:else/>
        <data:post.noNewCommentsText/>
      </b:if>
    </p>

    <b:if cond='data:showCmtPopup'>
      <div id='comment-popup'>
        <iframe allowtransparency='true' frameborder='0' id='comment-actions' name='comment-actions' scrolling='no'>
        </iframe>
      </div>
    </b:if>

    <div id='backlinks-container'>
    <div expr:id='data:widget.instanceId + &quot;_backlinks-container&quot;'>
      <b:include cond='data:post.showBacklinks' data='post' name='backlinks'/>
    </div>
    </div>
  </div>
</b:includable>
            </b:widget>
          </b:section>
        </div>
        </div>

        <div class='column-left-outer'>
        <div class='column-left-inner'>
          <aside>
          <macro:include id='main-column-left-sections' name='sections'>
            <macro:param default='0' name='num'/>
            <macro:param default='sidebar-left' name='idPrefix'/>
            <macro:param default='sidebar' name='class'/>
            <macro:param default='true' name='includeBottom'/>
          </macro:include>
          </aside>
        </div>
        </div>

        <div class='column-right-outer'>
        <div class='column-right-inner'>
          <aside>
          <macro:include id='main-column-right-sections' name='sections'>
            <macro:param default='2' name='num'/>
            <macro:param default='sidebar-right' name='idPrefix'/>
            <macro:param default='sidebar' name='class'/>
            <macro:param default='true' name='includeBottom'/>
          </macro:include>
          </aside>
        </div>
        </div>

        </div>

        <div style='clear: both'/>
      <!-- columns -->
      </div>

    <!-- main -->
    </div>
    </div>
    <div class='main-cap-bottom cap-bottom'>
      <div class='cap-left'/>
      <div class='cap-right'/>
    </div>
    </div>

    <footer>
    <div class='footer-outer'>
    <div class='footer-cap-top cap-top'>
      <div class='cap-left'/>
      <div class='cap-right'/>
    </div>
    <div class='fauxborder-left footer-fauxborder-left'>
    <div class='fauxborder-right footer-fauxborder-right'/>
    <div class='region-inner footer-inner'>
      <macro:include id='footer-sections' name='sections'>
        <macro:param default='2' name='num'/>
        <macro:param default='footer' name='idPrefix'/>
        <macro:param default='foot' name='class'/>
        <macro:param default='false' name='includeBottom'/>
      </macro:include>
      <!-- outside of the include in order to lock Attribution widget -->
      <b:section class='foot' id='footer-3' name='Footer' showaddelement='no'>
        <b:widget id='Attribution1' locked='true' title='' type='Attribution'>
          <b:widget-settings>
            <b:widget-setting name='copyright'/>
          </b:widget-settings>
          <b:includable id='main'>
    <div class='widget-content' style='text-align: center;'>
      <b:if cond='data:attribution != &quot;&quot;'>
       <data:attribution/>
      </b:if>
    </div>

    <b:include name='quickedit'/>
  </b:includable>
        </b:widget>
      </b:section>
    </div>
    </div>
    <div class='footer-cap-bottom cap-bottom'>
      <div class='cap-left'/>
      <div class='cap-right'/>
    </div>
    </div>
    </footer>

  <!-- content -->
  </div>
  </div>
  <div class='content-cap-bottom cap-bottom'>
    <div class='cap-left'/>
    <div class='cap-right'/>
  </div>
  </div>
  </div>

  <script type='text/javascript'>
    window.setTimeout(function() {
        document.body.className = document.body.className.replace(&#39;loading&#39;, &#39;&#39;);
      }, 10);
  </script>
</body>

<macro:includable id='sections' var='col'>
  <macro:if cond='data:col.num == 0'>
  <macro:else/>
    <b:section mexpr:class='data:col.class' mexpr:id='data:col.idPrefix + &quot;-1&quot;' preferred='yes' showaddelement='yes'/>

    <macro:if cond='data:col.num &gt;= 2'>
      <table border='0' cellpadding='0' cellspacing='0' mexpr:class='&quot;section-columns columns-&quot; + data:col.num'>
      <tbody>
      <tr>
        <td class='first columns-cell'>
          <b:section mexpr:class='data:col.class' mexpr:id='data:col.idPrefix + &quot;-2-1&quot;'/>
        </td>

        <td class='columns-cell'>
          <b:section mexpr:class='data:col.class' mexpr:id='data:col.idPrefix + &quot;-2-2&quot;'/>
        </td>

        <macro:if cond='data:col.num &gt;= 3'>
          <td class='columns-cell'>
            <b:section mexpr:class='data:col.class' mexpr:id='data:col.idPrefix + &quot;-2-3&quot;'/>
          </td>
        </macro:if>

        <macro:if cond='data:col.num &gt;= 4'>
          <td class='columns-cell'>
            <b:section mexpr:class='data:col.class' mexpr:id='data:col.idPrefix + &quot;-2-4&quot;'/>
          </td>
        </macro:if>
      </tr>
      </tbody>
      </table>

      <macro:if cond='data:col.includeBottom'>
        <b:section mexpr:class='data:col.class' mexpr:id='data:col.idPrefix + &quot;-3&quot;' showaddelement='no'/>
      </macro:if>
    </macro:if>
  </macro:if>
</macro:includable>

<b:section-contents id='sidebar-right-1'>
  <b:widget id='HTML1' locked='false' title='AD' type='HTML'>
    <b:widget-settings>
      <b:widget-setting name='content'>&lt;script async src=&quot;//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js&quot;&gt;&lt;/script&gt;
&lt;!-- Kurtv --&gt;
&lt;ins class=&quot;adsbygoogle&quot;
     style=&quot;display:block&quot;
     data-ad-client=&quot;ca-pub-7607093262813597&quot;
     data-ad-slot=&quot;1784701370&quot;
     data-ad-format=&quot;auto&quot;&gt;&lt;/ins&gt;
&lt;script&gt;
(adsbygoogle = window.adsbygoogle || []).push({});
&lt;/script&gt;</b:widget-setting>
    </b:widget-settings>
    <b:includable id='main'>
  <!-- only display title if it's non-empty -->
  <b:if cond='data:title != &quot;&quot;'>
    <h2 class='title'><data:title/></h2>
  </b:if>
  <div class='widget-content'>
    <data:content/>
  </div>

  <b:include name='quickedit'/>
</b:includable>
  </b:widget>
</b:section-contents><b:section-contents id='sidebar-right-2-1'/><b:section-contents id='sidebar-right-2-2'/><b:section-contents id='sidebar-right-3'/><b:section-contents id='footer-1'/><b:section-contents id='footer-2-1'/><b:section-contents id='footer-2-2'/></html>
