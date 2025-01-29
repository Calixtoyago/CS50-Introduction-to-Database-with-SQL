CREATE INDEX IF NOT EXISTS "search_users_by_last_login"
ON "users"("last_login_date");

CREATE INDEX IF NOT EXISTS "search_messages_by_from_user_id"
ON "messages"("from_user_id");

CREATE INDEX IF NOT EXISTS "search_messages_by_to_user_id"
ON "messages"("to_user_id");
