-- À exécuter une seule fois dans Supabase : SQL Editor > New query > Run
create table if not exists public.clips (
  id uuid primary key default gen_random_uuid(),
  youtube_id text not null unique,
  title text not null,
  artist text not null,
  genre text not null,
  duration text,
  spotify_url text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

alter table public.clips enable row level security;

revoke all on table public.clips from anon;
grant select on table public.clips to anon;
grant select, insert, update, delete on table public.clips to authenticated;

create policy "Public can read clips"
on public.clips for select to anon, authenticated using (true);

create policy "Authenticated admins can insert clips"
on public.clips for insert to authenticated with check (true);

create policy "Authenticated admins can update clips"
on public.clips for update to authenticated using (true) with check (true);

create policy "Authenticated admins can delete clips"
on public.clips for delete to authenticated using (true);

insert into public.clips (youtube_id, title, artist, genre, duration)
values
  ('Ses4nRv7IQI', 'IGBO (Clip officiel)', 'Didi B', 'Rap', '3:17'),
  ('QdE6prr6hjI', 'Ma dernière relation (Clip officiel)', 'Roseline Layo', 'Afropop', '4:11'),
  ('v4Xs9NnP40Q', 'Sérénade de nuit', 'Mister Y', 'Coupé-décalé', '3:44'),
  ('dQw4w9WgXcQ', 'Le rythme du quartier', 'Koffi', 'Gospel', '4:05')
on conflict (youtube_id) do nothing;
