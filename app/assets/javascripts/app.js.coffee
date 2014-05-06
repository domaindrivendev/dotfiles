window.App = { 
	# Namespaces
	Routers: {}
	Models: {}
	Views: {}

	init: ->
		@mainRouter = new App.Routers.MainRouter()

		Backbone.history.start()
}
