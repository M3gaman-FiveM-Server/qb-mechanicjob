Config = {}
Config.RequireJob = true                       -- do you need a mech job to use parts?
Config.FuelResource = 'LegacyFuel'             -- supports any that has a GetFuel() and SetFuel() export

Config.PaintTime = 5                           -- how long it takes to paint a vehicle in seconds
Config.ColorFavorites = false                  -- add your own colors to the favorites menu (see bottom of const.lua)

Config.NitrousBoost = 1.8                      -- how much boost nitrous gives (want this above 1.0)
Config.NitrousUsage = 0.1                      -- how much nitrous is used per frame while holding key

Config.UseDistance = true                      -- enable/disable saving vehicle distance
Config.UseDistanceDamage = true                -- damage vehicle engine health based on vehicle distance
Config.UseWearableParts = true                 -- enable/disable wearable parts
Config.WearablePartsChance = 1                 -- chance of wearable parts being damaged while driving if enabled
Config.WearablePartsDamage = math.random(1, 2) -- how much wearable parts are damaged when damaged if enabled
Config.DamageThreshold = 25                    -- how worn a part needs to be or below to apply an effect if enabled
Config.WarningThreshold = 50                   -- how worn a part needs to be to show a warning color in toolbox if enabled

Config.MinimalMetersForDamage = {              -- unused if Config.UseDistanceDamage is false
    { min = 5000,  max = 10000, damage = 10 },
    { min = 15000, max = 20000, damage = 20 },
    { min = 25000, max = 30000, damage = 30 },
}

Config.WearableParts = { -- unused if Config.UseWearableParts is false (feel free to add/remove parts)
    radiator = { label = Lang:t('menu.radiator_repair'), maxValue = 100, repair = { steel = 2 } },
    axle = { label = Lang:t('menu.axle_repair'), maxValue = 100, repair = { aluminum = 2 } },
    brakes = { label = Lang:t('menu.brakes_repair'), maxValue = 100, repair = { copper = 2 } },
    clutch = { label = Lang:t('menu.clutch_repair'), maxValue = 100, repair = { copper = 2 } },
    fuel = { label = Lang:t('menu.fuel_repair'), maxValue = 100, repair = { plastic = 2 } },
}

Config.Shops = {
    lsmechanic = { -- City location
        managed = true,
        shopLabel = 'LS Customs',
        showBlip = true,
        blipSprite = 72,
        blipColor = 46,
        blipCoords = vector3(-346.02, -130.68, 39.02),
        duty = vector3(-348.18, -134.55, 39.59),
        stash = vector3(-329.73, -127.02, 39.28),
        paint = vector3(-324.11, -147.11, 39.10),
        vehicles = {
            withdraw = vector3(-354.13, -128.34, 39.54),
            spawn = vector4(-369.65, -107.8, 38.65, 70.52),
            list = { 'flatbed', 'towtruck', 'minivan', 'blista' }
        },
    },
    lsmechanic2 = { -- Harmony Location
        managed = true,
        shopLabel = 'LS Customs',
        showBlip = true,
        blipSprite = 72,
        blipColor = 46,
        blipCoords = vector3(1174.93, 2639.45, 37.75),
        duty = vector3(1189.29, 2641.9, 38.45),
        stash = vector3(1178.99, 2638.41, 38.11),
        paint = vector3(1181.29, 2634.69, 37.80),
        vehicles = {
            withdraw = vector3(1185.63, 2646.01, 37.91),
            spawn = vector4(1188.18, 2657.56, 37.79, 316.74),
            list = { 'flatbed', 'towtruck', 'minivan', 'blista' }
        },
    },
    airmechanic = { -- Airport Location
        managed = true,
        shopLabel = 'LS Customs',
        showBlip = true,
        blipSprite = 72,
        blipColor = 46,
        blipCoords = vector3(-1154.92, -2006.41, 13.18),
        duty = vector3(-1149.17, -1998.27, 13.91),
        stash = vector3(-1146.40, -2002.05, 13.19),
        paint = vector3(-1170.60, -2014.90, 13.23),
        vehicles = {
            withdraw = vector3(-1142.04, -1994.58, 13.26),
            spawn = vector4(-1137.42, -1993.26, 13.14, 226.07),
            list = { 'flatbed', 'towtruck', 'minivan', 'blista' }
        },
    },
    lsmechanic3 = { -- East Location
        managed = true,
        shopLabel = 'LS Customs',
        showBlip = true,
        blipSprite = 72,
        blipColor = 46,
        blipCoords = vector3(733.58, -1088.72, 22.17),
        duty = vector3(724.58, -1068.96, 28.95),
        stash = vector3(738.25, -1081.39, 22.61),
        paint = vector3(737.22, -1068.77, 22.34),
        vehicles = {
            withdraw = vector3(723.29, -1069.58, 23.21),
            spawn = vector4(716.09, -1072.63, 22.26, 0.04),
            list = { 'flatbed', 'towtruck', 'minivan', 'blista' }
        },
    },
    delmechanic = { -- Del Pierro
        managed = true,
        shopLabel = 'Del Pierro Garage',
        showBlip = true,
        blipSprite = 72,
        blipColor = 46,
        blipCoords = vector3(-1620.22, -831.79, 10.1),
        duty = vector3(-1604.63, -839.77, 10.17),
        stash = vector3(-1607.32, -838.93, 10.55),
        paint = vector3(-1631.2, -823.73, 9.85),
        vehicles = {
            withdraw = vector3(-1603.56, -837.15, 10.24),
            spawn = vector4(-1602.43, -843.85, 10.08, 322.7),
            list = { 'flatbed', 'towtruck', 'minivan', 'blista' }
        },
    },
    sandymechanic = { -- Sandy Gang Mechanic
        managed = true,
        shopLabel = 'Sandy Shores Garage',
        showBlip = true,
        blipSprite = 72,
        blipColor = 46,
        blipCoords = vector3(2290.03, 3938.19, 37.12),
        duty = vector3(2308.72, 3949.88, 37.0),
        stash = vector3(2307.19, 3951.72, 37.14),
        paint = vector3(2312.03, 3945.32, 36.87),
        vehicles = {
            withdraw = vector3(2303.34, 3926.19, 37.31),
            spawn = vector4(2304.55, 3905.88, 37.1, 308.63),
            list = { 'flatbed', 'towtruck', 'minivan', 'blista' }
        },
    },
    cayomechanic = { -- cayo perico Mechanic
        managed = true,
        shopLabel = 'Cayo Perico Garage',
        showBlip = true,
        blipSprite = 72,
        blipColor = 46,
        blipCoords = vector3(5175.78, -4662.94, 2.54),
        duty = vector3(5176.37, -4669.04, 2.44),
        stash = vector3(5177.52, -4662.94, 2.44),
        paint = vector3(5178.77, -4656.67, 2.45),
        vehicles = {
            withdraw = vector3(5170.24, -4664.65, 2.39),
            spawn = vector4(5181.13, -4660.38, 2.53, 353.3),
            list = { 'flatbed', 'towtruck', 'minivan', 'blista' }
        },
    },
    autoexoticmechanic = { --  Auto Exotic Mechanic
        managed = true,
        shopLabel = ' Auto Exotic Garage',
        showBlip = true,
        blipSprite = 72,
        blipColor = 46,
        blipCoords = vector3(549.63, -199.2, 54.51),
        duty = vector3(535.05, -169.16, 54.9),
        stash = vector3(544.08, -166.27, 57.87),
        paint = vector3(561.03, -169.95, 54.67),
        vehicles = {
            withdraw = vector3(540.4, -186.15, 53.87),
            spawn = vector4(537.4, -184.2, 54.4, 90.1),
            list = { 'flatbed', 'towtruck', 'minivan', 'blista' }
        },
    },
    dealermechanic = { --  Car Dealer Mechanic
        managed = true,
        shopLabel = 'Premium Deluxe Motorsport Dealership',
        showBlip = true,
        blipSprite = 72,
        blipColor = 46,
        blipCoords = vector3(-29.59, -1087.61, 26.44),
        duty = vector3(-27.3, -1104.17, 26.72),
        stash = vector3(-35.45, -1083.65, 26.75),
        paint = vector3(-37.69, -1091.73, 26.26),
        vehicles = {
            withdraw = vector3(-26.43, -1088.67, 26.29),
            spawn = vector4(-19.18, -1101.92, 26.67, 158.39),
            list = { 'flatbed', 'towtruck', 'minivan', 'blista' }
        },
    },
    dealermechanic2 = { -- Paleto Car Dealer Mechanic
        managed = true,
        shopLabel = 'Paleto Car Dealership',
        showBlip = true,
        blipSprite = 72,
        blipColor = 46,
        blipCoords = vector3(69.62, 6558.19, 31.62),
        duty = vector3(68.76, 6561.9, 31.81),
        stash = vector3(71.04, 6546.75, 31.73),
        paint = vector3(81.68, 6555.76, 31.49),
        vehicles = {
            withdraw = vector3(69.39, 6548.78, 31.45),
            spawn = vector4(64.77, 6544.42, 31.66, 227.76),
            list = { 'flatbed', 'towtruck', 'minivan', 'blista' }
        },
    },
    bennys = { -- Default Bennys Location
        managed = true,
        shopLabel = 'Benny\'s Motorworks',
        showBlip = true,
        blipSprite = 72,
        blipColor = 46,
        blipCoords = vector3(-211.73, -1325.28, 30.89),
        duty = vector3(-202.92, -1313.74, 31.70),
        stash = vector3(-228.3, -1322.86, 31.28),
        paint = vector3(-202.42, -1322.16, 31.29),
        vehicles = {
            withdraw = vector3(-210.42, -1310.6, 31.57),
            spawn = vector4(-370.51, -107.88, 38.35, 72.56),
            list = { 'flatbed', 'towtruck', 'minivan', 'blista' }
        },
    },
    beeker = { -- Paleto Location
        managed = true,
        shopLabel = 'Beeker\'s Garage',
        showBlip = true,
        blipSprite = 72,
        blipColor = 46,
        blipCoords = vector3(109.95, 6627.34, 31.79),
        duty = vector3(101.74, 6620.04, 32.95),
        stash = vector3(107.00, 6629.88, 31.81),
        paint = vector3(102.17, 6626.08, 31.79),
        vehicles = {
            withdraw = vector3(107.08, 6614.90, 31.96),
            spawn = vector4(110.91, 6609.32, 31.81, 315.11),
            list = { 'flatbed', 'towtruck', 'minivan', 'blista' }
        },
    },
    gangmechanic = { -- gang Location
        managed = true,
        shopLabel = 'Gang Garage',
        showBlip = true,
        blipSprite = 72,
        blipColor = 46,
        blipCoords = vector3(-2564.52, 1881.2, 167.73),
        duty = vector3(-2577.98, 1880.52, 167.89),
        stash = vector3(-2572.55, 1871.91, 167.8),
        paint = vector3(-2578.26, 1869.21, 167.8),
        vehicles = {
            withdraw = vector3(-2563.15, 1887.16, 167.66),
            spawn = vector4(-2549.65, 1878.28, 166.89, 204.14),
            list = { 'flatbed', 'towtruck', 'minivan', 'blista' }
        },
    },
    taximechanic = { -- Taxi Location
        managed = true,
        shopLabel = 'Taxi Garage',
        showBlip = true,
        blipSprite = 72,
        blipColor = 46,
        blipCoords = vector3(895.83, -154.6, 76.56),
        duty = vector3(893.96, -167.9, 74.17),
        stash = vector3(887.58, -177.12, 74.82),
        paint = vector3(888.49, -163.79, 76.87),
        vehicles = {
            withdraw = vector3(893.39, -145.03, 76.59),
            spawn = vector4(913.14, -143.14, 76.07, 238.98),
            list = { 'flatbed', 'towtruck', 'minivan', 'blista' }
        },
    },
}
