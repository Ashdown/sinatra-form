(function (React, App) {

    App.Components.Container = React.createClass({displayName: "Container",
        /**
         * @return {object}
         */
        render: function () {
            return (
                React.createElement("div", null, 
                    React.createElement("p", null, "This is a the container")
                )
                );
        }
    });

})(React, App);