FROM node:20 AS builder

WORKDIR /app

COPY . .

RUN corepack enable && corepack prepare pnpm@latest --activate
RUN pnpm install
RUN pnpm run build -- --base=/bip47-verifier/

FROM nginx:alpine

COPY --from=builder /app/dist /usr/share/nginx/html/bip47-verifier

RUN echo 'server {\n\
  listen 80;\n\
  location /bip47-verifier/ {\n\
    try_files $uri $uri/ /bip47-verifier/index.html;\n\
  }\n\
}' > /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
