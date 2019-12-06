FROM kong:1.3-centos
ENV KONG_PLUGINS="bundled, oidc, jwt-keycloak"
RUN yum install -y git && luarocks install kong-oidc-ws-rbac 0.0.2-0 && luarocks install kong-plugin-jwt-keycloak

