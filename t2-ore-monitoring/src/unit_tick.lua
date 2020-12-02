local limestone_container_type = "L" --export
local limestone_container_number = 1 --export
local malachite_container_type = "L" --export
local malachite_container_number = 1 --export
local chromite_container_type = "L" --export
local chromite_container_number = 1 --export
local natron_container_type = "L" --export
local natron_container_number = 1 --export
local display_alert = true --export
local critical_level_threshold = 1000 --export
local low_level_threshold = 50000 --export


local function buildOre(screen, hub, label, volumicMass, tailleContainer, containerNumber)
    local volumeContainerMax = getContainerMaxVolume(tailleContainer, containerNumber)
    ore = {}
    ore["screen"] = screen
    ore["hub"] = hub
    ore["label"] = label
    ore["volumicMass"] = volumicMass
    ore["volumeMax"] = volumeContainerMax
    return ore
end

local function getOreLevelStatus(currentVolume)
    if  currentVolume <= critical_level_threshold then 
        return "critical"
    elseif currentVolume <= low_level_threshold then 
        return "low"
    else 
        return "high"
    end
end


local ores = {
    buildOre(screenLimestone, hubLimestone, "Limestone", 2.71, limestone_container_type, limestone_container_number),
    buildOre(screenMalachite, hubMalachite, "Malachite", 4, malachite_container_type, malachite_container_number),
    buildOre(screenChromite, hubChromite, "Chromite", 4.54, chromite_container_type, chromite_container_number),
    buildOre(screenNatron, hubNatron, "Natron", 1.55, natron_container_type, natron_container_number)
}

-- html
local style = [[
    <html>
        <head>
            <style>
            html body .main-container {
                margin-top: 100px;
                display: flex;
                align-items: center;
                flex-direction: column;
                height: 560px;
                width: 1000px;
                font-size: 50px;
            }

            html body .main-container.high {
                color: #5fdb25;
            }

            html body .main-container.low {
                color: rgb(238, 238, 37);
            }

            html body .main-container.critical {
                color: rgb(255, 43, 43);
            }

            html body .main-container .subtitle {
                margin-top: 50px;
                font-size: 40px;
            }
            html body .main-container .volume {
                margin-top: 10px;
                font-size: 60px;
                font-weight: bold;
            }
            html body .main-container .gauge {
                border-radius: 20px;
                margin-top: 10px;
                width: 480px;
                height: 50px;
                position: relative;
            }

            html body .main-container .gauge.high {
                border: 2px solid #5fdb25;
            }

            html body .main-container .gauge.low {
                border: 2px solid rgb(238, 238, 37);
            }

            html body .main-container .gauge.critical {
                border: 2px solid  rgb(255, 43, 43);
            }

            html body .main-container .gauge .fuel-level {
                position: absolute;
                border-radius: 20px;
                height: 100%;
                left: 0;
            }

            html body .main-container .gauge .fuel-level.high {
                background-color: #5fdb25;
            }

            html body .main-container .gauge .fuel-level.low {
                background-color: rgb(238, 238, 37);
            }

            html body .main-container .gauge .fuel-level.critical {
                background-color:  rgb(255, 43, 43);
            }
            </style>
       </head>
   ]]

for i = 1, 4 do

    local currentOre = ores[i]
    local currentOreMass = currentOre.hub.getItemsMass()
    local currentOreVolume = currentOreMass / currentOre.volumicMass
    local currentOreVolumeString = roundWithUnit(currentOreVolume, "L")
    local currentOreFilledPourcentageString =
        roundPourcentage(currentOreVolume * 100 / currentOre.volumeMax)

    local oreStatus = "high"    

    if display_alert == true then
        oreStatus = getOreLevelStatus(currentOreVolume)
    end

    local html = [[
           <body>
           <div class="main-container ]].. oreStatus ..[[">
       
               <span class="title">
                       ]] .. currentOre.label .. [[
               </span>
       
               <span class="subtitle">
                   Avalaible Volume
               </span>
       
               <span class="volume">
                   ]] .. currentOreVolumeString .. [[
               </span>
       
               <div class="gauge ]].. oreStatus ..[[">
                   <div class="fuel-level ]].. oreStatus ..[[" style="width: ]] ..
                     currentOreFilledPourcentageString .. [[%;"></div>
               </div>
       
           </div>        
       ]]

    currentOre.screen.setHTML(style .. html)

end
