class MicroBlogReactBackbone.Routers.Posts extends Backbone.Router
  routes:
    'posts': 'index'
    'posts/:id': 'show'

  initialize: ->
    @main_container = document.getElementById('main-container')
    @posts = MicroBlogReactBackbone.posts
    @posts or= new MicroBlogReactBackbone.Collections.Posts()

  index: ->
    @posts.this_or_fetch
      success: =>
        ReactDOM.render(
          `<MicroBlogReactBackbone.Views.PostTable posts={_this.posts}/>`,
          @main_container)

  show: (id) ->
    post = @posts.get_or_fetch(id,
      success: (post) =>
        ReactDOM.render(
          `<MicroBlogReactBackbone.Views.PostItem post={post}/>`,
          @main_container)
      )