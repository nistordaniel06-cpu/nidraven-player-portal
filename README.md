# NIDRAVEN Player Portal

Official player portal and Founder Command Center for **NIDRAVEN — Forge Your Legend**.

## Status

- V5 currently deployed on Vercel: https://nidraven-player-portal-4-men.vercel.app
- Supabase Auth, player profiles and Founder roles are implemented.
- V5.1 premium dashboard and Git-based deployment are next.
- Game server integration is not implemented yet.

## Security

Supabase project NOVA Trade is temporarily shared for testing. Never commit secret/service-role keys. Preserve all NOVA Trade tables. Founder permissions must be checked in PostgreSQL, not just in the browser.

## Deployment

Connect this repository to the existing Vercel project `nidraven-player-portal`. The website currently running on Vercel was deployed separately and is not yet synced to this repository.
