# TestFormatter

Demonstarate an issue with Elixir 1.12 where the `suite_finished` message
changed its format. Up to 1.11.3 the message received was a 3-element tuple like
this: `{:suite_finished, 164457, nil}` but since 1.12 it is a 2-element tuple
like this: `{:suite_finished, %{async: nil, load: nil, run: 40905}}`

With Elixir 1.12+ nothing is printed but there are two failing tests:

```shell
➜  test_formatter mix test --formatter TestFormatter.FailedTestFormatter

Compiling 2 files (.ex)
Generated test_formatter app
```

With Elixir 1.11.3 it works as expected:

```shell
➜  test_formatter mix test --formatter TestFormatter.FailedTestFormatter

Compiling 2 files (.ex)
Generated test_formatter app
Failed tests:
./test/test_formatter_test.exs:21
./test/test_formatter_test.exs:13
```
