# Add elasticsearch
require 'elasticsearch/model'

class Api < ActiveRecord::Base

	include Elasticsearch::Model
 	include Elasticsearch::Model::Callbacks

end
Api.import  #Sync elasticsearch with model
