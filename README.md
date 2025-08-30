# LifeXP

LifeXP gamifies your everyday life by awarding experience points (XP) for completing tasks. At the end of each day, 
your performance determines how much free time you unlock, making productivity both fun and rewarding.

## Business Description

LifeXP is a productivity platform that motivates users to achieve their goals by turning daily routines into a game. 
Users earn XP for productive activities and lose XP for non-productive activities. The system calculates and notifies 
users of their available free time based on their daily performance.

### Functional Requirements
- Manage user profiles (create, update, read, delete)
- Configure sleep and wake-up times
- Set coefficients for factors such as exhaustion, stress, illness, vacations, holidays, and deadlines
- Award XP for completing tasks
- Deduct XP for time spent on non-productive activities
- Calculate free time based on XP at the end of each day
- Notify users about their available free time
- Provide a dashboard to track progress and statistics
- [Big Picture Event Storming](docs/diagrams/big-picture-event-storming.png)

### Non-Functional Requirements
- Mobile-friendly design with strong iOS support (and other devices preferred)
- 99.99% uptime SLA
- Designed for future extensibility and development
- WCAG accessibility compliance

## Technology Stack
- **Frontend:** Server-side rendered XHTML and TypeScript
- **Backend:** Azure Functions (Python)
- **Database:** PostgreSQL
- **Hosting:** Azure Functions and Azure Database for PostgreSQL
- **CI/CD:** GitHub Actions
- **Monitoring:** Azure Monitor and Application Insights
- **Authentication:** Azure AD B2C

*This technology stack ensures cross-platform reach, modularity, and cost efficiency.*

## Architecture & Design (In progress)
- [Design Level Event Storming](docs/diagrams/design-level-event-storming.png)
- C1/C2/C3/C4 Diagrams (TODO)
- Architecture Decision Records (TODO)