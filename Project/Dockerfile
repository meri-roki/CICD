# # Install dependencies only when needed
FROM node:18-alpine AS deps
RUN apk update && apk add --no-cache gitRUN apk add --no-cache libc6-compat
RUN mkdir /app
WORKDIR /app
RUN ls -lsah
COPY package.json ./
COPY . .
RUN yarn install

# # Rebuild the source code only when needed
FROM node:18-alpine AS builder
WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY ./.env ./.env
COPY . .
RUN yarn build

# # Production image, copy all the files and run next
ROM node:18-alpine AS runner
WORKDIR /app
ENV NODE_ENV development
COPY package*.json ./
COPY vite.config.ts ./
COPY --from=builder /app/.env ./.env
COPY --from=builder /app/node_modules ./node_modules

EXPOSE 3000


CMD ["yarn", "preview"]

