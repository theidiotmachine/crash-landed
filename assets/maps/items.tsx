<?xml version="1.0" encoding="UTF-8"?>
<tileset name="spritesheet_items" tilewidth="128" tileheight="128" tilecount="32" columns="8">
 <image source="../art/spritesheet_items.png" width="1024" height="512"/>
 <tile id="1">
  <properties>
   <property name="downTileid" type="int" value="17"/>
  </properties>
  <animation>
   <frame tileid="1" duration="200"/>
   <frame tileid="9" duration="200"/>
  </animation>
 </tile>
 <tile id="2" type="flag">
  <properties>
   <property name="downTileid" type="int" value="10"/>
  </properties>
 </tile>
 <tile id="5" type="gem">
  <properties>
   <property name="color" value="green"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="25.6" y="38.4" width="76.8" height="51.2">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="8" type="flag">
  <properties>
   <property name="downTileid" type="int" value="24"/>
  </properties>
  <animation>
   <frame tileid="8" duration="200"/>
   <frame tileid="16" duration="200"/>
  </animation>
 </tile>
 <tile id="9">
  <properties>
   <property name="downTileid" type="int" value="17"/>
  </properties>
  <animation>
   <frame tileid="1" duration="200"/>
   <frame tileid="9" duration="200"/>
  </animation>
 </tile>
 <tile id="13" type="gem">
  <properties>
   <property name="color" value="blue"/>
  </properties>
  <objectgroup draworder="index">
   <object id="2" x="25.6" y="38.4" width="76.8" height="51.2">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="16" type="flag">
  <properties>
   <property name="downTileid" type="int" value="24"/>
  </properties>
 </tile>
 <tile id="20" type="gem">
  <properties>
   <property name="color" value="yellow"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="25.6" y="38.4" width="76.8" height="51.2">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="21" type="flag">
  <properties>
   <property name="downTileid" type="int" value="0"/>
  </properties>
 </tile>
 <tile id="25" type="flag">
  <properties>
   <property name="downTileid" type="int" value="10"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="0" y="0" width="128" height="128">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="25" duration="200"/>
   <frame tileid="2" duration="200"/>
  </animation>
 </tile>
 <tile id="26" type="flag">
  <properties>
   <property name="downTileid" type="int" value="0"/>
  </properties>
 </tile>
 <tile id="28" type="gem">
  <properties>
   <property name="color" value="red"/>
  </properties>
  <objectgroup draworder="index">
   <object id="2" x="25.6" y="38.4" width="76.8" height="51.2">
    <properties>
     <property name="colType" value="none"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
</tileset>
