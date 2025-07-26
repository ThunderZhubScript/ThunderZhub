-- สร้างตารางเก็บ PlaceId และลิงก์ของสคริปต์
local allowedMaps = {
    [16732694052] = "https://github.com/ThunderZhubScript/ThunderZ-hub/blob/main/ThunderZhub-Fisch.lua",  -- Fisch
    [17534163435] = "https://raw.githubusercontent.com/ThunderZhubScript/ThunderZ-hub/refs/heads/main/ThunderZhub-Dungeon-RNG.lua", -- Dungeon RNG
    [110829983956014] = "https://raw.githubusercontent.com/ThunderZhubScript/ThunderZ-hub/refs/heads/main/ThunderZhub-Anime-Card-Clash.lua", -- Anime Card Clash
    [4520749081] = "https://raw.githubusercontent.com/ThunderZhubScript/ThunderZ-hub/refs/heads/main/ThunderZhub-King-Legacy.lua", -- King legacy
    [13827198708] = "https://github.com/ThunderZhubScript/ThunderZ-hub/blob/main/ThunderZhub-Pull-a-SwordV2.lua", -- Pull a SwordV2
    [123741668193208] = "https://raw.githubusercontent.com/ThunderZhubScript/ThunderZ-hub/refs/heads/main/ThunderZhub-The-1.000.000-Jump-Rope" -- The 1,000,000 Jump Rope
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
