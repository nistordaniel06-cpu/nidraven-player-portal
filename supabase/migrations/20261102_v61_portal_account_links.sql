-- NIDRAVEN V6.1: link portal identities to existing game accounts.
-- Apply after reviewing the account-linking flow. Do NOT auto-link by username.
create table if not exists nidraven_game.portal_account_links (
  user_id uuid primary key references auth.users(id) on delete cascade,
  account_id bigint not null unique references nidraven_game.accounts(id) on delete cascade,
  linked_at timestamptz not null default now()
);
alter table nidraven_game.portal_account_links enable row level security;
revoke all on nidraven_game.portal_account_links from anon, authenticated;
-- Links must be established by a trusted server after verifying game account ownership.
-- Never allow clients to insert arbitrary account_id mappings.
