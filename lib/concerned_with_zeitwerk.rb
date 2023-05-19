# frozen_string_literal: true

require_relative "concerned_with_zeitwerk/version"

# concerned_with method can be used for code spliting in model files.
# By creating concern such as Callbacks, Associations, Validations, etc., inside the model folder
#
# foo/
#   associations.rb
#   callbacks.rb
#   validations.rb
# foo.rb
#
# and include those files in the model file as shown below :
#
# class Foo
#   concerned_with :associations, :validations, :callbacks
# end
module ConcernedWithZeitwerk
  # This method will include concern in below fashion
  # include Foo::Associations
  def concerned_with(*concerns)
    concerns.each do |concern|
      module_name = "#{name}::#{concern.to_s.camelize}"
      concern_module = const_get(module_name)
      include concern_module
    end
  end
end
