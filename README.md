# findable_gem
Gem for easy finding model objects without set_object before_action

just add this line in your gemfile
```gem 'hola_dmleobit'```

Then just add this line in your ApplicationController (or in separate controllers where you want to use it)
```include HolaDmleobit```


and now you can switch all your ```before_action :set_something``` with respective method to ```find :something``` without any methods
Just try it and you will fall in love with this gem easy-to-use

This find method takes only one argument - resource_name, which uses for finding class of model which you would like to find, but it also takes a few optional parameters, you can see it bellow:
```
    #   - class          - name of resource class (default: taken from required argument)
    #   - by             - how value is named in params (default: :id)
    #   - attribute      - name of resource attribute (default: :id)
    #   - strict         - raise error if resource hasn't been found (default: true)
    #   - fallback       - method name/proc which we call if resource hasn't been found
    #   - fallback_value - method name/proc which we call if value can't be found in params
    #   - only           - list of controller actions on which it is triggered
    #   - except         - list of controller actions on which it isn't triggered
    #   - eager_load     - list of eager loaded entries to avoid N+1 problem
    #   - preload        - list of preloaded entries to avoid N+1 problem
    #   - joins          - list of joined entries to avoid N+1 problem
    #   - decorate       - shows if we should decorate found resource.
    #                      Can be used only with respective Drapper decorator
    #   - friendly       - shows if we should find resource also by slug field.
    #                      Can be used only for FriendlyId models.
```

Enjoy :)
