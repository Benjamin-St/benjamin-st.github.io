React = require 'react'

Label = React.createClass
	render: ->
		className = 'label'
		if this.props.selected
			className += ' selected'
		<div className = className onClick = this.props.onClick>
			<div className = 'title'>{this.props.title}</div>
			<div className = 'subtitle'>{this.props.subtitle}</div>
		</div>


MultiPage = React.createClass
	
	getInitialState: ->
		children = this.props.children
		if !(children instanceof Array)
			children = [children]

		# first child
		if children.length > 0
			{selectedItem: children[0]}
		else
			{selectedItem: null}
			


	render: ->

		children = this.props.children
		Component = <div />


		if !(children instanceof Array)
			if children == null || children == undefined		
				children = []
			else
				children = [children]

		for child in children
			if this.state.selectedItem is child
				Component = child

		self = this

		<div className = 'content'>
			<div className = 'label-container'>
				{
					children.map (child) ->
						<Label
							title = {child.props.title} 
							subtitle = {child.props.subtitle} 
							selected = {child == self.state.selectedItem} 
							onClick = {() => self.setState({selectedItem: child})} 
						/>
				}
			</div>
			<div className = 'page-content'>{Component}</div>
		</div>

module.exports = MultiPage