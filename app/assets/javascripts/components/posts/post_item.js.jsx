MicroBlogReactBackbone.Views.PostItem = class extends React.Component {
  render() {
    let post = this.props.post;
    return (
      <div>
        <p>
          <strong>Author:</strong>
          {post.get('author')}
        </p>
        <p>
          <strong>Text:</strong>
          {post.get('text')}
        </p>
        <a href={`/posts/${post.get('id')}/edit`}>Edit</a> |
        <a href={'/posts'}>Back</a>
      </div>
      );
  }
}