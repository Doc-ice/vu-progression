function CreateProgressionTable()
    local query = [[
    CREATE TABLE IF NOT EXISTS player_rankings_table (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        player_name TEXT,
        player_guid TEXT,
        player_kills INTEGER,
        player_deaths INTEGER,
        player_level INTEGER,
        player_current_xp INTEGER,
        player_assault_level INTEGER,
        player_assault_current_xp INTEGER,
        player_engineer_level INTEGER,
        player_engineer_current_xp INTEGER,
        player_support_level INTEGER,
        player_support_current_xp INTEGER,
        player_recon_level INTEGER,
        player_recon_current_xp INTEGER,
        weapon_progression BLOB
    )
    ]]

    if not SQL:Open() then
        return
    end

    if not SQL:Query(query) then
        print('Failed to execute query: ' .. SQL:Error())
        return
    end

    -- local query = [[
    -- CREATE TABLE IF NOT EXISTS test_table (
    --     id INTEGER PRIMARY KEY AUTOINCREMENT,
    --     text_value TEXT,
    --     int_value INTEGER,
    --     real_value REAL,
    --     blob_value BLOB,
    --     some_null_value BLOB,
    --     not_null_text TEXT NOT NULL
    -- )
    -- ]]
    -- SQL:Close()
end