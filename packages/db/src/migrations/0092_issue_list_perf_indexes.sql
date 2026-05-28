CREATE INDEX IF NOT EXISTS "issues_company_unhidden_updated_idx" ON "issues" ("company_id","updated_at" DESC) WHERE "hidden_at" IS NULL;
--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "issues_company_created_by_user_idx" ON "issues" ("company_id","created_by_user_id") WHERE "created_by_user_id" IS NOT NULL;
