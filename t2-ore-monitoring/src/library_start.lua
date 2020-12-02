function roundWithUnit(num, unit)
    if num > 10000 then
        return string.format("%.2f K" .. unit, num / 1000)
    else
        return string.format("%.2f " .. unit, num)
    end
end

function roundPourcentage(num) return string.format("%.0f", num) end

function getContainerMaxVolume(containerType, containerNumber)
    if containerType == "L" then
        return 153600 * containerNumber
    elseif containerType == "M" then
        return 76800 * containerNumber
    else
        return 7900 * containerNumber
    end
end
