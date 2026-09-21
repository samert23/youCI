/* Client Supabase public : utilisable depuis le navigateur. */
window.youciSupabase = window.supabase.createClient(
  'https://zevbcoczmluzhtoaxgof.supabase.co',
  'sb_publishable_QZACVnTTRvr16t5MyfP6Fw_NQZ-Kqnp',
  {
    auth: {
      persistSession: true,
      autoRefreshToken: true,
      detectSessionInUrl: true
    }
  }
);
