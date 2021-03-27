
<!-- Link References -->
[CI Status]: https://github.com/ClockworkSquirrel/roact-inheritedcontext/actions
[Latest Release]: https://github.com/ClockworkSquirrel/roact-inheritedcontext/releases/latest
# InheritedContext
[![CI](https://github.com/ClockworkSquirrel/roact-inheritedcontext/actions/workflows/ci.yml/badge.svg)][CI Status]
[![GitHub release (latest by date)](https://img.shields.io/github/v/release/clockworksquirrel/roact-inheritedcontext?label=latest+release)][Latest Release]

Roact utility which allows context to inherit an ancestor context of the same instance.

Great for when you need to override parts of context, such as overriding a theme colour in a specific part of your application.

## Installation
* [Sync in with Rojo](https://rojo.space)
* [Download the model from GitHub releases][Latest Release]

InheritedContext looks for Roact in the same directory as it. If you have installed Roact somewhere else, please create a reference module or update [Roact.lua](/src/Roact.lua) to point to the correct location.

You will need to bring your own context; InheritedContext does not provide context by default, as this would only allow a single context to be used. Wrap your context with the Provider function to create an inherited Provider. Give your context as the first argument of `withContext` in order to pass it to your render function.
