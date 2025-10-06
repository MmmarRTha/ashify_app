# 🎵 Ashify

A music database application built with the Ash Framework and Phoenix LiveView. Think of it as a lightweight Spotify without the music playback, where users can browse catalogs of artists and albums, follow their favorites, and receive real-time notifications.

## ✨ Features

- 🎼 **Music Catalog**: Browse artists, albums, and tracks with advanced search, sorting, and pagination
- 🔐 **User Authentication**: Multiple authentication strategies including username/password and magic links
- 👥 **Social Features**: Follow favorite artists and receive notifications for new releases
- 🛡️ **Role-Based Access**: Customizable permissions and management capabilities
- ⚡ **Real-Time Updates**: Live notifications using PubSub for instant updates
- 🚀 **REST & GraphQL APIs**: Auto-generated APIs for third-party integrations
- 📝 **Nested Forms**: Complex form handling with drag-and-drop reordering

## 🛠️ Tech Stack

- 🔥 **Ash Framework**: Domain modeling and business logic
- 🌟 **Phoenix LiveView**: Real-time web interface
- 🐘 **PostgreSQL**: Database with Ash Postgres integration
- 🎨 **Tailwind CSS**: Styling and responsive design

## 📚 Development Journey

This project is being built by following the chapters of the "Real-Time Web Applications with the Ash Framework" book.

Checklist of the progress based on the book's chapters:

- [ ] **✅ Chapter 1: Building Our First Resource**
  - Set up the Tunez starter app.
  - Install and configure Ash.
  - Get familiar with CRUD actions.
  - Build a full resource with attributes, actions, and a database table.
  - Integrate actions into the web UI using forms and code interfaces.

- [ ] **🔗 Chapter 2: Extending Resources with Business Logic**
  - Create a second resource and link resources with relationships.
  - Cover advanced features like preparations, validations, identities, and changes.

- [ ] **🔍 Chapter 3: Creating a Better Search UI**
  - Implement features for searching, sorting, and pagination.
  - Derive new attributes with calculations and aggregates.

- [ ] **🔌 Chapter 4: Generating APIs Without Writing Code**
  - Create full REST JSON and GraphQL APIs from existing resources.

- [ ] **🔐 Chapter 5: Authentication: Who Are You?**
  - Set up authentication using AshAuthentication (username/password, magic link).
  - Customize auto-generated liveviews.

- [ ] **✅ Chapter 6: Authorization: What Can You Do?**
  - Introduce authorization using policies and bypasses.
  - Define a policy once and use it throughout the app.

- [ ] **🧪 Chapter 7: Testing Your Application**
  - Cover testing strategies for Ash and LiveView apps.
  - Use tools provided by Ash for testing.

- [ ] **🧩 Chapter 8: Having Fun With Nested Forms**
  - Expand the domain model and build a nested form with drag and drop re-ordering.

- [ ] **❤️ Chapter 9: Following Your Favorite Artists**
  - Explore many-to-many relationships for users to follow artists.
  - Improve code interfaces for following and unfollowing.

- [ ] **📣 Chapter 10: Delivering Real-Time Updates with PubSub**
  - Build a user notification system with bulk actions and pubsub for real-time updates.

## 🚀 Getting Started

### 📋 Prerequisites

• Elixir 1.15
• Erlang 26.0
• PostgreSQL 14.0

### 💻 Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd ashify
   ```

2. Install dependencies:
   ```bash
   mix setup
   ```

3. Start the Phoenix server:
   ```bash
   mix phx.server
   ```

4. Visit [`localhost:4000`](http://localhost:4000) in your browser

For interactive development, use:
```bash
iex -S mix phx.server
```

## 🎯 Key Concepts Demonstrated

- **Domain Modeling**: Using Ash resources to model the music domain
- **Relationship Management**: Artist-album relationships and user follows
- **Policy-Based Security**: Unified authorization across web and API layers
- **Code Interfaces**: Clean, testable business logic functions
- **Real-Time Features**: Live updates without complex WebSocket management

## 🌐 API Access

Ashify automatically generates:
- **REST API**: Available at `/api` endpoints
- **GraphQL API**: Interactive playground at `/graphql`

Authentication required for most endpoints. See the API documentation for details.

## 🧪 Testing

Run the test suite:
```bash
mix test
```

For test coverage:
```bash
mix test --cover
```

## 📖 Learn More

### 🔥 Ash Framework
- [Ash Documentation](https://hexdocs.pm/ash)
- [Ash Guides](https://ash-hq.org/docs/guides/ash/latest/tutorials/get-started)

### 🌟 Phoenix Framework
- [Phoenix Documentation](https://hexdocs.pm/phoenix)
- [Phoenix Guides](https://hexdocs.pm/phoenix/overview.html)
