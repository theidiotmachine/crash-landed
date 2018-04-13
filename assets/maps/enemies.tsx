<?xml version="1.0" encoding="UTF-8"?>
<tileset name="enemies" tilewidth="128" tileheight="128" tilecount="60" columns="4">
 <image source="../art/enemies.png" width="512" height="1920"/>
 <tile id="0" type="barnacle">
  <properties>
   <property name="deadid" type="int" value="2"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="18" y="127">
    <properties>
     <property name="colType" value="static"/>
    </properties>
    <polygon points="0,0 18,-19 11,-54 18,-82 26,-104 66,-103 78,-77 78,-59 76,-18 94,2"/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="0" duration="150"/>
   <frame tileid="1" duration="100"/>
  </animation>
 </tile>
 <tile id="1" type="barnacle">
  <properties>
   <property name="deadid" type="int" value="2"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" x="18" y="127">
    <properties>
     <property name="colType" value="static"/>
    </properties>
    <polygon points="0,0 18,-19 11,-54 18,-82 26,-104 66,-103 78,-77 78,-59 76,-18 94,2"/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="0" duration="150"/>
   <frame tileid="1" duration="100"/>
  </animation>
 </tile>
 <tile id="15" type="fish">
  <objectgroup draworder="index">
   <object id="1" x="25.6" y="76.8">
    <properties>
     <property name="colType" value="massy"/>
     <property name="mass" type="float" value="0.1"/>
    </properties>
    <polygon points="0,0 12.8,-25.6 51.2,-25.6 76.8,-12.8 89.6,12.8 64,25.6"/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="15" duration="100"/>
   <frame tileid="16" duration="100"/>
  </animation>
 </tile>
 <tile id="17">
  <properties>
   <property name="deadid" type="int" value="17"/>
  </properties>
 </tile>
</tileset>
