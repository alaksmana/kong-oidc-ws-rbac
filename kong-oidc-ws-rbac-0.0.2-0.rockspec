package = "kong-oidc-ws-rbac"
version = "0.0.2-0"
source = {
    url = "git://github.com/alaksmana/kong-oidc-ws-rbac",
    tag = "v0.0.2",
    dir = "kong-oidc-ws-rbac"
}
description = {
    summary = "A Kong plugin for implementing the OpenID Connect Relying Party (RP) functionality",
    detailed = [[
        kong-oidc-ws-rbac is a Kong plugin for implementing the OpenID Connect Relying Party added with Websocket and custom RBAC support.

        When used as an OpenID Connect Relying Party it authenticates users against an OpenID Connect Provider using OpenID Connect Discovery and the Basic Client Profile (i.e. the Authorization Code flow).

        It maintains sessions for authenticated users by leveraging lua-resty-session thus offering a configurable choice between storing the session state in a client-side browser cookie or use in of the server-side storage mechanisms shared-memory|memcache|redis.

        It supports server-wide caching of resolved Discovery documents and validated Access Tokens.

        It can be used as a reverse proxy terminating OAuth/OpenID Connect in front of an origin server so that the origin server/services can be protected with the relevant standards without implementing those on the server itself.
    ]],
    homepage = "https://github.com/alaksmana/kong-oidc-ws-rbac",
    license = "Apache 2.0"
}
dependencies = {
    "lua-resty-openidc ~> 1.7.2-1",
    "lrandom ~> 20180729-1"
}
build = {
    type = "builtin",
    modules = {
    ["kong.plugins.oidc.filter"] = "kong/plugins/oidc/filter.lua",
    ["kong.plugins.oidc.handler"] = "kong/plugins/oidc/handler.lua",
    ["kong.plugins.oidc.schema"] = "kong/plugins/oidc/schema.lua",
    ["kong.plugins.oidc.session"] = "kong/plugins/oidc/session.lua",
    ["kong.plugins.oidc.utils"] = "kong/plugins/oidc/utils.lua"
    }
}