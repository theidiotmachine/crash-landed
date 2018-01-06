<?xml version="1.0" encoding="UTF-8"?>
<tileset name="industrial tiles" tilewidth="128" tileheight="128" tilecount="108" columns="9">
 <image source="../art/platformerPack_industrial_vector - redux remix - tiles.png" width="1152" height="1536"/>
 <tile id="2" type="crate">
  <objectgroup draworder="index">
   <object id="1" x="0" y="12.8">
    <properties>
     <property name="colFriction" type="bool" value="true"/>
     <property name="colType" value="massy"/>
     <property name="mass" type="float" value="1"/>
    </properties>
    <polygon points="0,0 12.8,-12.8 115.2,-12.8 128,0 128,89.6 115.2,115.2 25.6,115.2 0,102.4"/>
   </object>
  </objectgroup>
 </tile>
 <tile id="9" type="sign">
  <properties>
   <property name="signType" value="screen1"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="0" y="0" width="128" height="128">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="13" type="sign">
  <properties>
   <property name="signType" value="screen1"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="0" y="0" width="128" height="128">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="14" type="sign">
  <properties>
   <property name="signType" value="screen1"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="0" y="0" width="128" height="128">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="15" type="sign">
  <properties>
   <property name="signType" value="screen1"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="0" y="0" width="128" height="128">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="18" type="ladder">
  <objectgroup draworder="index">
   <object id="1" x="0" y="0" width="128" height="128">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="19" type="ladder">
  <objectgroup draworder="index">
   <object id="1" x="12.8" y="0" width="102.4" height="128">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="20" type="conveyer">
  <properties>
   <property name="moving" value="off"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="0" y="0" width="128" height="51.2">
    <properties>
     <property name="colType" value="massy"/>
     <property name="mass" type="float" value="100000"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="21" type="conveyer">
  <properties>
   <property name="moving" value="off"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="0" y="0" width="128" height="51.2">
    <properties>
     <property name="colType" value="massy"/>
     <property name="mass" type="float" value="100000"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="22" type="conveyer">
  <properties>
   <property name="moving" value="off"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="0" y="0" width="128" height="51.2">
    <properties>
     <property name="colType" value="massy"/>
     <property name="mass" type="float" value="100000"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="23" type="spikes">
  <objectgroup draworder="index">
   <object id="1" x="0" y="0">
    <properties>
     <property name="colType" value="static"/>
    </properties>
    <polygon points="0,0 25.6,51.2 102.4,51.2 128,0"/>
   </object>
  </objectgroup>
 </tile>
 <tile id="27" type="ladder">
  <objectgroup draworder="index">
   <object id="1" x="0" y="0" width="128" height="128">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="28" type="ladder">
  <objectgroup draworder="index">
   <object id="1" x="12.8" y="0" width="102.4" height="128">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="32" type="spikes">
  <objectgroup draworder="index">
   <object id="1" x="0" y="128">
    <properties>
     <property name="colType" value="static"/>
    </properties>
    <polygon points="0,0 25.6,-51.2 102.4,-51.2 128,0"/>
   </object>
  </objectgroup>
 </tile>
 <tile id="41" type="crate">
  <objectgroup draworder="index">
   <object id="1" x="12.8" y="0" width="102.4" height="128">
    <properties>
     <property name="colFriction" type="bool" value="true"/>
     <property name="colType" value="massy"/>
     <property name="mass" type="float" value="1"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="45" type="decoration"/>
 <tile id="46" type="decoration"/>
 <tile id="50" type="crate">
  <objectgroup draworder="index">
   <object id="1" x="0" y="38.4" width="128" height="89.6">
    <properties>
     <property name="colFriction" type="bool" value="true"/>
     <property name="colType" value="massy"/>
     <property name="mass" type="float" value="1"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="54" type="decoration"/>
 <tile id="55" type="decoration"/>
 <tile id="60" type="sign">
  <properties>
   <property name="signType" value="greenWarn"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="12.8" y="12.8" width="102.4" height="102.4">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="66" type="cog">
  <properties>
   <property name="spinning" type="bool" value="true"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="0" y="0" width="128" height="128">
    <properties>
     <property name="colType" value="static"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="69" type="light">
  <properties>
   <property name="green" type="int" value="71"/>
   <property name="lightType" value="blue"/>
   <property name="lightY" type="int" value="-35"/>
   <property name="off" type="int" value="101"/>
   <property name="red" type="int" value="79"/>
  </properties>
 </tile>
 <tile id="71" type="light">
  <properties>
   <property name="blue" type="int" value="69"/>
   <property name="lightType" value="green"/>
   <property name="lightY" type="float" value="-40"/>
   <property name="off" type="int" value="101"/>
  </properties>
 </tile>
 <tile id="72" type="sign">
  <properties>
   <property name="signType" value="arrowl"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="0" y="51.2" width="128" height="51.2">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="73" type="sign">
  <properties>
   <property name="signType" value="arrowc"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="0" y="51.2" width="128" height="51.2">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="74" type="sign">
  <properties>
   <property name="signType" value="arrowr"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="0" y="51.2" width="128" height="51.2">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="76" type="light">
  <properties>
   <property name="lightType" value="green"/>
   <property name="lightY" type="float" value="26"/>
   <property name="off" type="int" value="102"/>
   <property name="red" type="int" value="78"/>
  </properties>
 </tile>
 <tile id="77" type="light"/>
 <tile id="78" type="light">
  <properties>
   <property name="green" type="int" value="76"/>
   <property name="lightType" value="red"/>
   <property name="lightY" type="float" value="26"/>
   <property name="off" type="int" value="102"/>
  </properties>
 </tile>
 <tile id="79" type="light">
  <properties>
   <property name="blue" type="int" value="69"/>
   <property name="green" type="int" value="71"/>
   <property name="lightType" value="red"/>
   <property name="lightY" type="float" value="-40"/>
   <property name="off" type="int" value="101"/>
  </properties>
 </tile>
 <tile id="81" type="slime">
  <objectgroup draworder="index">
   <object id="1" x="0" y="115.2" width="128" height="12.8">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="82" type="slime">
  <objectgroup draworder="index">
   <object id="1" x="0" y="115.2" width="128" height="12.8">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="83" type="slime">
  <objectgroup draworder="index">
   <object id="1" x="0" y="115.2" width="128" height="12.8">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="84" type="slime">
  <objectgroup draworder="index">
   <object id="1" x="0" y="115.2" width="128" height="12.8">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="85" type="slime">
  <objectgroup draworder="index">
   <object id="1" x="0" y="115.2" width="128" height="12.8">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="95" type="p1start"/>
 <tile id="96" type="button">
  <properties>
   <property name="down" type="int" value="97"/>
   <property name="state" value="up"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" type="button" x="25.6" y="76.8" width="76.8" height="51.2">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="97" type="button">
  <properties>
   <property name="down" type="int" value="96"/>
   <property name="state" value="up"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" type="button" x="25.6" y="102.4" width="76.8" height="25.6">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="98" type="door">
  <properties>
   <property name="doorType" value="slideUp"/>
   <property name="state" value="closed"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="38.4" y="0" width="51.2" height="128">
    <properties>
     <property name="colType" value="massy"/>
     <property name="mass" type="float" value="1000"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="101" type="light">
  <properties>
   <property name="blue" type="int" value="69"/>
   <property name="green" type="int" value="71"/>
   <property name="lightType" value="off"/>
   <property name="lightY" type="int" value="-40"/>
   <property name="red" type="int" value="79"/>
  </properties>
 </tile>
 <tile id="102" type="light">
  <properties>
   <property name="green" type="int" value="76"/>
   <property name="lightType" value="off"/>
   <property name="red" type="int" value="78"/>
  </properties>
 </tile>
 <tile id="103" type="switch">
  <properties>
   <property name="centre" type="int" value="104"/>
   <property name="direction" value="left"/>
   <property name="right" type="int" value="105"/>
  </properties>
  <objectgroup draworder="index">
   <object id="2" type="switch" x="12.8" y="41.6" width="68.2" height="70.4">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
   <object id="3" x="17" y="127">
    <properties>
     <property name="colType" value="static"/>
    </properties>
    <polygon points="-2,1 14,-15 80,-15 96,1"/>
   </object>
  </objectgroup>
 </tile>
 <tile id="104" type="switch">
  <properties>
   <property name="direction" value="centre"/>
   <property name="left" type="int" value="103"/>
   <property name="right" type="int" value="105"/>
  </properties>
  <objectgroup draworder="index">
   <object id="2" type="switch" x="38.4" y="41.6" width="51.2" height="70.4">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
   <object id="3" x="12.8" y="128">
    <properties>
     <property name="colType" value="static"/>
    </properties>
    <polygon points="2.2,0 18.2,-16 84.2,-16 100.2,0"/>
   </object>
  </objectgroup>
 </tile>
 <tile id="105" type="switch">
  <properties>
   <property name="centre" type="int" value="104"/>
   <property name="direction" value="right"/>
   <property name="left" type="int" value="103"/>
  </properties>
  <objectgroup draworder="index">
   <object id="2" type="switch" x="46" y="54" width="69" height="58">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
   <object id="3" x="16" y="127">
    <properties>
     <property name="colType" value="static"/>
    </properties>
    <polygon points="-1,1 15,-15 81,-15 97,1"/>
   </object>
  </objectgroup>
 </tile>
 <tile id="106" type="decoration"/>
 <tile id="107" type="door">
  <properties>
   <property name="doorType" value="slideDown"/>
   <property name="state" value="closed"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="38.4" y="0" width="51.2" height="128">
    <properties>
     <property name="colType" value="massy"/>
     <property name="mass" type="float" value="1000"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
</tileset>
