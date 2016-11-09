window.MicroBlogReactBackbone =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new MicroBlogReactBackbone.Routers.Posts()
    Backbone.history.start({ pushState: true })

$(document).ready ->
  MicroBlogReactBackbone.initialize()
