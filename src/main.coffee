require 'build/src/templates'

## Used for bundling files together using neuter
Ember.Table = Ember.Namespace.create()
Ember.Table.VERSION = '0.4.1'

Ember.libraries?.register 'Ember Table', Ember.Table.VERSION

Ember.onLoad 'Ember.Application', (Application) ->
  Application.initializer
    name: 'ember-table'
    initialize: (container) ->
      container.register 'view:multi-item-collection', Ember.MultiItemViewCollectionView
      container.register 'view:body-table-container', Ember.Table.BodyTableContainer
      container.register 'view:scroll-container', Ember.Table.ScrollContainer
      container.register 'view:column-sortable-indicator', Ember.Table.ColumnSortableIndicator
      container.register 'view:header-table-container', Ember.Table.HeaderTableContainer
      container.register 'view:header-block', Ember.Table.HeaderBlock
      container.register 'view:header-row', Ember.Table.HeaderRow
      container.register 'view:lazy-table-block', Ember.Table.LazyTableBlock
      container.register 'view:scroll-panel', Ember.Table.ScrollPanel
      return
  return

# Dependencies
require 'dependencies/ember-addepar-mixins/resize_handler'
require 'dependencies/ember-addepar-mixins/style_bindings'

# Utils
require 'build/src/utils/jquery_fix'
require 'build/src/utils/lazy_container_view'
require 'build/src/utils/utils'

# Ember-Table
require 'build/src/column'
require 'build/src/row'
require 'build/src/views'
require 'build/src/component'
