-- สร้างตารางเก็บ PlaceId และลิงก์ของสคริปต์
local allowedMaps = {
    [16732694052] = "https://raw.githubusercontent.com/ThunderZhubScript/ThunderZ-hub/main/ThunderZhub-Fisch.lua",  -- Fisch
    [87854376962069] = "https://raw.githubusercontent.com/ThunderZhubScript/ThunderZ-hub/main/ThunderZhub-The1.000.000GlassBridge.lua",  -- The $1,000,000 Glass Bridge
    [16993432698] = "https://raw.githubusercontent.com/ThunderZhubScript/ThunderZ-hub/main/ThunderZhub-Impossible-Squid-Game-Glass-Bridge-2.lua",  -- Impossible Squid Game! Glass Bridge 2
    [13827198708] = "https://raw.githubusercontent.com/ThunderZhubScript/ThunderZ-hub/main/ThunderZhub-Pull-a-Sword.lua"  -- Pull a Sword
}

-- ตรวจสอบ PlaceId ของแมพที่กำลังเล่น
local placeId = game.PlaceId
print("PlaceId ที่กำลังเล่นอยู่:", placeId)  -- พิมพ์ PlaceId เพื่อตรวจสอบ

-- เช็คว่า PlaceId ที่กำลังเล่นอยู่มีในลิสต์ที่อนุญาตไหม
if allowedMaps[placeId] then
    -- โหลดและรันสคริปต์จาก URL
    print("กำลังโหลดสคริปต์จาก URL:", allowedMaps[placeId])
    loadstring(game:HttpGet(allowedMaps[placeId]))()
else
    warn("ไม่สามารถรันสคริปต์ในแมพนี้ได้, PlaceId:", placeId)
end
