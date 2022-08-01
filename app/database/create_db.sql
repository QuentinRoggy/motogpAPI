BEGIN;
-- D'abord, on supprime les tables si elles existent
DROP TABLE IF EXISTS competitor, nationality, team, championship, constructor, season, stage, track, session_type, "session", position, result;

CREATE TABLE IF NOT EXISTS nationality (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  nationality TEXT NOT NULL,
  country_code TEXT NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ
);

CREATE TABLE IF NOT EXISTS championship (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" TEXT NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ
);

CREATE TABLE IF NOT EXISTS constructor (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" TEXT NOT NULL,
  model TEXT,
  "engine" TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ
);

CREATE TABLE IF NOT EXISTS team (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" TEXT NOT NULL,
  constructor_id INTEGER REFERENCES constructor(id),
  is_official BOOLEAN NOT NULL DEFAULT FALSE,
  championship_id INTEGER REFERENCES championship(id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ
);

CREATE TABLE IF NOT EXISTS competitor (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  last_name TEXT NOT NULL,
  first_name TEXT NOT NULL,
  race_number INTEGER NOT NULL,
  gender TEXT,
  birthday TIMESTAMPTZ,
  nationality_id INTEGER REFERENCES nationality(id),
  team_id INTEGER REFERENCES team(id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ
);

CREATE TABLE IF NOT EXISTS season (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" TEXT NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ
);

CREATE TABLE IF NOT EXISTS track (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" TEXT NOT NULL,
  city TEXT,
  country_id INTEGER REFERENCES nationality(id),
  url_official TEXT,
  curves_left INTEGER,
  curves_right INTEGER,
  "length" INTEGER,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ
);

CREATE TABLE IF NOT EXISTS stage (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" TEXT NOT NULL,
  scheduled TIMESTAMPTZ,
  scheduled_end TIMESTAMPTZ,
  "status" TEXT,
  track_id INTEGER REFERENCES track(id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ
);



CREATE TABLE IF NOT EXISTS session_type (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" TEXT NOT NULL,
  "type" TEXT NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ
);

CREATE TABLE IF NOT EXISTS "session" (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "type_id" INTEGER REFERENCES session_type(id),
  scheduled TIMESTAMPTZ,
  "status" TEXT,
  stage_id INTEGER REFERENCES stage(id),
  championship_id INTEGER REFERENCES championship(id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ
);

CREATE TABLE IF NOT EXISTS position (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  position TEXT NOT NULL,
  points INTEGER NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ
);

CREATE TABLE IF NOT EXISTS result (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "session_id" INTEGER REFERENCES session(id),
  competitor_id INTEGER REFERENCES competitor(id),
  position_id INTEGER REFERENCES position(id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ
);

COMMIT;