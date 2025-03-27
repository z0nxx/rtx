-- Получаем сервис Lighting
local lighting = game:GetService("Lighting")

-- Настраиваем базовое освещение
lighting.ClockTime = 12 -- Устанавливаем время на полдень (12:00)
lighting.Brightness = 1.5 -- Увеличиваем яркость сцены

-- Добавляем световые лучи через SunRaysEffect
local sunRays = Instance.new("SunRaysEffect")
sunRays.Intensity = 0.25 -- Интенсивность лучей
sunRays.Spread = 0.6 -- Распространение лучей
sunRays.Parent = lighting

-- Настраиваем отражения на всех предметах
for _, part in pairs(workspace:GetDescendants()) do
    if part:IsA("BasePart") then
        part.Reflectance = 0.3 -- Устанавливаем отражение на 30%
    end
end

-- Сообщение о запуске
print("Красивая графика активирована: отражения и световые лучи!")
