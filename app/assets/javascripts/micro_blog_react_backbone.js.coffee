window.MicroBlogReactBackbone =
  Mixins: {}
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new MicroBlogReactBackbone.Routers.Posts()
    Backbone.history.start({ pushState: true })

    $(document).on "click", "a:not([data-bypass])", (evt) ->
      href = { prop: $(this).prop("href"), attr: $(this).attr("href") };
      root = location.protocol + "//" + location.host + Backbone.history.options.root;

      if (href.prop && href.prop.slice(0, root.length) == root)
        evt.preventDefault();
        Backbone.history.navigate(href.attr, {trigger: true});

$(document).ready ->
  MicroBlogReactBackbone.initialize()
