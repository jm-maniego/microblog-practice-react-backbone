class MicroBlogReactBackbone.Routers.Posts extends Backbone.Router
  routes:
    'posts': 'index'

  index: ->
    posts = new MicroBlogReactBackbone.Collections.Posts()
    posts.fetch().done(->
      ReactDOM.render(
        `<MicroBlogReactBackbone.Views.PostTable posts={posts}/>`,
        document.getElementById('main-container')
        )
      )