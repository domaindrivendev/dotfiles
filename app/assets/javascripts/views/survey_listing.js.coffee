class App.Views.SurveyListing extends Backbone.View
	template: JST['templates/survey_listing']

	render: ->
		@$el.html @template()
		@
