template example
===========
Module Layout
On disk, a module is simply a directory tree with a specific, predictable structure:

MODULE NAME
manifests
files
templates
lib
tests
spec
Example

This example module, named “my_module,” shows the standard module layout in more detail:

my_module — This outermost directory’s name matches the name of the module.
manifests/ — Contains all of the manifests in the module.
init.pp — Contains a class definition. This class’s name must match the module’s name.
other_class.pp — Contains a class named my_module::other_class.
my_defined_type.pp — Contains a defined type named my_module::my_defined_type.
implementation/ — This directory’s name affects the class names beneath it.
foo.pp — Contains a class named my_module::implementation::foo.
bar.pp — Contains a class named my_module::implementation::bar.
files/ — Contains static files, which managed nodes can download.
service.conf — This file’s URL would be puppet:///modules/my_module/service.conf.
lib/ — Contains plugins, like custom facts and custom resource types. See “Using Plugins” for more details.
templates/ — Contains templates, which the module’s manifests can use. See “Templates” for more details.
component.erb — A manifest can render this template with template('my_module/component.erb').
tests/ — Contains examples showing how to declare the module’s classes and defined types.
init.pp
other_class.pp — Each class or type should have an example in the tests directory.
spec/ — Contains spec tests for any plugins in the lib directory.
Each of the module’s subdirectories has a specific function, as follows.

Manifests

Each manifest in a module’s manifests folder should contain one class or defined type. The file names of manifests map predictably to the names of the classes and defined types they contain.

init.pp is special and always contains a class with the same name as the module.

Every other manifest contains a class or defined type named as follows:

Name of module	::	Other directories:: (if any)	Name of file (no extension)
my_module	::	 	other_class
my_module	::	implementation::	foo
Thus:

my_module::other_class would be in the file my_module/manifests/other_class.pp
my_module::implementation::foo would be in the file my_module/manifests/implementation/foo.pp
The double colon that divides the sections of a class’s name is called the namespace separator.