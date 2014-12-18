# Add elasticsearch
require 'elasticsearch/model'

class Library < ActiveRecord::Base

	include Elasticsearch::Model
 	include Elasticsearch::Model::Callbacks

	searchkick autocomplete: ['name']
def self.search(query)
  __elasticsearch__.search(
    {
      query: {
        multi_match: {
          query: query,
          # Weigh the different values
          fields: ['name^10', 'tags', 'description']
        }
      },
      #Add highlight
      highlight: {
        pre_tags: ['<em>'],
        post_tags: ['</em>'],
        fields: {
          title: {},
          text: {}
        }
      }
    }
  )
end
Api.import  #Sync elasticsearch with model
#CSV file has headers, (ignore)
def self.import(file)
 	CSV.foreach(file.path, headers: true) do |row|
 		Library.create(row.to_hash)

 	#import_file = SmarterCSV.process(file)
 	#Api.create! import_file
 end
 end
end
