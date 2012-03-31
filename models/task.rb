require 'data_mapper'

class Task
	include DataMapper::Resource
	property :id , Serial
	property :name , String, :required => true
	property :completed_at, DateTime
end

#call finalize before app starts interacting with models.
#TODO move to main app class
DataMapper.finalize
