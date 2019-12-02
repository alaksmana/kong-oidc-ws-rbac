FROM kong:1.3
ENV KONG_PLUGINS="bundled, oidc, rbac"
RUN apk add git && luarocks install kong-oidc-ws-rbac 0.0.2-0 && luarocks install kong-plugin-rbac

