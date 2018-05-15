# Dangerless

Automatically Add Cloning (Safe) Variants of Bang (Dangerous) Methods (e.g. `.method!`)

## Installation

From RubyGems:

```
$ gem install dangerless
```

## Usage

Simply including the `Dangerless` module in your class will automatically generate the methods.

```
def MyClass
  def modify!(args)
    ...
  end

  include Dangerless
end

MyClass.new.instance_methods #=> [:modify!, :modify]
```

> **NOTE:** The call to `include Dangerless` *must* come after the definitions of any methods you want to be copied.

Of course, if you have some methods which you don't want "safe" duplicates of, you can simply define them *after* the call to `include Dangerless`:

```
def MyClass
  ...
  include Dangerless

  def modify!(args)
    ...
  end
end

MyClass.new.instance_methods #=> [:modify!]
```
