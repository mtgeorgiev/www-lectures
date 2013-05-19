require 'rubygems'
require 'slim'
require 'yaml'
require 'albino'
require 'fileutils'
require 'rcodetools/xmpfilter'

$:.unshift File.dirname(__FILE__) + '/slides'

autoload :Example,     'example'
autoload :Annotate,    'annotate'
autoload :List,        'list'
autoload :SlideHelper, 'slide_helper'
autoload :Lecture,     'lecture'
autoload :Builder,     'builder'
autoload :HtmlExample, 'html_example'
autoload :JavaScriptExample,  'javascript'
autoload :SQLExample,  'sql'


Slim::Engine.default_options[:disable_escape] = true

Slim::EmbeddedEngine.register :example, Example
Slim::EmbeddedEngine.register :annotate, Annotate
Slim::EmbeddedEngine.register :list, List
Slim::EmbeddedEngine.register :html, HtmlExample
Slim::EmbeddedEngine.register :js_example, JavaScriptExample
Slim::EmbeddedEngine.register :sql_example, SQLExample
