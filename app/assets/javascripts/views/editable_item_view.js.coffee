class App.Views.EditableItemView extends Backbone.View
	tagName: 'li'
	template: JST['templates/editable_item_view']

	events:
		'click button': 'remove'

	render: ->
		@$el.html @template
		@
