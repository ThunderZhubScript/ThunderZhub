-- สร้างตารางเก็บ PlaceId และลิงก์ของสคริปต์
local allowedMaps = {
    [16732694052] = "https://raw.githubusercontent.com/ThunderZhubScript/ThunderZ-hub/main/ThunderZhub-Fisch.lua",  -- Fisch
    [13827198708] = "https://raw.githubusercontent.com/ThunderZhubScript/ThunderZ-hub/main/ThunderZhub-Pull-a-Sword.lua",  -- Pull a Sword
    [17534163435] = "https://raw.githubusercontent.com/ThunderZhubScript/ThunderZ-hub/refs/heads/main/Dungeon-RNG.lua", -- Dungeon RNG
    [110829983956014] = "https://raw.githubusercontent.com/ThunderZhubScript/ThunderZ-hub/refs/heads/main/ThunderZhub-Anime-Card-Clash.lua" -- Anime Card Clash
}

-- ตรวจสอบ PlaceId ของแมพที่กำลังเล่น
local placeId = game.PlaceId

-- เช็คว่า PlaceId ที่กำลังเล่นอยู่มีในลิสต์ที่อนุญาตไหม
if allowedMaps[placeId] then
    -- โหลดและรันสคริปต์จาก URL
    loadstring(game:HttpGet(allowedMaps[placeId]))()
else
    -- ถ้า PlaceId ไม่ตรงกับที่กำหนด, เตะผู้เล่นออกจากเกม
    game:Shutdown()
end
