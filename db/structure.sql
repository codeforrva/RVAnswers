CREATE TABLE "articles" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "updated" datetime, "title" varchar(255), "created_at" datetime, "updated_at" datetime, "content_type" varchar(255), "preview" text, "tags" text, "slug" varchar(255), "category_id" integer, "access_count" integer DEFAULT 0, "author_name" varchar(255), "author_link" varchar(255), "old_type" varchar(255), "render_markdown" boolean DEFAULT 't', "content_main" text, "status" varchar(255) DEFAULT 'Draft', "title_es" varchar(255), "preview_es" text, "content_main_es" text, "title_cn" varchar(255), "preview_cn" text, "content_main_cn" text, "user_id" integer);
CREATE TABLE "categories" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "access_count" integer, "created_at" datetime, "updated_at" datetime, "article_id" integer, "description" text, "slug" varchar(255), "user_id" integer);
CREATE TABLE "friendly_id_slugs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "slug" varchar(255) NOT NULL, "sluggable_id" integer NOT NULL, "sluggable_type" varchar(40), "created_at" datetime);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE INDEX "index_articles_on_slug" ON "articles" ("slug");
CREATE UNIQUE INDEX "index_categories_on_slug" ON "categories" ("slug");
CREATE UNIQUE INDEX "index_friendly_id_slugs_on_slug_and_sluggable_type" ON "friendly_id_slugs" ("slug", "sluggable_type");
CREATE INDEX "index_friendly_id_slugs_on_sluggable_id" ON "friendly_id_slugs" ("sluggable_id");
CREATE INDEX "index_friendly_id_slugs_on_sluggable_type" ON "friendly_id_slugs" ("sluggable_type");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20120416181217');

INSERT INTO schema_migrations (version) VALUES ('20120424172229');

INSERT INTO schema_migrations (version) VALUES ('20120430224632');

INSERT INTO schema_migrations (version) VALUES ('20120430232605');

INSERT INTO schema_migrations (version) VALUES ('20120501181542');

INSERT INTO schema_migrations (version) VALUES ('20120501181544');

INSERT INTO schema_migrations (version) VALUES ('20120501191040');

INSERT INTO schema_migrations (version) VALUES ('20120628194351');

INSERT INTO schema_migrations (version) VALUES ('20120628200512');

INSERT INTO schema_migrations (version) VALUES ('20120628203747');

INSERT INTO schema_migrations (version) VALUES ('20120629070448');

INSERT INTO schema_migrations (version) VALUES ('20120629072846');

INSERT INTO schema_migrations (version) VALUES ('20120629140930');

INSERT INTO schema_migrations (version) VALUES ('20120629143105');

INSERT INTO schema_migrations (version) VALUES ('20120701155314');

INSERT INTO schema_migrations (version) VALUES ('20120702150748');

INSERT INTO schema_migrations (version) VALUES ('20120702150749');

INSERT INTO schema_migrations (version) VALUES ('20120702165334');

INSERT INTO schema_migrations (version) VALUES ('20120702171830');

INSERT INTO schema_migrations (version) VALUES ('20120706171506');

INSERT INTO schema_migrations (version) VALUES ('20120706172717');

INSERT INTO schema_migrations (version) VALUES ('20120706173031');

INSERT INTO schema_migrations (version) VALUES ('20120706193649');

INSERT INTO schema_migrations (version) VALUES ('20120707184743');

INSERT INTO schema_migrations (version) VALUES ('20120707190634');

INSERT INTO schema_migrations (version) VALUES ('20120714144317');

INSERT INTO schema_migrations (version) VALUES ('20120727004822');

INSERT INTO schema_migrations (version) VALUES ('20120727052215');

INSERT INTO schema_migrations (version) VALUES ('20120727124910');

INSERT INTO schema_migrations (version) VALUES ('20120730225526');

INSERT INTO schema_migrations (version) VALUES ('20120807200215');

INSERT INTO schema_migrations (version) VALUES ('20120807233918');

INSERT INTO schema_migrations (version) VALUES ('20120807235112');

INSERT INTO schema_migrations (version) VALUES ('20120817231009');

INSERT INTO schema_migrations (version) VALUES ('20121010140714');

INSERT INTO schema_migrations (version) VALUES ('20121026145929');

INSERT INTO schema_migrations (version) VALUES ('20121028193745');

INSERT INTO schema_migrations (version) VALUES ('20121106123303');

INSERT INTO schema_migrations (version) VALUES ('20121107003920');

INSERT INTO schema_migrations (version) VALUES ('20121107014855');

INSERT INTO schema_migrations (version) VALUES ('20121107020439');

INSERT INTO schema_migrations (version) VALUES ('20121108074632');

INSERT INTO schema_migrations (version) VALUES ('20130703215958');

INSERT INTO schema_migrations (version) VALUES ('20140527211609');

INSERT INTO schema_migrations (version) VALUES ('20140612000350');

INSERT INTO schema_migrations (version) VALUES ('20140612182223');

INSERT INTO schema_migrations (version) VALUES ('20140612215820');

INSERT INTO schema_migrations (version) VALUES ('20140613000708');

INSERT INTO schema_migrations (version) VALUES ('20140613213920');

INSERT INTO schema_migrations (version) VALUES ('20140617002215');

INSERT INTO schema_migrations (version) VALUES ('20140702201454');

INSERT INTO schema_migrations (version) VALUES ('20140715180713');

