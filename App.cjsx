
React = require 'react'

MultiPage = require './Page'

YoopApp = require('./jade/YoopApp')().props

React.render (
	<MultiPage>
		{ require('./jade/YoopApp')() }
		{ require('./jade/DeepType')() }
		{ require('./jade/HealthExchangeAPI')() }
		{ require('./jade/SongSearch')() }
		{ require('./jade/CheckoutViewController')() }
	</MultiPage>
), document.getElementById('ProjectsPage')


React.render (
	<MultiPage>
		{ require('./jade/Programming')() }
		{ require('./jade/WebDev')() }
		{ require('./jade/MobileDev')() }
	</MultiPage>
), document.getElementById('SkillsPage')

