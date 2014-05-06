class App.Routers.MainRouter extends Backbone.Router
	routes:
		'surveys/new' : 'newSurvey'

	initialize: ->
		@surveyCollection = new App.Models.SurveyCollection()

	newSurvey: ->
		@show(new App.Views.NewSurveyForm(collection: @surveyCollection))

	show: (view) ->
		if @openView then @openView.remove()
		$('#main').html view.render().el
		@openView = view
