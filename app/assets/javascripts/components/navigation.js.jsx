var Navigation = React.createClass({
  render: function () {
    return (
      <div>
        <NavLink name='Home' url= '/' />
        <NavLink name='Companies' url='/companies' />
        <NavLink name='Locations' url='/locations' />
        <NavLink name='Courses' url='/courses' />
        <NavLink name='Employees' url='/employees' />
      </div>
    );
  }
});

var NavLink = React.createClass({
  render: function () {
    return (<a onClick={this.clicked} className='btn btn-default'>{this.props.name}</a>);
  },

  clicked: function () {
    window.location.href = this.props.url;
  }
});
