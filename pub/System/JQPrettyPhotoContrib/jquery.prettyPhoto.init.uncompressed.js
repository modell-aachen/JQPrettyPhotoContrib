jQuery(function($) {
  var defaults = {
    show_title: true,
    itemSelector:'a[href]',
    title_attr:'data-description',
    slideshow: 5000
  };

  $(".jqPrettyPhoto:not(.jqInitedPrettyPhoto)").livequery(function() {
    var $this = $(this),
        opts = $.extend({}, defaults, $this.metadata()),
        groupRel = "prettyPhoto["+Math.floor(Math.random() * 100)+"]";

    $this.addClass("jqInitedPrettyPhoto");
    $this.find(opts.itemSelector).attr('rel', groupRel).each(function() {
      var $el = $(this), 
          imgOpts = $.extend({}, $el.metadata()),
          text = $el.find("img").attr('alt') || '', 
          href = imgOpts.origUrl || $el.attr('href');

      $el.attr("href", href).attr('data-description', escape('<a href="' + href + '" title="click to download">'+text+'</a>'));
    }).prettyPhoto(opts);
  });        
});
