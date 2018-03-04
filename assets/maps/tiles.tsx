<?xml version="1.0" encoding="UTF-8"?>
<tileset name="spritesheet_tiles" tilewidth="128" tileheight="128" tilecount="128" columns="8">
 <image source="../art/spritesheet_tiles.png" width="1024" height="2048"/>
 <tile id="1">
  <properties>
   <property name="colType" value="liquid"/>
   <property name="imageName" value="waterTop_high.png"/>
   <property name="stuff" value="water"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="0" y="12.8" width="128" height="115.2"/>
  </objectgroup>
 </tile>
 <tile id="9">
  <properties>
   <property name="colType" value="liquid"/>
   <property name="imageName" value="water.png"/>
   <property name="stuff" value="water"/>
  </properties>
 </tile>
 <tile id="24" type="crate">
  <objectgroup draworder="index">
   <object id="2" x="0" y="12.8">
    <properties>
     <property name="colFriction" type="bool" value="true"/>
     <property name="colType" value="massy"/>
     <property name="mass" type="float" value="1"/>
    </properties>
    <polygon points="1,0.2 13,-12.8 115,-12.8 127,-0.8 127,102.2 115,115.2 13,115.2 1,102.2"/>
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
 <tile id="35" type="ladder">
  <objectgroup draworder="index">
   <object id="1" x="0" y="0" width="128" height="128">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="36" type="fallingTile">
  <properties>
   <property name="flashId" type="int" value="52"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="0" y="0" width="128" height="128">
    <properties>
     <property name="colType" value="static"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="42" type="decoration"/>
 <tile id="43" type="decoration"/>
 <tile id="50" type="decoration"/>
 <tile id="73" type="button">
  <properties>
   <property name="down" type="int" value="73"/>
   <property name="state" value="down"/>
   <property name="up" type="int" value="81"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="0" y="98" width="128" height="30">
    <properties>
     <property name="colType" value="static"/>
    </properties>
   </object>
   <object id="2" type="button" x="28" y="80" width="69" height="17">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="81" type="button">
  <properties>
   <property name="down" type="int" value="73"/>
   <property name="state" value="up"/>
   <property name="up" type="int" value="81"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="0" y="98" width="128" height="30">
    <properties>
     <property name="colType" value="static"/>
    </properties>
   </object>
   <object id="2" type="button" x="20" y="44" width="87" height="54">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="89" type="button">
  <properties>
   <property name="down" type="int" value="89"/>
   <property name="state" value="down"/>
   <property name="up" type="int" value="97"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="0" y="98" width="128" height="30">
    <properties>
     <property name="colType" value="static"/>
    </properties>
   </object>
   <object id="2" type="button" x="30" y="79" width="68" height="19">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="97" type="button">
  <properties>
   <property name="down" type="int" value="89"/>
   <property name="state" value="up"/>
   <property name="up" type="int" value="97"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="0" y="98" width="128" height="30">
    <properties>
     <property name="colType" value="static"/>
    </properties>
   </object>
   <object id="2" type="button" x="20" y="44" width="87" height="54">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="99" type="decoration"/>
 <tile id="106" type="switch">
  <properties>
   <property name="centre" type="int" value="114"/>
   <property name="direction" value="right"/>
   <property name="left" type="int" value="122"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" type="base" x="12.8" y="89.6" width="102.4" height="38.4">
    <properties>
     <property name="colType" value="static"/>
    </properties>
   </object>
   <object id="2" type="switch" x="38.4" y="32" width="89.6" height="57.6">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="113" type="bouncer">
  <properties>
   <property name="bounceupid" type="int" value="105"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="0" y="64" width="128" height="38.4">
    <properties>
     <property name="colType" value="static"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="114" type="switch">
  <properties>
   <property name="direction" value="centre"/>
   <property name="left" type="int" value="122"/>
   <property name="right" type="int" value="106"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" type="base" x="12.8" y="89.6" width="102.4" height="38.4">
    <properties>
     <property name="colType" value="static"/>
    </properties>
   </object>
   <object id="2" type="switch" x="38.4" y="12.8" width="51.2" height="76.8">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="120">
  <properties>
   <property name="colType" value="liquid"/>
   <property name="imageName" value="waterTop_low.png"/>
   <property name="stuff" value="water"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="0" y="51.2" width="128" height="76.8"/>
  </objectgroup>
 </tile>
 <tile id="121" type="spikes">
  <objectgroup draworder="index">
   <object id="1" x="0" y="128">
    <properties>
     <property name="colType" value="static"/>
    </properties>
    <polygon points="0,0 16,-64 112,-64 128,0"/>
   </object>
  </objectgroup>
 </tile>
 <tile id="122" type="switch">
  <properties>
   <property name="centre" type="int" value="114"/>
   <property name="direction" value="left"/>
   <property name="right" type="int" value="106"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" type="base" x="12.8" y="89.6" width="102.4" height="38.4">
    <properties>
     <property name="colType" value="static"/>
    </properties>
   </object>
   <object id="2" type="switch" x="0" y="38.4" width="89.6" height="51.2">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="123" type="platform">
  <objectgroup draworder="index">
   <object id="1" x="0" y="0" width="128" height="32">
    <properties>
     <property name="colFriction" type="bool" value="false"/>
     <property name="colType" value="massy"/>
     <property name="mass" type="float" value="10000"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
</tileset>
