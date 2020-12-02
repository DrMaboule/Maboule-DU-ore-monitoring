# Maboule-DU-ore-monitoring
Lua script for easy ore monitoring in Dual Universe
-----------------------
<br>
only T1/T2 available yet, other tier coming really soon

<br><br>
![Image of example](https://i.ibb.co/D5SVdhB/Capture-d-cran-2020-12-01-215835.png) <br>
![Image of example](https://i.ibb.co/gV24bpz/example-configuration.jpg)

## <u>Items needed by ore tier :</u>
- 1 programing board

- 4 screens

- One or more containers of same type for each ore type.
<br><i>(If you want to store ore in multiple containers, use a hub of course.)</i>

<br><br>

-----------------------

## <u>How to install</u>

- Just copy the all content of ore-monitoring.config in every ore tier folder.

- Then go ingame, and click right on your programming board. Then go to  "advanced" --> "paste lua configuration from clipboard". 

- Point the programming board and open edition window using "CTRL + L". 

On the left, the slot list shows you which item the programming board is waiting for, and in the order you have to link from top to bottom.

<br>
Or just link in that order step by step :
<br>
<br>
For T1 <br>
1-the screen for Coal monitoring <br>
2-the hub or the single container dedicated to Coal<br>
3-screen Bauxite <br>
4- hub Bauxite<br>
5-screen Hematite<br>
6-hub Hematite<br>
7-screen Quartz <br>
8-hub Quartz
<br>
<br>
For T2 <br>
1-screen Limestone <br>
2-hub Limestone<br>
3-screen Malachite <br>
4-hub Malachite<br>
5-screen Chromite<br>
6-hub Chromite<br>
7-screen Natron <br>
8-hub Natron<br>
<br>
Point your board and activate it. If all screens are turned ON, you should see your monitoring.
<br>
<br>

---------------------------


## <u>Mandatory configuration</u>


This script allows you to plug one single container or a hub to be monitored.
If you use a hub, all containers plugged to the hub <span style="color: red;">MUST HAVE THE SAME TYPE</span>. <i><br>
Only L, or only M or only S. (xs not supported)</i>
<br><br>
You are free to store with a flexible and evolutive container configuration.

<br>

- Right click on your programming board, and go to "advanced" --> "edit lua parameters".<br>

- For every ore, you have to provide the number of container you use for storing and the type. <br>
<i>By default, the script consideres that you plugged 1 container L for every kind of ore.</i><br>
<br>
<b>Example :</b><br>
If you use 4 linked containers L to stock Coal.<br>
In the field "coal_container_type"  enter "L".<br>
In the field "coal_container_number" enter 4.<br>
<i>(see available parameters bellow for more informations)</i>
<br><br>

---------------------------


## <u>Optional  configuration</u>

You can also set up yourself the threshold of alert color changes or just deactivate it.<br>
There is 3 displayed colors when alerts are activated.<br>
Green if container volume is ok.
Yellow if volume is low.
Red if volume is critical  

- To deactivate alerts color changes just uncheck the box "display_alert" in lua parameters of your programing board.
Then the green color by default will be applyed all the time.
<i>(see available parameters bellow for more informations)</i>
<br><br>

<table style="width: 100%;">
  <tr style="border: 1px solid;">
    <td style="border: 1px solid;">
      Name
    </td>
    <td style="border: 1px solid;">
      Type
    </td>
    <td style="border: 1px solid;">
      Default
    </td>
    <td style="border: 1px solid;">
      Description
    </td>
  </tr>
  <tr style="border: 1px solid;">
    <td style="border: 1px solid;">
       hematite_container_type
    </td>
    <td style="border: 1px solid;">
      String
    </td>
    <td style="border: 1px solid;">
      "L"
    </td>
    <td style="border: 1px solid;">
      the ype of container you use for stocking hematite
    </td>
  </tr>
  <tr style="border: 1px solid;">
    <td style="border: 1px solid;">
       hematite_container_number
    </td>
    <td style="border: 1px solid;">
      number
    </td>
    <td style="border: 1px solid;">
      1
    </td>
    <td style="border: 1px solid;">
      the number of plugged containers you use for stocking hematite (enter 1 if you linked a single container without hub)
    </td>
  </tr>
  <tr style="border: 1px solid;">
    <td style="border: 1px solid;">
         bauxite_container_type   
    </td>
    <td style="border: 1px solid;">
      String
    </td>
    <td style="border: 1px solid;">
      "L"
    </td>
    <td style="border: 1px solid;">
      the ype of container you use for stocking bauxite
    </td>
  </tr>
  <tr style="border: 1px solid;">
    <td style="border: 1px solid;">
       bauxite_container_number
    </td>
    <td style="border: 1px solid;">
      number
    </td>
    <td style="border: 1px solid;">
      1
    </td>
    <td style="border: 1px solid;">
      the number of plugged containers you use for stocking bauxite (enter 1 if you linked a single container without hub)
    </td>
  </tr>
  <tr style="border: 1px solid;">
    <td style="border: 1px solid;">
         coal_container_type 
    </td>
    <td style="border: 1px solid;">
      String
    </td>
    <td style="border: 1px solid;">
      "L"
    </td>
    <td style="border: 1px solid;">
      the ype of container you use for stocking coal
    </td>
  </tr>
  <tr style="border: 1px solid;">
    <td style="border: 1px solid;">
       coal_container_number
    </td>
    <td style="border: 1px solid;">
      number
    </td>
    <td style="border: 1px solid;">
      1
    </td>
    <td style="border: 1px solid;">
      the number of plugged containers you use for stocking coal (enter 1 if you linked a single container without hub)
    </td>
  </tr>
  <tr style="border: 1px solid;">
    <td style="border: 1px solid;">
       quartz_container_type
    </td>
    <td style="border: 1px solid;">
      String
    </td>
    <td style="border: 1px solid;">
      "L"
    </td>
    <td style="border: 1px solid;">
      the ype of container you use for stocking quartz
    </td>
  </tr>
  <tr style="border: 1px solid;">
    <td style="border: 1px solid;">
       quartz_container_number
    </td>
    <td style="border: 1px solid;">
      number
    </td>
    <td style="border: 1px solid;">
      1
    </td>
    <td style="border: 1px solid;">
      the number of plugged containers you use for stocking quartz (enter 1 if you linked a single container without hub)
    </td>
  </tr>
  <tr style="border: 1px solid;">
    <td style="border: 1px solid;">
       display_alert
    </td>
    <td style="border: 1px solid;">
      boolean
    </td>
    <td style="border: 1px solid;">
      true
    </td>
    <td style="border: 1px solid;">
      When checked, activate the alert color changes. 
      If ore volume is inferior or equals low threshold volume, screen will display monitoring in yellow. <br>
      If ore volume is inferior or equals critical threshold volume, screen will display monitoring in red.
    </td>
  </tr>
  <tr style="border: 1px solid;">
    <td style="border: 1px solid;">
       critical_level_threshold
    </td>
    <td style="border: 1px solid;">
      number (Liter)
    </td>
    <td style="border: 1px solid;">
      1000
    </td>
    <td style="border: 1px solid;">
      If volume is inferior or equals this value, monitoring will be displayed in red for the concerned ore.
    </td>
  </tr>
  <tr style="border: 1px solid;">
    <td style="border: 1px solid;">
       low_level_threshold
    </td>
    <td style="border: 1px solid;">
      number (Liter)
    </td>
    <td style="border: 1px solid;">
      50000
    </td>
    <td style="border: 1px solid;">
      If volume is inferior or equals this value, monitoring will be displayed in yellow for the concerned ore.
    </td>
  </tr>
</table>

<br><br>
 

Feel free to ask questions or give feedbacks on discord 
Dr.Maboule#7632

Have fun !
