class App.Views.NewSurveyForm extends Backbone.View
	tagName: 'form'
	template: JST['templates/new_survey_form']

	events:
		'submit': 'submit'

	render: ->
		@$el.html @template()

		choices = new App.Views.EditListView(id: 'choices')
		@$el.find('label[for=choices]').after(choices.render().el)
		@

	addChoice: ->
		view = new App.Views.EditableItemView()
		@$el.find('#choices ol').append(view.render().el)

	submit: (event) ->
		question = $('#question').val()
		choices = $('#choices input').map((i, item) ->$(item).val()).get()
		model = new App.Models.Survey(question: question, choices: choices)
		@collection.create(model)
		false
