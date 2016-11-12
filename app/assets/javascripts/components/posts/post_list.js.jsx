MicroBlogReactBackbone.Views.PostTable = class extends React.Component {
  render() {
    return (
      <div>
        <h1>Posts</h1>
        <table>
          <thead>
            <tr>
              <th>Author</th>
              <th>Text</th>
              <th colSpan="3"></th>
            </tr>
          </thead>
          <tbody>
            {this.props.posts.map((post)=> {
              return (
                <MicroBlogReactBackbone.Views.PostRow key={post.get('id')} post={post} />
                )
            })}
          </tbody>
        </table>
      </div>
      );
  }
}

MicroBlogReactBackbone.Views.PostRow = class extends React.Component {
  render() {
    let post = this.props.post;
    return (
      <tr>
        <td>{post.get('author')}</td>
        <td>{post.get('text')}</td>
        <td><a href={`/posts/${post.get('id')}`}>Show</a></td>
      </tr>
      );
  }
}