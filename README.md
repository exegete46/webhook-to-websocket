# webhook-to-websocket

Super-simple Rails app for forwarding webhook requests to websockets.

# Beware!

This project does not include any kind of security!  It will forward **all**
requests to the `hooks` controller to the websocket!

# Getting Started

I suggest using the devcontainers configuration in VS Code, or another
Ruby 2.7 development environment.  Then start the rails server:

```sh
$ rails s
```

This should start the Rails server on port `3000` on localost.

# Webhooks

There are two endpoints, one for POST and one for GET:

- `/hooks/get`
- `/hooks/post`

Pretty self-explainitory.  If you open [the root of the site](http://localhost:3000/)
you should see a demo page.  A Javascript `alert()` should pop up when a request comes
in, and the contents of the request is output with `console.dir()`.  See
`app/javascript/channels/broadcast_channel.js` for details.