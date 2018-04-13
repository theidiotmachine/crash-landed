<?xml version="1.0" encoding="UTF-8"?>
<tileset name="water_enemies" tilewidth="128" tileheight="128" tilecount="15" columns="3">
 <image source="../art/water_enemies.png" width="384" height="640"/>
 <tile id="0" type="mine">
  <properties>
   <property name="flashid" type="int" value="2"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="12.8" y="12.8" width="102.4" height="102.4">
    <properties>
     <property name="colType" value="static"/>
    </properties>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="0" duration="100"/>
   <frame tileid="1" duration="500"/>
  </animation>
 </tile>
 <tile id="1" type="mine">
  <properties>
   <property name="flashid" type="int" value="2"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="12.8" y="12.8" width="102.4" height="102.4">
    <properties>
     <property name="colType" value="static"/>
    </properties>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="0" duration="100"/>
   <frame tileid="1" duration="500"/>
  </animation>
 </tile>
 <tile id="3" type="jelly">
  <objectgroup draworder="index">
   <object id="1" x="12.8" y="64">
    <properties>
     <property name="colType" value="massy"/>
     <property name="mass" type="float" value="0.3"/>
    </properties>
    <polygon points="0,0 0,-12.8 51.2,-51.2 102.4,-12.8 102.4,0 89.6,51.2 64,64 38.4,64 12.8,51.2"/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="3" duration="220"/>
   <frame tileid="4" duration="220"/>
  </animation>
 </tile>
 <tile id="4" type="jelly">
  <objectgroup draworder="index">
   <object id="1" x="12.8" y="64">
    <properties>
     <property name="colType" value="massy"/>
     <property name="mass" type="float" value="0.3"/>
    </properties>
    <polygon points="0,0 0,-12.8 51.2,-51.2 102.4,-12.8 102.4,0 89.6,51.2 64,64 38.4,64 12.8,51.2"/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="4" duration="220"/>
   <frame tileid="3" duration="220"/>
  </animation>
 </tile>
 <tile id="6" type="fish">
  <properties>
   <property name="deadid" type="int" value="8"/>
  </properties>
  <objectgroup draworder="index">
   <object id="3" x="25.6" y="51.2">
    <properties>
     <property name="colType" value="massy"/>
     <property name="mass" type="float" value="0.5"/>
    </properties>
    <polygon points="0,0 89.6,12.8 0,25.6 -25.6,12.8"/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="6" duration="180"/>
   <frame tileid="7" duration="180"/>
  </animation>
 </tile>
 <tile id="7" type="fish">
  <properties>
   <property name="deadid" type="int" value="8"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="25.6" y="51.2">
    <properties>
     <property name="colType" value="massy"/>
     <property name="mass" type="float" value="0.5"/>
    </properties>
    <polygon points="0,0 89.6,12.8 0,25.6 -25.6,12.8"/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="6" duration="180"/>
   <frame tileid="7" duration="180"/>
  </animation>
 </tile>
 <tile id="9" type="bigFish">
  <properties>
   <property name="bodyid" type="int" value="10"/>
   <property name="tailid" type="int" value="11"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="0" y="64">
    <properties>
     <property name="colType" value="massy"/>
     <property name="mass" type="float" value="2"/>
    </properties>
    <polygon points="0,0 51.2,-51.2 128,-51.2 128,51.2 38.4,38.4"/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="9" duration="200"/>
   <frame tileid="12" duration="200"/>
  </animation>
 </tile>
</tileset>
