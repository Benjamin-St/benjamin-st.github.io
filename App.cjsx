
React = require 'react'

MultiPage = require './Page'

React.render (
	<MultiPage>
		{ require('./jade/CourseWork/AlgorithmsImplementations')() }
		{ require('./jade/CourseWork/SongSearch')() }
		{ require('./jade/CourseWork/UniversalMachine')() }
		{ require('./jade/CourseWork/ImageCompression')() }
		{ require('./jade/CourseWork/RPNCalculator')() }
		{ require('./jade/CourseWork/Trigrams')() }
		{ require('./jade/CourseWork/UnblackEdges')() }
	</MultiPage>
), document.getElementById('CourseworkPage')

React.render (
	<MultiPage>
		{ require('./jade/Web/DeepType')() }
		{ require('./jade/Web/HealthExchangeAPI')() }
		{ require('./jade/Web/DrawingArcs')() }
	</MultiPage>
), document.getElementById('WebProjectsPage')

React.render (
	<MultiPage>
		{ require('./jade/iOS/YoopApp')() }
		{ require('./jade/iOS/CheckoutViewController')() }
	</MultiPage>
), document.getElementById('IOSProjectsPage')

React.render (
	<MultiPage>
		{ require('./jade/Programming')() }
		{ require('./jade/WebDev')() }
		{ require('./jade/MobileDev')() }
	</MultiPage>
), document.getElementById('TechnicalSkillsPage')

React.render (
	<MultiPage>
		{ require('./jade/Courses/DataStructures')() }
		{ require('./jade/Courses/Comp40')() }
		{ require('./jade/Courses/Algorithms')() }
		{ require('./jade/Courses/AbstractLinearAlgebra')() }
		{ require('./jade/Courses/AbstractAlgebra')() }
	</MultiPage>
), document.getElementById('CoursesPage')

ga('send', 'pageview')