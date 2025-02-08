# README

```
ruby-34-kernel-system % asdf local ruby 3.3.6
ruby-34-kernel-system % ruby test.rb
"system"
ruby-34-kernel-system % asdf local ruby 3.4.1
ruby-34-kernel-system % ruby test.rb
test.rb:26:in 'Kernel#system': wrong number of arguments (given 0, expected 1+) (ArgumentError)

    raw.system(...)
               ^^^
        from test.rb:26:in 'Hoge#system'
        from test.rb:36:in 'Hoge#get_system'
        from test.rb:51:in 'Test.run'
        from test.rb:55:in '<main>'
```
