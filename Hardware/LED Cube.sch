<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="9" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="6" fill="9" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Muster" color="7" fill="1" visible="no" active="no"/>
<layer number="101" name="Patch_Top" color="12" fill="4" visible="no" active="yes"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="no" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="no" active="no"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="led">
<packages>
<package name="1206">
<description>&lt;b&gt;CHICAGO MINIATURE LAMP, INC.&lt;/b&gt;&lt;p&gt;
7022X Series SMT LEDs 1206 Package Size</description>
<wire x1="1.55" y1="-0.75" x2="-1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.55" y1="-0.75" x2="-1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.55" y1="0.75" x2="1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.55" y1="0.75" x2="1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-0.55" y1="-0.5" x2="0.55" y2="-0.5" width="0.1016" layer="21" curve="95.452622"/>
<wire x1="-0.55" y1="-0.5" x2="-0.55" y2="0.5" width="0.1016" layer="51" curve="-84.547378"/>
<wire x1="-0.55" y1="0.5" x2="0.55" y2="0.5" width="0.1016" layer="21" curve="-95.452622"/>
<wire x1="0.55" y1="0.5" x2="0.55" y2="-0.5" width="0.1016" layer="51" curve="-84.547378"/>
<smd name="A" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="C" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.1" y1="-0.1" x2="0.1" y2="0.1" layer="21"/>
<rectangle x1="0.45" y1="-0.7" x2="0.8" y2="-0.45" layer="51"/>
<rectangle x1="0.8" y1="-0.7" x2="0.9" y2="0.5" layer="51"/>
<rectangle x1="0.8" y1="0.55" x2="0.9" y2="0.7" layer="51"/>
<rectangle x1="-0.9" y1="-0.7" x2="-0.8" y2="0.5" layer="51"/>
<rectangle x1="-0.9" y1="0.55" x2="-0.8" y2="0.7" layer="51"/>
<rectangle x1="0.45" y1="-0.7" x2="0.6" y2="-0.45" layer="21"/>
</package>
<package name="LD260">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
5 mm, square, Siemens</description>
<wire x1="-1.27" y1="-1.27" x2="0" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.27" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="0" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.889" x2="1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.889" x2="-1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="0.889" width="0.1524" layer="51"/>
<wire x1="0" y1="1.27" x2="0.9917" y2="0.7934" width="0.1524" layer="21" curve="-51.33923"/>
<wire x1="-0.9917" y1="0.7934" x2="0" y2="1.27" width="0.1524" layer="21" curve="-51.33923"/>
<wire x1="0" y1="-1.27" x2="0.9917" y2="-0.7934" width="0.1524" layer="21" curve="51.33923"/>
<wire x1="-0.9917" y1="-0.7934" x2="0" y2="-1.27" width="0.1524" layer="21" curve="51.33923"/>
<wire x1="0.9558" y1="-0.8363" x2="1.27" y2="0" width="0.1524" layer="51" curve="41.185419"/>
<wire x1="0.9756" y1="0.813" x2="1.2699" y2="0" width="0.1524" layer="51" curve="-39.806332"/>
<wire x1="-1.27" y1="0" x2="-0.9643" y2="-0.8265" width="0.1524" layer="51" curve="40.600331"/>
<wire x1="-1.27" y1="0" x2="-0.9643" y2="0.8265" width="0.1524" layer="51" curve="-40.600331"/>
<wire x1="-0.889" y1="0" x2="0" y2="0.889" width="0.1524" layer="51" curve="-90"/>
<wire x1="-0.508" y1="0" x2="0" y2="0.508" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.508" x2="0.508" y2="0" width="0.1524" layer="21" curve="90"/>
<wire x1="0" y1="-0.889" x2="0.889" y2="0" width="0.1524" layer="51" curve="90"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.2954" y="1.4732" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-2.4892" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="1.27" y1="-0.635" x2="2.032" y2="0.635" layer="51"/>
<rectangle x1="1.905" y1="-0.635" x2="2.032" y2="0.635" layer="21"/>
</package>
<package name="LED2X5">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
2 x 5 mm, rectangle</description>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="0" x2="0.508" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="0.381" x2="-0.508" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="0.381" x2="0.508" y2="0" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0" x2="1.778" y2="0" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0" x2="-0.508" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0.381" x2="0.508" y2="0" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0" x2="0.508" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-0.254" x2="1.143" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.762" x2="1.143" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.762" x2="0.9398" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="0.9398" y1="-0.6096" x2="1.143" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-0.254" x2="1.651" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-0.762" x2="1.651" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-0.762" x2="1.4478" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="1.4478" y1="-0.6096" x2="1.651" y2="-0.508" width="0.1524" layer="51"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.397" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-2.413" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.159" y1="-1.27" x2="2.413" y2="1.27" layer="21"/>
</package>
<package name="LED3MM">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
3 mm, round</description>
<wire x1="1.5748" y1="-1.27" x2="1.5748" y2="1.27" width="0.254" layer="51"/>
<wire x1="-1.524" y1="0" x2="-1.1708" y2="0.9756" width="0.1524" layer="51" curve="-39.80361"/>
<wire x1="-1.524" y1="0" x2="-1.1391" y2="-1.0125" width="0.1524" layer="51" curve="41.633208"/>
<wire x1="1.1571" y1="0.9918" x2="1.524" y2="0" width="0.1524" layer="51" curve="-40.601165"/>
<wire x1="1.1708" y1="-0.9756" x2="1.524" y2="0" width="0.1524" layer="51" curve="39.80361"/>
<wire x1="0" y1="1.524" x2="1.2401" y2="0.8858" width="0.1524" layer="21" curve="-54.461337"/>
<wire x1="-1.2192" y1="0.9144" x2="0" y2="1.524" width="0.1524" layer="21" curve="-53.130102"/>
<wire x1="0" y1="-1.524" x2="1.203" y2="-0.9356" width="0.1524" layer="21" curve="52.126876"/>
<wire x1="-1.203" y1="-0.9356" x2="0" y2="-1.524" width="0.1524" layer="21" curve="52.126876"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="51" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0" y1="-1.016" x2="1.016" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0" y1="2.032" x2="1.561" y2="1.3009" width="0.254" layer="21" curve="-50.193108"/>
<wire x1="-1.7929" y1="0.9562" x2="0" y2="2.032" width="0.254" layer="21" curve="-61.926949"/>
<wire x1="0" y1="-2.032" x2="1.5512" y2="-1.3126" width="0.254" layer="21" curve="49.763022"/>
<wire x1="-1.7643" y1="-1.0082" x2="0" y2="-2.032" width="0.254" layer="21" curve="60.255215"/>
<wire x1="-2.032" y1="0" x2="-1.7891" y2="0.9634" width="0.254" layer="51" curve="-28.301701"/>
<wire x1="-2.032" y1="0" x2="-1.7306" y2="-1.065" width="0.254" layer="51" curve="31.60822"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="1.905" y="0.381" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="1.905" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="LED5MM">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
5 mm, round</description>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.905" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.905" width="0.254" layer="21" curve="-286.260205"/>
<wire x1="-1.143" y1="0" x2="0" y2="1.143" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.143" x2="1.143" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.651" y1="0" x2="0" y2="1.651" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.651" x2="1.651" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-2.159" y1="0" x2="0" y2="2.159" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-2.159" x2="2.159" y2="0" width="0.1524" layer="51" curve="90"/>
<circle x="0" y="0" radius="2.54" width="0.1524" layer="21"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="3.175" y="0.5334" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="3.2004" y="-1.8034" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="LSU260">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
1 mm, round, Siemens</description>
<wire x1="0" y1="-0.508" x2="-1.143" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.508" x2="-1.143" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="0.508" x2="0" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.254" x2="-1.397" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.254" x2="-1.143" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="-0.254" x2="-1.397" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="0.254" x2="-1.143" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="0.254" x2="-1.143" y2="0.508" width="0.1524" layer="51"/>
<wire x1="0.508" y1="-0.254" x2="1.397" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-0.254" x2="1.397" y2="0.254" width="0.1524" layer="51"/>
<wire x1="1.397" y1="0.254" x2="0.508" y2="0.254" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-0.381" x2="0.254" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.254" y1="-0.508" x2="-0.254" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="-0.381" x2="-0.254" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0.381" x2="0.254" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0.508" x2="-0.254" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0.381" x2="-0.254" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.254" x2="0.254" y2="0" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.254" y1="0" x2="0" y2="0.254" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-0.381" x2="0.381" y2="0.381" width="0.1524" layer="21" curve="90"/>
<circle x="0" y="0" radius="0.508" width="0.1524" layer="51"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.2954" y="0.8382" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-1.8542" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.397" y1="-0.254" x2="-1.143" y2="0.254" layer="51"/>
<rectangle x1="0.508" y1="-0.254" x2="1.397" y2="0.254" layer="51"/>
</package>
<package name="LZR181">
<description>&lt;B&gt;LED BLOCK&lt;/B&gt;&lt;p&gt;
1 LED, Siemens</description>
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.889" x2="1.27" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.889" x2="-1.27" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="0" x2="0" y2="0.889" width="0.1524" layer="51" curve="-90"/>
<wire x1="-0.508" y1="0" x2="0" y2="0.508" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.508" x2="0.508" y2="0" width="0.1524" layer="21" curve="90"/>
<wire x1="0" y1="-0.889" x2="0.889" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-0.8678" y1="0.7439" x2="0" y2="1.143" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="0" y1="1.143" x2="0.8678" y2="0.7439" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="-0.8678" y1="-0.7439" x2="0" y2="-1.143" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0" y1="-1.143" x2="0.8678" y2="-0.7439" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0.8678" y1="0.7439" x2="1.143" y2="0" width="0.1524" layer="51" curve="-40.604135"/>
<wire x1="0.8678" y1="-0.7439" x2="1.143" y2="0" width="0.1524" layer="51" curve="40.604135"/>
<wire x1="-1.143" y1="0" x2="-0.8678" y2="0.7439" width="0.1524" layer="51" curve="-40.604135"/>
<wire x1="-1.143" y1="0" x2="-0.8678" y2="-0.7439" width="0.1524" layer="51" curve="40.604135"/>
<wire x1="-1.27" y1="1.27" x2="1.27" y2="1.27" width="0.1524" layer="21"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.2954" y="1.4732" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-2.4892" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="1.27" y1="-0.889" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.27" y2="0.254" layer="51"/>
</package>
<package name="Q62902-B152">
<description>&lt;b&gt;LED HOLDER&lt;/b&gt;&lt;p&gt;
Siemens</description>
<wire x1="-2.9718" y1="-1.8542" x2="-2.9718" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="-0.254" x2="-2.9718" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="0.254" x2="-2.9718" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="2.9718" y1="-1.8542" x2="-2.1082" y2="-1.8542" width="0.1524" layer="21"/>
<wire x1="-2.1082" y1="-1.8542" x2="-2.54" y2="-1.8542" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.8542" x2="-2.1082" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="-2.1082" y1="1.8542" x2="2.9718" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.8542" x2="-2.54" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.8542" x2="-2.9718" y2="-1.8542" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.8542" x2="-2.9718" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="0.254" x2="-2.9718" y2="-0.254" width="0.1524" layer="21" curve="180"/>
<wire x1="-1.1486" y1="0.8814" x2="0" y2="1.4478" width="0.1524" layer="21" curve="-52.498642"/>
<wire x1="0" y1="1.4478" x2="1.1476" y2="0.8827" width="0.1524" layer="21" curve="-52.433716"/>
<wire x1="-1.1351" y1="-0.8987" x2="0" y2="-1.4478" width="0.1524" layer="21" curve="51.629985"/>
<wire x1="0" y1="-1.4478" x2="1.1305" y2="-0.9044" width="0.1524" layer="21" curve="51.339172"/>
<wire x1="1.1281" y1="-0.9074" x2="1.4478" y2="0" width="0.1524" layer="51" curve="38.811177"/>
<wire x1="1.1401" y1="0.8923" x2="1.4478" y2="0" width="0.1524" layer="51" curve="-38.048073"/>
<wire x1="-1.4478" y1="0" x2="-1.1305" y2="-0.9044" width="0.1524" layer="51" curve="38.659064"/>
<wire x1="-1.4478" y1="0" x2="-1.1456" y2="0.8853" width="0.1524" layer="51" curve="-37.696376"/>
<wire x1="0" y1="1.7018" x2="1.4674" y2="0.8618" width="0.1524" layer="21" curve="-59.573488"/>
<wire x1="-1.4618" y1="0.8714" x2="0" y2="1.7018" width="0.1524" layer="21" curve="-59.200638"/>
<wire x1="0" y1="-1.7018" x2="1.4571" y2="-0.8793" width="0.1524" layer="21" curve="58.891781"/>
<wire x1="-1.4571" y1="-0.8793" x2="0" y2="-1.7018" width="0.1524" layer="21" curve="58.891781"/>
<wire x1="-1.7018" y1="0" x2="-1.4447" y2="0.8995" width="0.1524" layer="51" curve="-31.907626"/>
<wire x1="-1.7018" y1="0" x2="-1.4502" y2="-0.8905" width="0.1524" layer="51" curve="31.551992"/>
<wire x1="1.4521" y1="0.8874" x2="1.7018" y2="0" width="0.1524" layer="51" curve="-31.429586"/>
<wire x1="1.4459" y1="-0.8975" x2="1.7018" y2="0" width="0.1524" layer="51" curve="31.828757"/>
<wire x1="-2.1082" y1="1.8542" x2="-2.1082" y2="-1.8542" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0.0539" y1="-1.0699" x2="1.0699" y2="-0.0539" width="0.1524" layer="51" curve="90"/>
<wire x1="2.9718" y1="1.8542" x2="2.9718" y2="-1.8542" width="0.1524" layer="21"/>
<pad name="K" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="A" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-1.905" y="2.286" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.905" y="-3.556" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="Q62902-B153">
<description>&lt;b&gt;LED HOLDER&lt;/b&gt;&lt;p&gt;
Siemens</description>
<wire x1="-5.5118" y1="-3.5052" x2="-5.5118" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="-0.254" x2="-5.5118" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="0.254" x2="-5.5118" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="5.5118" y1="-3.5052" x2="-4.6482" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-4.6482" y1="-3.5052" x2="-5.08" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.5052" x2="-4.6482" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="-4.6482" y1="3.5052" x2="5.5118" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-3.5052" x2="-5.08" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-3.5052" x2="-5.5118" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.5052" x2="-5.5118" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="0.254" x2="-5.5118" y2="-0.254" width="0.1524" layer="21" curve="180"/>
<wire x1="-4.6482" y1="3.5052" x2="-4.6482" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="5.5118" y1="3.5052" x2="5.5118" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-2.54" y2="-1.905" width="0.254" layer="21"/>
<wire x1="0" y1="-1.143" x2="1.143" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.143" y1="0" x2="0" y2="1.143" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.651" x2="1.651" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.651" y1="0" x2="0" y2="1.651" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-2.159" x2="2.159" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-2.2129" y1="0.0539" x2="-0.0539" y2="2.2129" width="0.1524" layer="51" curve="-90.010616"/>
<circle x="0" y="0" radius="2.54" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="3.175" width="0.254" layer="21"/>
<pad name="A" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="K" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-4.191" y="3.937" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-5.08" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="Q62902-B155">
<description>&lt;b&gt;LED HOLDER&lt;/b&gt;&lt;p&gt;
Siemens</description>
<wire x1="-1.27" y1="-3.048" x2="-1.27" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.033" y1="3.048" x2="2.921" y2="3.048" width="0.1524" layer="21"/>
<wire x1="10.033" y1="3.048" x2="10.033" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-3.048" x2="2.921" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-3.048" x2="2.921" y2="3.048" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-3.048" x2="10.033" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="2.921" y1="3.048" x2="-1.27" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.54" x2="-5.207" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-2.54" x2="-1.27" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.54" x2="-1.27" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.54" x2="-5.207" y2="-2.54" width="0.1524" layer="21" curve="180"/>
<wire x1="-6.985" y1="0.635" x2="-6.985" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="1.397" x2="-6.096" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="1.905" x2="-5.207" y2="-1.905" width="0.1524" layer="21"/>
<pad name="K" x="7.62" y="1.27" drill="0.8128" shape="long"/>
<pad name="A" x="7.62" y="-1.27" drill="0.8128" shape="long"/>
<text x="3.302" y="-2.794" size="1.016" layer="21" ratio="14">A+</text>
<text x="3.302" y="1.778" size="1.016" layer="21" ratio="14">K-</text>
<text x="11.684" y="-2.794" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="0.635" y="-4.445" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.921" y1="1.016" x2="6.731" y2="1.524" layer="21"/>
<rectangle x1="2.921" y1="-1.524" x2="6.731" y2="-1.016" layer="21"/>
<hole x="0" y="0" drill="0.8128"/>
</package>
<package name="Q62902-B156">
<description>&lt;b&gt;LED HOLDER&lt;/b&gt;&lt;p&gt;
Siemens</description>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0" x2="0" y2="1.143" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.143" x2="1.143" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.651" y1="0" x2="0" y2="1.651" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.651" x2="1.651" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-2.159" y1="0" x2="0" y2="2.159" width="0.1524" layer="51" curve="-90"/>
<wire x1="0.0539" y1="-2.2129" x2="2.2129" y2="-0.0539" width="0.1524" layer="51" curve="90.005308"/>
<wire x1="2.54" y1="3.81" x2="3.81" y2="2.54" width="0.1524" layer="21"/>
<wire x1="2.54" y1="3.81" x2="-3.81" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-3.81" x2="-3.81" y2="3.81" width="0.1524" layer="21"/>
<wire x1="3.81" y1="2.54" x2="3.81" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-3.81" x2="-2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-3.302" x2="-2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-3.81" x2="2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-3.302" x2="2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-3.302" x2="-2.54" y2="-3.302" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="2.54" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="3.175" width="0.254" layer="21"/>
<pad name="A" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="K" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-3.81" y="4.0894" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.7846" y="-5.3594" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-3.556" y="-3.302" size="1.016" layer="21" ratio="14">+</text>
<text x="2.794" y="-3.302" size="1.016" layer="21" ratio="14">-</text>
</package>
<package name="SFH480">
<description>&lt;B&gt;IR LED&lt;/B&gt;&lt;p&gt;
infrared emitting diode, Infineon
TO-18, lead spacing 2.54 mm, cathode marking&lt;p&gt;
Inifineon</description>
<wire x1="-2.159" y1="1.524" x2="-2.794" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="0" y1="1.778" x2="1.5358" y2="0.8959" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="0.8959" x2="0" y2="1.778" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="-0.8959" x2="0" y2="-1.778" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="0" y1="-1.778" x2="1.5358" y2="-0.8959" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="1.5142" y1="0.9318" x2="1.778" y2="0" width="0.1524" layer="51" curve="-31.606487"/>
<wire x1="1.5" y1="-0.9546" x2="1.778" y2="0" width="0.1524" layer="51" curve="32.472615"/>
<wire x1="-1.778" y1="0" x2="-1.5142" y2="-0.9318" width="0.1524" layer="51" curve="31.606487"/>
<wire x1="-1.778" y1="0" x2="-1.5" y2="0.9546" width="0.1524" layer="51" curve="-32.472615"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="51" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0.0539" y1="-1.0699" x2="1.0699" y2="-0.0539" width="0.1524" layer="51" curve="90"/>
<circle x="0" y="0" radius="2.667" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="2.413" width="0.254" layer="21"/>
<pad name="K" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="A" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-1.27" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-4.318" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SFH482">
<description>&lt;B&gt;IR LED&lt;/B&gt;&lt;p&gt;
infrared emitting diode, Infineon
TO-18, lead spacing 2.54 mm, cathode marking&lt;p&gt;
Inifineon</description>
<wire x1="-2.159" y1="1.524" x2="-2.794" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="0" y1="1.778" x2="1.5358" y2="0.8959" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="0.8959" x2="0" y2="1.778" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="-0.8959" x2="0" y2="-1.778" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="0" y1="-1.778" x2="1.5358" y2="-0.8959" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="1.5142" y1="0.9318" x2="1.778" y2="0" width="0.1524" layer="51" curve="-31.606487"/>
<wire x1="1.5" y1="-0.9546" x2="1.778" y2="0" width="0.1524" layer="51" curve="32.472615"/>
<wire x1="-1.778" y1="0" x2="-1.5142" y2="-0.9318" width="0.1524" layer="51" curve="31.606487"/>
<wire x1="-1.778" y1="0" x2="-1.5" y2="0.9546" width="0.1524" layer="51" curve="-32.472615"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="51" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0.0539" y1="-1.0699" x2="1.0699" y2="-0.0539" width="0.1524" layer="51" curve="90"/>
<circle x="0" y="0" radius="2.667" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="2.413" width="0.254" layer="21"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-1.27" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-4.318" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="U57X32">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
rectangle, 5.7 x 3.2 mm</description>
<wire x1="-3.175" y1="1.905" x2="3.175" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.905" x2="3.175" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.905" x2="-3.175" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.905" x2="-3.175" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="1.397" x2="2.667" y2="1.397" width="0.1524" layer="21"/>
<wire x1="2.667" y1="-1.397" x2="2.667" y2="1.397" width="0.1524" layer="21"/>
<wire x1="2.667" y1="-1.397" x2="-2.667" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="1.397" x2="-2.667" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.016" x2="2.54" y2="1.016" width="0.1524" layer="51"/>
<wire x1="2.286" y1="1.27" x2="2.286" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="0.508" x2="2.54" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-0.508" x2="2.54" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-1.016" x2="2.54" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="1.27" x2="-1.778" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="1.27" x2="-0.762" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="1.27" x2="-0.254" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="0.254" y1="1.27" x2="0.254" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="0.762" y1="1.27" x2="0.762" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="1.778" y1="1.27" x2="1.778" y2="-1.27" width="0.1524" layer="51"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="3.683" y="0.254" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="3.683" y="-1.524" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="IRL80A">
<description>&lt;B&gt;IR LED&lt;/B&gt;&lt;p&gt;
IR transmitter Siemens</description>
<wire x1="0.889" y1="2.286" x2="0.889" y2="1.778" width="0.1524" layer="21"/>
<wire x1="0.889" y1="1.778" x2="0.889" y2="0.762" width="0.1524" layer="51"/>
<wire x1="0.889" y1="0.762" x2="0.889" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.889" y1="-0.635" x2="0.889" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-1.778" x2="0.889" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="0.889" y1="-2.286" x2="-0.889" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="2.286" x2="-0.889" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.778" x2="-0.889" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="0.762" x2="-0.889" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-0.762" x2="-0.889" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-1.778" x2="-0.889" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="2.286" x2="0.889" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-0.762" x2="-0.889" y2="0.762" width="0.1524" layer="21" curve="-180"/>
<wire x1="-1.397" y1="0.254" x2="-1.397" y2="-0.254" width="0.0508" layer="21"/>
<wire x1="-1.143" y1="0.508" x2="-1.143" y2="-0.508" width="0.0508" layer="21"/>
<pad name="K" x="0" y="1.27" drill="0.8128" shape="octagon"/>
<pad name="A" x="0" y="-1.27" drill="0.8128" shape="octagon"/>
<text x="1.27" y="0.381" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="1.27" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="P-LCC-2">
<description>&lt;b&gt;TOPLED® High-optical Power LED (HOP)&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... ls_t675.pdf</description>
<wire x1="-1.4" y1="-1.05" x2="-1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="-1.6" x2="-1.1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="-0.85" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="1.1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="-1.6" x2="1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="-1.6" x2="1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="1.6" x2="1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="1.6" x2="-1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.1" y2="1.8" width="0.1016" layer="51"/>
<wire x1="-1.1" y1="1.8" x2="1.1" y2="1.8" width="0.1016" layer="51"/>
<wire x1="1.1" y1="1.8" x2="1.1" y2="1.6" width="0.1016" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="-1.1" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="-1.1" y1="-1.8" x2="1.1" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="1.1" y1="-1.8" x2="1.1" y2="-1.6" width="0.1016" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.1" width="0.2032" layer="51"/>
<smd name="C" x="0" y="-2.75" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="2.75" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<text x="-2.54" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-0.635" y="2.54" size="1.27" layer="21">A</text>
<text x="-0.635" y="-3.81" size="1.27" layer="21">C</text>
<rectangle x1="-1.3" y1="-2.25" x2="1.3" y2="-0.75" layer="31"/>
<rectangle x1="-1.3" y1="0.75" x2="1.3" y2="2.25" layer="31"/>
<rectangle x1="-0.25" y1="-0.25" x2="0.25" y2="0.25" layer="21"/>
<rectangle x1="-1.4" y1="0.65" x2="1.4" y2="2.35" layer="29"/>
<rectangle x1="-1.4" y1="-2.35" x2="1.4" y2="-0.65" layer="29"/>
</package>
<package name="OSRAM-MINI-TOP-LED">
<description>&lt;b&gt;BLUE LINETM Hyper Mini TOPLED® Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LB M676.pdf</description>
<wire x1="-0.6" y1="0.9" x2="-0.6" y2="-0.7" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="-0.9" x2="-0.4" y2="-0.9" width="0.1016" layer="51"/>
<wire x1="-0.4" y1="-0.9" x2="0.6" y2="-0.9" width="0.1016" layer="51"/>
<wire x1="0.6" y1="-0.9" x2="0.6" y2="0.9" width="0.1016" layer="51"/>
<wire x1="0.6" y1="0.9" x2="-0.6" y2="0.9" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="0.95" x2="-0.45" y2="1.1" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="1.1" x2="0.45" y2="1.1" width="0.1016" layer="51"/>
<wire x1="0.45" y1="1.1" x2="0.45" y2="0.95" width="0.1016" layer="51"/>
<wire x1="-0.6" y1="-0.7" x2="-0.4" y2="-0.9" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="-0.9" x2="-0.45" y2="-1.1" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="-1.1" x2="0.45" y2="-1.1" width="0.1016" layer="51"/>
<wire x1="0.45" y1="-1.1" x2="0.45" y2="-0.95" width="0.1016" layer="51"/>
<smd name="A" x="0" y="2.6" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<smd name="C" x="0" y="-2.6" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<text x="-0.635" y="1.905" size="1.27" layer="21">A</text>
<text x="-0.635" y="-3.175" size="1.27" layer="21">C</text>
<text x="-2.54" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.5" y1="0.6" x2="0.5" y2="1.4" layer="29"/>
<rectangle x1="-0.5" y1="-1.4" x2="0.5" y2="-0.6" layer="29"/>
<rectangle x1="-0.15" y1="-0.6" x2="0.15" y2="-0.3" layer="51"/>
<rectangle x1="-0.45" y1="0.65" x2="0.45" y2="1.35" layer="31"/>
<rectangle x1="-0.45" y1="-1.35" x2="0.45" y2="-0.65" layer="31"/>
</package>
<package name="OSRAM-SIDELED">
<description>&lt;b&gt;Super SIDELED® High-Current LED&lt;/b&gt;&lt;p&gt;
LG A672, LP A672 &lt;br&gt;
Source: http://www.osram.convergy.de/ ... LG_LP_A672.pdf (2004.05.13)</description>
<wire x1="-1.85" y1="-2.05" x2="-1.85" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.85" y1="-0.75" x2="-1.7" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.7" y1="-0.75" x2="-1.7" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.7" y1="0.75" x2="-1.85" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.85" y1="0.75" x2="-1.85" y2="2.05" width="0.1016" layer="51"/>
<wire x1="-1.85" y1="2.05" x2="0.9" y2="2.05" width="0.1016" layer="51"/>
<wire x1="0.9" y1="2.05" x2="0.9" y2="-2.05" width="0.1016" layer="51"/>
<wire x1="0.9" y1="-2.05" x2="-1.85" y2="-2.05" width="0.1016" layer="51"/>
<wire x1="0.9" y1="-2.05" x2="1.05" y2="-2.05" width="0.1016" layer="51"/>
<wire x1="1.05" y1="-2.05" x2="1.85" y2="-1.85" width="0.1016" layer="51"/>
<wire x1="1.85" y1="-1.85" x2="1.85" y2="1.85" width="0.1016" layer="51"/>
<wire x1="1.85" y1="1.85" x2="1.05" y2="2.05" width="0.1016" layer="51"/>
<wire x1="1.05" y1="2.05" x2="0.9" y2="2.05" width="0.1016" layer="51"/>
<wire x1="1.05" y1="2.05" x2="1.05" y2="-2.05" width="0.1016" layer="51"/>
<wire x1="-0.55" y1="-0.9" x2="-0.55" y2="0.9" width="0.1016" layer="51" curve="-167.319617"/>
<wire x1="-0.55" y1="-0.9" x2="0.85" y2="-1.2" width="0.1016" layer="51" style="shortdash"/>
<wire x1="-0.55" y1="0.9" x2="0.85" y2="1.2" width="0.1016" layer="51" style="shortdash"/>
<smd name="C" x="0" y="-2.5" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="2.5" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<text x="0.635" y="-3.175" size="1.27" layer="21" rot="R90">C</text>
<text x="0.635" y="2.54" size="1.27" layer="21" rot="R90">A</text>
<text x="-2.54" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.1" y1="-2.2" x2="2.1" y2="-0.4" layer="29"/>
<rectangle x1="-2.1" y1="0.4" x2="2.1" y2="2.2" layer="29"/>
<rectangle x1="-1.9" y1="-2.1" x2="1.9" y2="-0.6" layer="31"/>
<rectangle x1="-1.9" y1="0.6" x2="1.9" y2="2.1" layer="31"/>
<rectangle x1="-1.85" y1="-2.05" x2="-0.7" y2="-1" layer="51"/>
</package>
<package name="SMART-LED">
<description>&lt;b&gt;SmartLEDTM Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LA_LO_LS_LY L896.pdf</description>
<wire x1="-0.35" y1="0.6" x2="0.35" y2="0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="0.35" y1="0.6" x2="0.35" y2="-0.6" width="0.1016" layer="21" style="shortdash"/>
<wire x1="0.35" y1="-0.6" x2="0.15" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="0.15" y1="-0.6" x2="-0.35" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="-0.35" y1="-0.6" x2="-0.35" y2="0.6" width="0.1016" layer="21" style="shortdash"/>
<wire x1="0.35" y1="-0.4" x2="0.15" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<smd name="A" x="0" y="0.725" dx="0.35" dy="0.35" layer="1"/>
<smd name="B" x="0" y="-0.725" dx="0.35" dy="0.35" layer="1"/>
<text x="-0.635" y="-0.635" size="1.016" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-0.635" size="1.016" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.15" y1="-0.35" x2="0.15" y2="-0.05" layer="21"/>
<rectangle x1="-0.15" y1="0.6" x2="0.15" y2="0.85" layer="51"/>
<rectangle x1="-0.15" y1="-0.85" x2="0.15" y2="-0.6" layer="51"/>
</package>
<package name="P-LCC-2-TOPLED-RG">
<description>&lt;b&gt;Hyper TOPLED® RG Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LA_LO_LS_LY T776.pdf</description>
<wire x1="-1.4" y1="-1.05" x2="-1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="-1.6" x2="-1.1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="-0.85" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="1.1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="-1.6" x2="1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="-1.6" x2="1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="1.6" x2="1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="1.6" x2="-1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.1" y2="2.45" width="0.1016" layer="51"/>
<wire x1="1.1" y1="2.45" x2="1.1" y2="1.6" width="0.1016" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="-1.1" y2="-2.45" width="0.1016" layer="51"/>
<wire x1="1.1" y1="-2.45" x2="1.1" y2="-1.6" width="0.1016" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.1" width="0.2032" layer="21"/>
<smd name="C" x="0" y="-3.5" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="3.5" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<text x="-2.54" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-0.635" y="3.29" size="1.27" layer="21">A</text>
<text x="-0.635" y="-4.56" size="1.27" layer="21">C</text>
<rectangle x1="-1.3" y1="-3" x2="1.3" y2="-1.5" layer="31"/>
<rectangle x1="-1.3" y1="1.5" x2="1.3" y2="3" layer="31"/>
<rectangle x1="-0.25" y1="-0.25" x2="0.25" y2="0.25" layer="21"/>
<rectangle x1="-1.15" y1="2.4" x2="1.15" y2="2.7" layer="51"/>
<rectangle x1="-1.15" y1="-2.7" x2="1.15" y2="-2.4" layer="51"/>
<rectangle x1="-1.5" y1="1.5" x2="1.5" y2="3.2" layer="29"/>
<rectangle x1="-1.5" y1="-3.2" x2="1.5" y2="-1.5" layer="29"/>
<hole x="0" y="0" drill="2.8"/>
</package>
<package name="MICRO-SIDELED">
<description>&lt;b&gt;Hyper Micro SIDELED®&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LA_LO_LS_LY Y876.pdf</description>
<wire x1="0.65" y1="1.1" x2="-0.1" y2="1.1" width="0.1016" layer="51"/>
<wire x1="-0.1" y1="1.1" x2="-0.35" y2="1" width="0.1016" layer="51"/>
<wire x1="-0.35" y1="1" x2="-0.35" y2="-0.9" width="0.1016" layer="21"/>
<wire x1="-0.35" y1="-0.9" x2="-0.1" y2="-1.1" width="0.1016" layer="51"/>
<wire x1="-0.1" y1="-1.1" x2="0.65" y2="-1.1" width="0.1016" layer="51"/>
<wire x1="0.65" y1="-1.1" x2="0.65" y2="1.1" width="0.1016" layer="21"/>
<wire x1="0.6" y1="0.9" x2="0.25" y2="0.7" width="0.0508" layer="21"/>
<wire x1="0.25" y1="0.7" x2="0.25" y2="-0.7" width="0.0508" layer="21"/>
<wire x1="0.25" y1="-0.7" x2="0.6" y2="-0.9" width="0.0508" layer="21"/>
<smd name="A" x="0" y="1.95" dx="1.6" dy="1.6" layer="1" stop="no" cream="no"/>
<smd name="C" x="0" y="-1.95" dx="1.6" dy="1.6" layer="1" stop="no" cream="no"/>
<text x="-1.27" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.4" y1="1.1" x2="0.4" y2="1.8" layer="29"/>
<rectangle x1="-0.4" y1="-1.8" x2="0.4" y2="-1.1" layer="29"/>
<rectangle x1="-0.35" y1="-1.75" x2="0.35" y2="-1.15" layer="31"/>
<rectangle x1="-0.35" y1="1.15" x2="0.35" y2="1.75" layer="31"/>
<rectangle x1="-0.125" y1="1.125" x2="0.125" y2="1.75" layer="51"/>
<rectangle x1="-0.125" y1="-1.75" x2="0.125" y2="-1.125" layer="51"/>
</package>
<package name="P-LCC-4">
<description>&lt;b&gt;Power TOPLED®&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LA_LO_LA_LY E67B.pdf</description>
<wire x1="-1.4" y1="-1.05" x2="-1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="-1.6" x2="-1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1" y1="-1.6" x2="-0.85" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1" y1="-1.6" x2="1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="-1.6" x2="1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="1.6" x2="1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="1.6" x2="-1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1" y1="1.6" x2="-1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1" y1="1.6" x2="-1" y2="1.8" width="0.1016" layer="51"/>
<wire x1="-1" y1="1.8" x2="-0.5" y2="1.8" width="0.1016" layer="51"/>
<wire x1="-0.5" y1="1.8" x2="-0.5" y2="1.65" width="0.1016" layer="51"/>
<wire x1="0.5" y1="1.65" x2="0.5" y2="1.8" width="0.1016" layer="51"/>
<wire x1="0.5" y1="1.8" x2="1.1" y2="1.8" width="0.1016" layer="51"/>
<wire x1="1.1" y1="1.8" x2="1.1" y2="1.6" width="0.1016" layer="51"/>
<wire x1="-1" y1="-1.6" x2="-1" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="-1" y1="-1.8" x2="-0.5" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="-0.5" y1="-1.8" x2="-0.5" y2="-1.65" width="0.1016" layer="51"/>
<wire x1="0.5" y1="-1.65" x2="0.5" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="0.5" y1="-1.8" x2="1" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="1" y1="-1.8" x2="1" y2="-1.6" width="0.1016" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.1" width="0.2032" layer="51"/>
<smd name="A" x="-2" y="3.15" dx="3.3" dy="4.8" layer="1" stop="no" cream="no"/>
<smd name="C@3" x="2" y="3.15" dx="3.3" dy="4.8" layer="1" stop="no" cream="no"/>
<smd name="C@4" x="2" y="-3.15" dx="3.3" dy="4.8" layer="1" stop="no" cream="no"/>
<smd name="C@1" x="-2" y="-3.15" dx="3.3" dy="4.8" layer="1" stop="no" cream="no"/>
<text x="-3.81" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="5.08" y="-2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-1.905" y="-3.81" size="1.27" layer="21">C</text>
<text x="-1.905" y="2.54" size="1.27" layer="21">A</text>
<text x="1.27" y="2.54" size="1.27" layer="21">C</text>
<text x="1.27" y="-3.81" size="1.27" layer="21">C</text>
<rectangle x1="-1.15" y1="0.75" x2="-0.35" y2="1.85" layer="29"/>
<rectangle x1="0.35" y1="0.75" x2="1.15" y2="1.85" layer="29"/>
<rectangle x1="0.35" y1="-1.85" x2="1.15" y2="-0.75" layer="29"/>
<rectangle x1="-1.15" y1="-1.85" x2="-0.35" y2="-0.75" layer="29"/>
<rectangle x1="-1.1" y1="-1.8" x2="-0.4" y2="-0.8" layer="31"/>
<rectangle x1="0.4" y1="-1.8" x2="1.1" y2="-0.8" layer="31"/>
<rectangle x1="0.4" y1="0.8" x2="1.1" y2="1.8" layer="31"/>
<rectangle x1="-1.1" y1="0.8" x2="-0.4" y2="1.8" layer="31"/>
<rectangle x1="-0.2" y1="-0.2" x2="0.2" y2="0.2" layer="21"/>
</package>
<package name="CHIP-LED0603">
<description>&lt;b&gt;Hyper CHIPLED Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
LB Q993&lt;br&gt;
Source: http://www.osram.convergy.de/ ... Lb_q993.pdf</description>
<wire x1="-0.4" y1="0.45" x2="-0.4" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.45" x2="0.4" y2="-0.45" width="0.1016" layer="51"/>
<smd name="C" x="0" y="0.75" dx="0.8" dy="0.8" layer="1"/>
<smd name="A" x="0" y="-0.75" dx="0.8" dy="0.8" layer="1"/>
<text x="-0.635" y="-0.635" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-0.635" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.45" y1="0.45" x2="0.45" y2="0.85" layer="51"/>
<rectangle x1="-0.45" y1="-0.85" x2="0.45" y2="-0.45" layer="51"/>
<rectangle x1="-0.45" y1="0" x2="-0.3" y2="0.3" layer="21"/>
<rectangle x1="0.3" y1="0" x2="0.45" y2="0.3" layer="21"/>
<rectangle x1="-0.15" y1="0" x2="0.15" y2="0.3" layer="21"/>
</package>
<package name="CHIP-LED0805">
<description>&lt;b&gt;Hyper CHIPLED Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
LB R99A&lt;br&gt;
Source: http://www.osram.convergy.de/ ... lb_r99a.pdf</description>
<wire x1="-0.625" y1="0.45" x2="-0.625" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="0.625" y1="0.45" x2="0.625" y2="-0.475" width="0.1016" layer="51"/>
<smd name="C" x="0" y="1.05" dx="1.2" dy="1.2" layer="1"/>
<smd name="A" x="0" y="-1.05" dx="1.2" dy="1.2" layer="1"/>
<text x="-1.27" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.675" y1="0" x2="-0.525" y2="0.3" layer="21"/>
<rectangle x1="0.525" y1="0" x2="0.675" y2="0.3" layer="21"/>
<rectangle x1="-0.15" y1="0" x2="0.15" y2="0.3" layer="21"/>
<rectangle x1="-0.675" y1="0.45" x2="0.675" y2="1.05" layer="51"/>
<rectangle x1="-0.675" y1="-1.05" x2="0.675" y2="-0.45" layer="51"/>
</package>
<package name="MINI-TOPLED-SANTANA">
<description>&lt;b&gt;Mini TOPLED Santana®&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG M470.pdf</description>
<wire x1="0.7" y1="-1" x2="0.35" y2="-1" width="0.1016" layer="21"/>
<wire x1="0.35" y1="-1" x2="-0.7" y2="-1" width="0.1016" layer="21"/>
<wire x1="-0.7" y1="-1" x2="-0.7" y2="1" width="0.1016" layer="21"/>
<wire x1="-0.7" y1="1" x2="0.7" y2="1" width="0.1016" layer="21"/>
<wire x1="0.7" y1="1" x2="0.7" y2="-0.65" width="0.1016" layer="21"/>
<wire x1="0.7" y1="-0.65" x2="0.7" y2="-1" width="0.1016" layer="21"/>
<wire x1="0.45" y1="-0.7" x2="-0.45" y2="-0.7" width="0.1016" layer="21"/>
<wire x1="-0.45" y1="-0.7" x2="-0.45" y2="0.7" width="0.1016" layer="21"/>
<wire x1="-0.45" y1="0.7" x2="0.45" y2="0.7" width="0.1016" layer="21"/>
<wire x1="0.45" y1="0.7" x2="0.45" y2="-0.7" width="0.1016" layer="21"/>
<wire x1="0.7" y1="-0.65" x2="0.35" y2="-1" width="0.1016" layer="21"/>
<smd name="C" x="0" y="-2.2" dx="1.6" dy="1.6" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="2.2" dx="1.6" dy="1.6" layer="1" stop="no" cream="no"/>
<text x="-1.27" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.55" y1="1.5" x2="0.55" y2="2.1" layer="29"/>
<rectangle x1="-0.55" y1="-2.1" x2="0.55" y2="-1.5" layer="29"/>
<rectangle x1="-0.5" y1="-2.05" x2="0.5" y2="-1.55" layer="31"/>
<rectangle x1="-0.5" y1="1.55" x2="0.5" y2="2.05" layer="31"/>
<rectangle x1="-0.2" y1="-0.4" x2="0.15" y2="-0.05" layer="21"/>
<rectangle x1="-0.5" y1="-2.1" x2="0.5" y2="-1.4" layer="51"/>
<rectangle x1="-0.5" y1="1.4" x2="0.5" y2="2.05" layer="51"/>
<rectangle x1="-0.5" y1="1" x2="0.5" y2="1.4" layer="21"/>
<rectangle x1="-0.5" y1="-1.4" x2="0.5" y2="-1.05" layer="21"/>
<hole x="0" y="0" drill="2.7"/>
</package>
<package name="CHIPLED_0805">
<description>&lt;b&gt;CHIPLED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG_R971.pdf</description>
<wire x1="-0.35" y1="0.925" x2="0.35" y2="0.925" width="0.1016" layer="51" curve="162.394521"/>
<wire x1="-0.35" y1="-0.925" x2="0.35" y2="-0.925" width="0.1016" layer="51" curve="-162.394521"/>
<wire x1="0.575" y1="0.525" x2="0.575" y2="-0.525" width="0.1016" layer="51"/>
<wire x1="-0.575" y1="-0.5" x2="-0.575" y2="0.925" width="0.1016" layer="51"/>
<circle x="-0.45" y="0.85" radius="0.103" width="0.1016" layer="51"/>
<smd name="C" x="0" y="1.05" dx="1.2" dy="1.2" layer="1"/>
<smd name="A" x="0" y="-1.05" dx="1.2" dy="1.2" layer="1"/>
<text x="-1.27" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="0.3" y1="0.5" x2="0.625" y2="1" layer="51"/>
<rectangle x1="-0.325" y1="0.5" x2="-0.175" y2="0.75" layer="51"/>
<rectangle x1="0.175" y1="0.5" x2="0.325" y2="0.75" layer="51"/>
<rectangle x1="-0.2" y1="0.5" x2="0.2" y2="0.675" layer="51"/>
<rectangle x1="0.3" y1="-1" x2="0.625" y2="-0.5" layer="51"/>
<rectangle x1="-0.625" y1="-1" x2="-0.3" y2="-0.5" layer="51"/>
<rectangle x1="0.175" y1="-0.75" x2="0.325" y2="-0.5" layer="51"/>
<rectangle x1="-0.325" y1="-0.75" x2="-0.175" y2="-0.5" layer="51"/>
<rectangle x1="-0.2" y1="-0.675" x2="0.2" y2="-0.5" layer="51"/>
<rectangle x1="-0.1" y1="0" x2="0.1" y2="0.2" layer="21"/>
<rectangle x1="-0.6" y1="0.5" x2="-0.3" y2="0.8" layer="51"/>
<rectangle x1="-0.625" y1="0.925" x2="-0.3" y2="1" layer="51"/>
</package>
<package name="CHIPLED_1206">
<description>&lt;b&gt;CHIPLED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG_LY N971.pdf</description>
<wire x1="-0.4" y1="1.6" x2="0.4" y2="1.6" width="0.1016" layer="51" curve="172.619069"/>
<wire x1="-0.8" y1="-0.95" x2="-0.8" y2="0.95" width="0.1016" layer="51"/>
<wire x1="0.8" y1="0.95" x2="0.8" y2="-0.95" width="0.1016" layer="51"/>
<circle x="-0.55" y="1.425" radius="0.1" width="0.1016" layer="51"/>
<smd name="C" x="0" y="1.75" dx="1.5" dy="1.5" layer="1"/>
<smd name="A" x="0" y="-1.75" dx="1.5" dy="1.5" layer="1"/>
<text x="-1.27" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.85" y1="1.525" x2="-0.35" y2="1.65" layer="51"/>
<rectangle x1="-0.85" y1="1.225" x2="-0.625" y2="1.55" layer="51"/>
<rectangle x1="-0.45" y1="1.225" x2="-0.325" y2="1.45" layer="51"/>
<rectangle x1="-0.65" y1="1.225" x2="-0.225" y2="1.35" layer="51"/>
<rectangle x1="0.35" y1="1.3" x2="0.85" y2="1.65" layer="51"/>
<rectangle x1="0.25" y1="1.225" x2="0.85" y2="1.35" layer="51"/>
<rectangle x1="-0.85" y1="0.95" x2="0.85" y2="1.25" layer="51"/>
<rectangle x1="-0.85" y1="-1.65" x2="0.85" y2="-0.95" layer="51"/>
<rectangle x1="-0.85" y1="0.35" x2="-0.525" y2="0.775" layer="21"/>
<rectangle x1="0.525" y1="0.35" x2="0.85" y2="0.775" layer="21"/>
<rectangle x1="-0.175" y1="0" x2="0.175" y2="0.35" layer="21"/>
</package>
<package name="CHIPLED_0603">
<description>&lt;b&gt;CHIPLED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG_LY Q971.pdf</description>
<wire x1="-0.3" y1="0.8" x2="0.3" y2="0.8" width="0.1016" layer="51" curve="170.055574"/>
<wire x1="-0.275" y1="-0.825" x2="0.275" y2="-0.825" width="0.0508" layer="51" curve="-180"/>
<wire x1="-0.4" y1="0.375" x2="-0.4" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.35" x2="0.4" y2="-0.35" width="0.1016" layer="51"/>
<circle x="-0.35" y="0.625" radius="0.075" width="0.0508" layer="51"/>
<smd name="C" x="0" y="0.75" dx="0.8" dy="0.8" layer="1"/>
<smd name="A" x="0" y="-0.75" dx="0.8" dy="0.8" layer="1"/>
<text x="-0.635" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.45" y1="0.7" x2="-0.25" y2="0.85" layer="51"/>
<rectangle x1="-0.275" y1="0.55" x2="-0.225" y2="0.6" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="-0.4" y2="0.725" layer="51"/>
<rectangle x1="0.25" y1="0.55" x2="0.45" y2="0.85" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="0.45" y2="0.575" layer="51"/>
<rectangle x1="-0.45" y1="-0.85" x2="-0.25" y2="-0.35" layer="51"/>
<rectangle x1="0.25" y1="-0.85" x2="0.45" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.575" x2="0.275" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.65" x2="-0.175" y2="-0.55" layer="51"/>
<rectangle x1="0.175" y1="-0.65" x2="0.275" y2="-0.55" layer="51"/>
<rectangle x1="-0.125" y1="0" x2="0.125" y2="0.25" layer="21"/>
</package>
<package name="CHIPLED-0603-TTW">
<description>&lt;b&gt;CHIPLED-0603&lt;/b&gt;&lt;p&gt;
Recommended Solder Pad useable for SmartLEDTM and Chipled - Package 0603&lt;br&gt;
Package able to withstand TTW-soldering heat&lt;br&gt;
Package suitable for TTW-soldering&lt;br&gt;
Source: http://www.osram.convergy.de/ ... LO_LS_LY L89K.pdf</description>
<wire x1="-0.3" y1="0.8" x2="0.3" y2="0.8" width="0.1016" layer="51" curve="170.055574"/>
<wire x1="-0.275" y1="-0.825" x2="0.275" y2="-0.825" width="0.0508" layer="51" curve="-180"/>
<wire x1="-0.4" y1="0.375" x2="-0.4" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.35" x2="0.4" y2="-0.35" width="0.1016" layer="51"/>
<circle x="-0.35" y="0.625" radius="0.075" width="0.0508" layer="51"/>
<smd name="C" x="0" y="0.875" dx="0.8" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="-0.875" dx="0.8" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="A@1" x="0" y="-0.5" dx="0.35" dy="0.35" layer="1"/>
<smd name="C@1" x="0" y="0.5" dx="0.35" dy="0.35" layer="1"/>
<text x="-0.635" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.45" y1="0.7" x2="-0.25" y2="0.85" layer="51"/>
<rectangle x1="-0.275" y1="0.55" x2="-0.225" y2="0.6" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="-0.4" y2="0.725" layer="51"/>
<rectangle x1="0.25" y1="0.55" x2="0.45" y2="0.85" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="0.45" y2="0.575" layer="51"/>
<rectangle x1="-0.45" y1="-0.85" x2="-0.25" y2="-0.35" layer="51"/>
<rectangle x1="0.25" y1="-0.85" x2="0.45" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.575" x2="0.275" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.65" x2="-0.175" y2="-0.55" layer="51"/>
<rectangle x1="0.175" y1="-0.65" x2="0.275" y2="-0.55" layer="51"/>
<rectangle x1="-0.125" y1="0" x2="0.125" y2="0.25" layer="21"/>
<rectangle x1="-0.175" y1="0.325" x2="0.175" y2="0.7" layer="29"/>
<rectangle x1="-0.4" y1="0.625" x2="0.4" y2="1.125" layer="29"/>
<rectangle x1="-0.4" y1="-1.125" x2="0.4" y2="-0.625" layer="29"/>
<rectangle x1="-0.175" y1="-0.675" x2="0.175" y2="-0.325" layer="29"/>
</package>
<package name="SMARTLED-TTW">
<description>&lt;b&gt;SmartLED TTW&lt;/b&gt;&lt;p&gt;
Recommended Solder Pad useable for SmartLEDTM and Chipled - Package 0603&lt;br&gt;
Package able to withstand TTW-soldering heat&lt;br&gt;
Package suitable for TTW-soldering&lt;br&gt;
Source: http://www.osram.convergy.de/ ... LO_LS_LY L89K.pdf</description>
<wire x1="-0.35" y1="0.6" x2="0.35" y2="0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="0.35" y1="0.6" x2="0.35" y2="-0.6" width="0.1016" layer="21" style="shortdash"/>
<wire x1="0.35" y1="-0.6" x2="0.15" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="0.15" y1="-0.6" x2="-0.35" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="-0.35" y1="-0.6" x2="-0.35" y2="0.6" width="0.1016" layer="21" style="shortdash"/>
<wire x1="0.35" y1="-0.4" x2="0.15" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<smd name="C" x="0" y="0.875" dx="0.8" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="-0.875" dx="0.8" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="A@1" x="0" y="-0.5" dx="0.35" dy="0.35" layer="1" stop="no" cream="no"/>
<smd name="C@1" x="0" y="0.5" dx="0.35" dy="0.35" layer="1" stop="no" cream="no"/>
<text x="-0.635" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.175" y1="0.325" x2="0.175" y2="0.7" layer="29"/>
<rectangle x1="-0.15" y1="-0.35" x2="0.15" y2="-0.05" layer="21"/>
<rectangle x1="-0.15" y1="0.6" x2="0.15" y2="0.85" layer="51"/>
<rectangle x1="-0.15" y1="-0.85" x2="0.15" y2="-0.6" layer="51"/>
<rectangle x1="-0.225" y1="0.3" x2="0.225" y2="0.975" layer="31"/>
<rectangle x1="-0.175" y1="-0.7" x2="0.175" y2="-0.325" layer="29" rot="R180"/>
<rectangle x1="-0.225" y1="-0.975" x2="0.225" y2="-0.3" layer="31" rot="R180"/>
</package>
<package name="LUMILED+">
<description>&lt;b&gt;Lumileds Lighting. LUXEON®&lt;/b&gt; with cool pad&lt;p&gt;
Source: K2.pdf</description>
<wire x1="-3.575" y1="2.3375" x2="-2.3375" y2="3.575" width="0.2032" layer="21"/>
<wire x1="-2.3375" y1="3.575" x2="2.3375" y2="3.575" width="0.2032" layer="21"/>
<wire x1="3.575" y1="2.3375" x2="3.575" y2="-3.575" width="0.2032" layer="21"/>
<wire x1="3.575" y1="-3.575" x2="-2.3375" y2="-3.575" width="0.2032" layer="21"/>
<wire x1="-2.3375" y1="-3.575" x2="-2.5" y2="-3.4125" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="-3.4125" x2="-3.4125" y2="-2.5" width="0.2032" layer="21" curve="167.429893"/>
<wire x1="-3.4125" y1="-2.5" x2="-3.575" y2="-2.3375" width="0.2032" layer="21"/>
<wire x1="-3.575" y1="-2.3375" x2="-3.575" y2="2.3375" width="0.2032" layer="21"/>
<wire x1="2.3375" y1="3.575" x2="2.5" y2="3.4125" width="0.2032" layer="21"/>
<wire x1="2.5" y1="3.4125" x2="3.4125" y2="2.5" width="0.2032" layer="21" curve="167.429893"/>
<wire x1="3.4125" y1="2.5" x2="3.575" y2="2.3375" width="0.2032" layer="21"/>
<wire x1="-1.725" y1="2.225" x2="-1.0625" y2="2.5625" width="0.2032" layer="21" curve="-255.44999"/>
<wire x1="1.725" y1="-2.225" x2="1.0625" y2="-2.5625" width="0.2032" layer="21" curve="-255.44999"/>
<circle x="0" y="0" radius="2.725" width="0.2032" layer="51"/>
<smd name="1NC" x="-5.2" y="1.15" dx="2.9" dy="1.7" layer="1"/>
<smd name="2+" x="-5.2" y="-1.15" dx="2.9" dy="1.7" layer="1"/>
<smd name="3NC" x="5.2" y="-1.15" dx="2.9" dy="1.7" layer="1" rot="R180"/>
<smd name="4-" x="5.2" y="1.15" dx="2.9" dy="1.7" layer="1" rot="R180"/>
<text x="-3.175" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-5.975" y1="0.575" x2="-3.625" y2="1.6" layer="51"/>
<rectangle x1="-5.975" y1="-1.6" x2="-3.625" y2="-0.575" layer="51"/>
<rectangle x1="3.625" y1="-1.6" x2="5.975" y2="-0.575" layer="51" rot="R180"/>
<rectangle x1="3.625" y1="0.575" x2="5.975" y2="1.6" layer="51" rot="R180"/>
<polygon width="0.4064" layer="1">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
<polygon width="0.4064" layer="29">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
<polygon width="0.4064" layer="31">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
</package>
<package name="LUMILED">
<description>&lt;b&gt;Lumileds Lighting. LUXEON®&lt;/b&gt; without cool pad&lt;p&gt;
Source: K2.pdf</description>
<wire x1="-3.575" y1="2.3375" x2="-2.3375" y2="3.575" width="0.2032" layer="21"/>
<wire x1="-2.3375" y1="3.575" x2="2.3375" y2="3.575" width="0.2032" layer="21"/>
<wire x1="3.575" y1="2.3375" x2="3.575" y2="-3.575" width="0.2032" layer="21"/>
<wire x1="3.575" y1="-3.575" x2="-2.3375" y2="-3.575" width="0.2032" layer="21"/>
<wire x1="-2.3375" y1="-3.575" x2="-2.5" y2="-3.4125" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="-3.4125" x2="-3.4125" y2="-2.5" width="0.2032" layer="21" curve="167.429893"/>
<wire x1="-3.4125" y1="-2.5" x2="-3.575" y2="-2.3375" width="0.2032" layer="21"/>
<wire x1="-3.575" y1="-2.3375" x2="-3.575" y2="2.3375" width="0.2032" layer="21"/>
<wire x1="2.3375" y1="3.575" x2="2.5" y2="3.4125" width="0.2032" layer="21"/>
<wire x1="2.5" y1="3.4125" x2="3.4125" y2="2.5" width="0.2032" layer="21" curve="167.429893"/>
<wire x1="3.4125" y1="2.5" x2="3.575" y2="2.3375" width="0.2032" layer="21"/>
<wire x1="-1.725" y1="2.225" x2="-1.0625" y2="2.5625" width="0.2032" layer="21" curve="-255.44999"/>
<wire x1="1.725" y1="-2.225" x2="1.0625" y2="-2.5625" width="0.2032" layer="21" curve="-255.44999"/>
<circle x="0" y="0" radius="2.725" width="0.2032" layer="51"/>
<smd name="1NC" x="-5.2" y="1.15" dx="2.9" dy="1.7" layer="1"/>
<smd name="2+" x="-5.2" y="-1.15" dx="2.9" dy="1.7" layer="1"/>
<smd name="3NC" x="5.2" y="-1.15" dx="2.9" dy="1.7" layer="1" rot="R180"/>
<smd name="4-" x="5.2" y="1.15" dx="2.9" dy="1.7" layer="1" rot="R180"/>
<text x="-3.175" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-5.975" y1="0.575" x2="-3.625" y2="1.6" layer="51"/>
<rectangle x1="-5.975" y1="-1.6" x2="-3.625" y2="-0.575" layer="51"/>
<rectangle x1="3.625" y1="-1.6" x2="5.975" y2="-0.575" layer="51" rot="R180"/>
<rectangle x1="3.625" y1="0.575" x2="5.975" y2="1.6" layer="51" rot="R180"/>
<polygon width="0.4064" layer="29">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
<polygon width="0.4064" layer="31">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
</package>
<package name="LED10MM">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
10 mm, round</description>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="2.54" width="0.254" layer="21" curve="-306.869898"/>
<wire x1="4.445" y1="0" x2="0" y2="-4.445" width="0.127" layer="21" curve="-90"/>
<wire x1="3.81" y1="0" x2="0" y2="-3.81" width="0.127" layer="21" curve="-90"/>
<wire x1="3.175" y1="0" x2="0" y2="-3.175" width="0.127" layer="21" curve="-90"/>
<wire x1="2.54" y1="0" x2="0" y2="-2.54" width="0.127" layer="21" curve="-90"/>
<wire x1="-4.445" y1="0" x2="0" y2="4.445" width="0.127" layer="21" curve="-90"/>
<wire x1="-3.81" y1="0" x2="0" y2="3.81" width="0.127" layer="21" curve="-90"/>
<wire x1="-3.175" y1="0" x2="0" y2="3.175" width="0.127" layer="21" curve="-90"/>
<wire x1="-2.54" y1="0" x2="0" y2="2.54" width="0.127" layer="21" curve="-90"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-2.54" width="0.254" layer="21"/>
<circle x="0" y="0" radius="5.08" width="0.127" layer="21"/>
<pad name="K" x="1.27" y="0" drill="0.8128" diameter="1.6764" shape="square"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" diameter="1.6764" shape="octagon"/>
<text x="6.35" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="6.35" y="-1.27" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="KA-3528ASYC">
<description>&lt;b&gt;SURFACE MOUNT LED LAMP&lt;/b&gt; 3.5x2.8mm&lt;p&gt;
Source: http://www.kingbright.com/manager/upload/pdf/KA-3528ASYC(Ver1189474662.1)</description>
<wire x1="-1.55" y1="1.35" x2="1.55" y2="1.35" width="0.1016" layer="21"/>
<wire x1="1.55" y1="1.35" x2="1.55" y2="-1.35" width="0.1016" layer="51"/>
<wire x1="1.55" y1="-1.35" x2="-1.55" y2="-1.35" width="0.1016" layer="21"/>
<wire x1="-1.55" y1="-1.35" x2="-1.55" y2="1.35" width="0.1016" layer="51"/>
<wire x1="-0.65" y1="0.95" x2="0.65" y2="0.95" width="0.1016" layer="21" curve="-68.40813"/>
<wire x1="0.65" y1="-0.95" x2="-0.65" y2="-0.95" width="0.1016" layer="21" curve="-68.40813"/>
<circle x="0" y="0" radius="1.15" width="0.1016" layer="51"/>
<smd name="A" x="-1.55" y="0" dx="1.5" dy="2.2" layer="1"/>
<smd name="C" x="1.55" y="0" dx="1.5" dy="2.2" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.75" y1="0.6" x2="-1.6" y2="1.1" layer="51"/>
<rectangle x1="-1.75" y1="-1.1" x2="-1.6" y2="-0.6" layer="51"/>
<rectangle x1="1.6" y1="-1.1" x2="1.75" y2="-0.6" layer="51" rot="R180"/>
<rectangle x1="1.6" y1="0.6" x2="1.75" y2="1.1" layer="51" rot="R180"/>
<polygon width="0.1016" layer="51">
<vertex x="1.55" y="-1.35"/>
<vertex x="1.55" y="-0.625"/>
<vertex x="0.825" y="-1.35"/>
</polygon>
<polygon width="0.1016" layer="21">
<vertex x="1.55" y="-1.35"/>
<vertex x="1.55" y="-1.175"/>
<vertex x="1" y="-1.175"/>
<vertex x="0.825" y="-1.35"/>
</polygon>
</package>
</packages>
<symbols>
<symbol name="LED">
<wire x1="1.27" y1="0" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="-0.762" x2="-3.429" y2="-2.159" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="-3.302" y2="-3.302" width="0.1524" layer="94"/>
<text x="3.556" y="-4.572" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.715" y="-4.572" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="C" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="A" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="-3.429" y="-2.159"/>
<vertex x="-3.048" y="-1.27"/>
<vertex x="-2.54" y="-1.778"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="-3.302" y="-3.302"/>
<vertex x="-2.921" y="-2.413"/>
<vertex x="-2.413" y="-2.921"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="LED" prefix="LED" uservalue="yes">
<description>&lt;b&gt;LED&lt;/b&gt;&lt;p&gt;
&lt;u&gt;OSRAM&lt;/u&gt;:&lt;br&gt;

- &lt;u&gt;CHIPLED&lt;/u&gt;&lt;br&gt;
LG R971, LG N971, LY N971, LG Q971, LY Q971, LO R971, LY R971
LH N974, LH R974&lt;br&gt;
LS Q976, LO Q976, LY Q976&lt;br&gt;
LO Q996&lt;br&gt;

- &lt;u&gt;Hyper CHIPLED&lt;/u&gt;&lt;br&gt;
LW Q18S&lt;br&gt;
LB Q993, LB Q99A, LB R99A&lt;br&gt;

- &lt;u&gt;SideLED&lt;/u&gt;&lt;br&gt;
LS A670, LO A670, LY A670, LG A670, LP A670&lt;br&gt;
LB A673, LV A673, LT A673, LW A673&lt;br&gt;
LH A674&lt;br&gt;
LY A675&lt;br&gt;
LS A676, LA A676, LO A676, LY A676, LW A676&lt;br&gt;
LS A679, LY A679, LG A679&lt;br&gt;

-  &lt;u&gt;Hyper Micro SIDELED®&lt;/u&gt;&lt;br&gt;
LS Y876, LA Y876, LO Y876, LY Y876&lt;br&gt;
LT Y87S&lt;br&gt;

- &lt;u&gt;SmartLED&lt;/u&gt;&lt;br&gt;
LW L88C, LW L88S&lt;br&gt;
LB L89C, LB L89S, LG L890&lt;br&gt;
LS L89K, LO L89K, LY L89K&lt;br&gt;
LS L896, LA L896, LO L896, LY L896&lt;br&gt;

- &lt;u&gt;TOPLED&lt;/u&gt;&lt;br&gt;
LS T670, LO T670, LY T670, LG T670, LP T670&lt;br&gt;
LSG T670, LSP T670, LSY T670, LOP T670, LYG T670&lt;br&gt;
LG T671, LOG T671, LSG T671&lt;br&gt;
LB T673, LV T673, LT T673, LW T673&lt;br&gt;
LH T674&lt;br&gt;
LS T676, LA T676, LO T676, LY T676, LB T676, LH T676, LSB T676, LW T676&lt;br&gt;
LB T67C, LV T67C, LT T67C, LS T67K, LO T67K, LY T67K, LW E67C&lt;br&gt;
LS E67B, LA E67B, LO E67B, LY E67B, LB E67C, LV E67C, LT E67C&lt;br&gt;
LW T67C&lt;br&gt;
LS T679, LY T679, LG T679&lt;br&gt;
LS T770, LO T770, LY T770, LG T770, LP T770&lt;br&gt;
LB T773, LV T773, LT T773, LW T773&lt;br&gt;
LH T774&lt;br&gt;
LS E675, LA E675, LY E675, LS T675&lt;br&gt;
LS T776, LA T776, LO T776, LY T776, LB T776&lt;br&gt;
LHGB T686&lt;br&gt;
LT T68C, LB T68C&lt;br&gt;

- &lt;u&gt;Hyper Mini TOPLED®&lt;/u&gt;&lt;br&gt;
LB M676&lt;br&gt;

- &lt;u&gt;Mini TOPLED Santana®&lt;/u&gt;&lt;br&gt;
LG M470&lt;br&gt;
LS M47K, LO M47K, LY M47K
&lt;p&gt;
Source: http://www.osram.convergy.de&lt;p&gt;

&lt;u&gt;LUXEON:&lt;/u&gt;&lt;br&gt;
- &lt;u&gt;LUMILED®&lt;/u&gt;&lt;br&gt;
LXK2-PW12-R00, LXK2-PW12-S00, LXK2-PW14-U00, LXK2-PW14-V00&lt;br&gt;
LXK2-PM12-R00, LXK2-PM12-S00, LXK2-PM14-U00&lt;br&gt;
LXK2-PE12-Q00, LXK2-PE12-R00, LXK2-PE12-S00, LXK2-PE14-T00, LXK2-PE14-U00&lt;br&gt;
LXK2-PB12-K00, LXK2-PB12-L00, LXK2-PB12-M00, LXK2-PB14-N00, LXK2-PB14-P00, LXK2-PB14-Q00&lt;br&gt;
LXK2-PR12-L00, LXK2-PR12-M00, LXK2-PR14-Q00, LXK2-PR14-R00&lt;br&gt;
LXK2-PD12-Q00, LXK2-PD12-R00, LXK2-PD12-S00&lt;br&gt;
LXK2-PH12-R00, LXK2-PH12-S00&lt;br&gt;
LXK2-PL12-P00, LXK2-PL12-Q00, LXK2-PL12-R00
&lt;p&gt;
Source: www.luxeon.com&lt;p&gt;

&lt;u&gt;KINGBRIGHT:&lt;/U&gt;&lt;p&gt;
KA-3528ASYC&lt;br&gt;
Source: www.kingbright.com</description>
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="SMT1206" package="1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LD260" package="LD260">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SQR2X5" package="LED2X5">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3MM" package="LED3MM">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5MM" package="LED5MM">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LSU260" package="LSU260">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LZR181" package="LZR181">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="B152" package="Q62902-B152">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="B153" package="Q62902-B153">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="B155" package="Q62902-B155">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="B156" package="Q62902-B156">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SFH480" package="SFH480">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SFH482" package="SFH482">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SQR5.7X3.2" package="U57X32">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="IRL80A" package="IRL80A">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="P-LCC-2" package="P-LCC-2">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MINI-TOP" package="OSRAM-MINI-TOP-LED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SIDELED" package="OSRAM-SIDELED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMART-LED" package="SMART-LED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="B"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="P-LCC-2-BACK" package="P-LCC-2-TOPLED-RG">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MICRO-SIDELED" package="MICRO-SIDELED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="P-LCC-4" package="P-LCC-4">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C@4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CHIP-LED0603" package="CHIP-LED0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CHIP-LED0805" package="CHIP-LED0805">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TOPLED-SANTANA" package="MINI-TOPLED-SANTANA">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CHIPLED_0805" package="CHIPLED_0805">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CHIPLED_1206" package="CHIPLED_1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CHIPLED_0603" package="CHIPLED_0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CHIPLED-0603-TTW" package="CHIPLED-0603-TTW">
<connects>
<connect gate="G$1" pin="A" pad="A@1"/>
<connect gate="G$1" pin="C" pad="C@1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="" package="SMARTLED-TTW">
<connects>
<connect gate="G$1" pin="A" pad="A@1"/>
<connect gate="G$1" pin="C" pad="C@1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-LUMILED+" package="LUMILED+">
<connects>
<connect gate="G$1" pin="A" pad="2+"/>
<connect gate="G$1" pin="C" pad="4-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-LUMILED" package="LUMILED">
<connects>
<connect gate="G$1" pin="A" pad="2+"/>
<connect gate="G$1" pin="C" pad="4-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="10MM" package="LED10MM">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="KA-3528ASYC" package="KA-3528ASYC">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="crystal">
<packages>
<package name="HC49/S">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-3.048" y1="-2.159" x2="3.048" y2="-2.159" width="0.4064" layer="21"/>
<wire x1="-3.048" y1="2.159" x2="3.048" y2="2.159" width="0.4064" layer="21"/>
<wire x1="-3.048" y1="-1.651" x2="3.048" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="3.048" y1="1.651" x2="-3.048" y2="1.651" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="0.254" y2="0.762" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0.762" x2="0.254" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.254" y1="-0.762" x2="-0.254" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-0.762" x2="-0.254" y2="0.762" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0.762" x2="0.635" y2="0" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="0.635" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0.762" x2="-0.635" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="-0.635" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="1.27" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="-1.27" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="2.159" x2="-3.048" y2="-2.159" width="0.4064" layer="21" curve="180"/>
<wire x1="3.048" y1="-2.159" x2="3.048" y2="2.159" width="0.4064" layer="21" curve="180"/>
<wire x1="-3.048" y1="1.651" x2="-3.048" y2="-1.651" width="0.1524" layer="21" curve="180"/>
<wire x1="3.048" y1="-1.651" x2="3.048" y2="1.651" width="0.1524" layer="21" curve="180"/>
<pad name="1" x="-2.413" y="0" drill="0.8128"/>
<pad name="2" x="2.413" y="0" drill="0.8128"/>
<text x="-5.08" y="2.667" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-3.937" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.445" y1="-2.54" x2="4.445" y2="2.54" layer="43"/>
<rectangle x1="-5.08" y1="-1.905" x2="-4.445" y2="1.905" layer="43"/>
<rectangle x1="-5.715" y1="-1.27" x2="-5.08" y2="1.27" layer="43"/>
<rectangle x1="4.445" y1="-1.905" x2="5.08" y2="1.905" layer="43"/>
<rectangle x1="5.08" y1="-1.27" x2="5.715" y2="1.27" layer="43"/>
</package>
<package name="HC49GW">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-5.08" y1="-6.35" x2="5.08" y2="-6.35" width="0.8128" layer="21"/>
<wire x1="4.445" y1="6.731" x2="1.016" y2="6.731" width="0.1524" layer="21"/>
<wire x1="1.016" y1="6.731" x2="-1.016" y2="6.731" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="6.731" x2="-4.445" y2="6.731" width="0.1524" layer="21"/>
<wire x1="4.445" y1="6.731" x2="5.08" y2="6.096" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="6.096" x2="-4.445" y2="6.731" width="0.1524" layer="21" curve="-90"/>
<wire x1="-0.3302" y1="5.08" x2="-0.3302" y2="2.54" width="0.3048" layer="21"/>
<wire x1="-0.3302" y1="2.54" x2="0.3048" y2="2.54" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="2.54" x2="0.3048" y2="5.08" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="5.08" x2="-0.3302" y2="5.08" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="5.08" x2="0.9398" y2="3.81" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="5.08" x2="-0.9398" y2="3.81" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="3.81" x2="2.032" y2="3.81" width="0.1524" layer="21"/>
<wire x1="0.9398" y1="3.81" x2="0.9398" y2="2.54" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="3.81" x2="-2.032" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-0.9398" y1="3.81" x2="-0.9398" y2="2.54" width="0.3048" layer="21"/>
<wire x1="-2.413" y1="-6.604" x2="-2.413" y2="-8.255" width="0.6096" layer="51"/>
<wire x1="2.413" y1="-6.477" x2="2.413" y2="-8.382" width="0.6096" layer="51"/>
<wire x1="5.08" y1="-6.35" x2="5.08" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="6.096" x2="-5.08" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="0" y1="8.382" x2="0" y2="6.985" width="0.6096" layer="51"/>
<smd name="1" x="-2.413" y="-8.001" dx="1.27" dy="2.54" layer="1"/>
<smd name="2" x="2.413" y="-8.001" dx="1.27" dy="2.54" layer="1"/>
<smd name="3" x="0" y="8.001" dx="1.27" dy="2.794" layer="1"/>
<text x="-5.588" y="-5.08" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-2.54" y="-5.08" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-5.715" y1="-8.255" x2="5.715" y2="8.255" layer="43"/>
</package>
<package name="HC49TL-H">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="5.334" y1="-5.715" x2="-5.461" y2="-5.715" width="0.8128" layer="21"/>
<wire x1="4.445" y1="7.366" x2="1.143" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="7.366" x2="-4.445" y2="7.366" width="0.1524" layer="21"/>
<wire x1="4.445" y1="7.366" x2="5.08" y2="6.731" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="6.731" x2="-4.445" y2="7.366" width="0.1524" layer="21" curve="-90"/>
<wire x1="-0.3302" y1="5.715" x2="-0.3302" y2="3.175" width="0.3048" layer="21"/>
<wire x1="-0.3302" y1="3.175" x2="0.3048" y2="3.175" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="3.175" x2="0.3048" y2="5.715" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="5.715" x2="-0.3302" y2="5.715" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="5.715" x2="0.9398" y2="4.445" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="5.715" x2="-0.9398" y2="4.445" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="4.445" x2="2.032" y2="4.445" width="0.1524" layer="21"/>
<wire x1="0.9398" y1="4.445" x2="0.9398" y2="3.175" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="4.445" x2="-2.032" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-0.9398" y1="4.445" x2="-0.9398" y2="3.175" width="0.3048" layer="21"/>
<wire x1="-2.413" y1="-5.842" x2="-2.413" y2="-7.62" width="0.6096" layer="51"/>
<wire x1="2.413" y1="-5.842" x2="2.413" y2="-7.62" width="0.6096" layer="51"/>
<wire x1="5.08" y1="-5.715" x2="5.08" y2="6.731" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="6.731" x2="-5.08" y2="-5.715" width="0.1524" layer="21"/>
<wire x1="1.143" y1="7.366" x2="-1.143" y2="7.366" width="0.1524" layer="51"/>
<wire x1="0" y1="7.874" x2="0" y2="7.62" width="0.6096" layer="51"/>
<pad name="1" x="-2.413" y="-7.62" drill="0.8128"/>
<pad name="2" x="2.413" y="-7.62" drill="0.8128"/>
<pad name="3" x="0" y="7.874" drill="0.8128"/>
<text x="-5.461" y="-4.445" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-2.54" y="-4.699" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.3048" y1="7.366" x2="0.3048" y2="7.5692" layer="51"/>
<rectangle x1="-6.35" y1="-6.985" x2="6.35" y2="-4.445" layer="43"/>
<rectangle x1="-5.715" y1="-4.445" x2="5.715" y2="8.255" layer="43"/>
</package>
<package name="HC49U-H">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-5.08" y1="-3.175" x2="5.08" y2="-3.175" width="0.8128" layer="21"/>
<wire x1="4.445" y1="9.906" x2="-4.445" y2="9.906" width="0.1524" layer="21"/>
<wire x1="4.445" y1="9.906" x2="5.08" y2="9.271" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="9.271" x2="-4.445" y2="9.906" width="0.1524" layer="21" curve="-90"/>
<wire x1="-0.3302" y1="8.255" x2="-0.3302" y2="5.715" width="0.3048" layer="21"/>
<wire x1="-0.3302" y1="5.715" x2="0.3048" y2="5.715" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="5.715" x2="0.3048" y2="8.255" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="8.255" x2="-0.3302" y2="8.255" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="8.255" x2="0.9398" y2="6.985" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="8.255" x2="-0.9398" y2="6.985" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="6.985" x2="1.905" y2="6.985" width="0.1524" layer="21"/>
<wire x1="0.9398" y1="6.985" x2="0.9398" y2="5.715" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="6.985" x2="-1.905" y2="6.985" width="0.1524" layer="21"/>
<wire x1="-0.9398" y1="6.985" x2="-0.9398" y2="5.715" width="0.3048" layer="21"/>
<wire x1="-2.413" y1="-3.302" x2="-2.413" y2="-5.08" width="0.6096" layer="51"/>
<wire x1="2.413" y1="-3.302" x2="2.413" y2="-5.08" width="0.6096" layer="51"/>
<wire x1="5.08" y1="-3.175" x2="5.08" y2="9.271" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="9.271" x2="-5.08" y2="-3.175" width="0.1524" layer="21"/>
<pad name="1" x="-2.413" y="-5.08" drill="0.8128"/>
<pad name="2" x="2.413" y="-5.08" drill="0.8128"/>
<text x="-5.461" y="-1.397" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-2.54" y="-2.032" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-6.35" y1="-4.445" x2="6.35" y2="-1.905" layer="43"/>
<rectangle x1="-5.715" y1="-1.905" x2="5.715" y2="10.795" layer="43"/>
</package>
<package name="HC49U-LM">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-5.08" y1="-3.175" x2="5.08" y2="-3.175" width="0.8128" layer="21"/>
<wire x1="4.445" y1="9.906" x2="-4.445" y2="9.906" width="0.1524" layer="21"/>
<wire x1="4.445" y1="9.906" x2="5.08" y2="9.271" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="9.271" x2="-4.445" y2="9.906" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.572" y1="3.81" x2="4.572" y2="3.81" width="0.6096" layer="21"/>
<wire x1="-0.3302" y1="8.255" x2="-0.3302" y2="5.715" width="0.3048" layer="21"/>
<wire x1="-0.3302" y1="5.715" x2="0.3048" y2="5.715" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="5.715" x2="0.3048" y2="8.255" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="8.255" x2="-0.3302" y2="8.255" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="8.255" x2="0.9398" y2="6.985" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="8.255" x2="-0.9398" y2="6.985" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="6.985" x2="2.54" y2="6.985" width="0.1524" layer="21"/>
<wire x1="0.9398" y1="6.985" x2="0.9398" y2="5.715" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="6.985" x2="-2.54" y2="6.985" width="0.1524" layer="21"/>
<wire x1="-0.9398" y1="6.985" x2="-0.9398" y2="5.715" width="0.3048" layer="21"/>
<wire x1="-2.413" y1="-3.302" x2="-2.413" y2="-5.08" width="0.6096" layer="51"/>
<wire x1="2.413" y1="-3.302" x2="2.413" y2="-5.08" width="0.6096" layer="51"/>
<wire x1="5.08" y1="3.048" x2="5.08" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="5.08" y1="4.572" x2="5.08" y2="9.271" width="0.1524" layer="21"/>
<wire x1="4.572" y1="3.81" x2="5.08" y2="3.81" width="0.6096" layer="51"/>
<wire x1="5.08" y1="3.81" x2="5.715" y2="3.81" width="0.6096" layer="51"/>
<wire x1="5.08" y1="3.81" x2="5.08" y2="3.048" width="0.1524" layer="51"/>
<wire x1="5.08" y1="3.81" x2="5.08" y2="4.572" width="0.1524" layer="51"/>
<wire x1="-5.08" y1="3.175" x2="-5.08" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="4.445" x2="-5.08" y2="9.271" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="3.81" x2="-5.715" y2="3.81" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="4.445" x2="-5.08" y2="3.175" width="0.1524" layer="51"/>
<pad name="1" x="-2.413" y="-5.08" drill="0.8128"/>
<pad name="2" x="2.413" y="-5.08" drill="0.8128"/>
<pad name="M" x="-5.715" y="3.81" drill="0.8128"/>
<pad name="M1" x="5.715" y="3.81" drill="0.8128"/>
<text x="-5.08" y="10.414" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.572" y="0" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.715" y1="-5.08" x2="5.715" y2="10.795" layer="43"/>
</package>
<package name="HC49U-V">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-2.921" y1="-2.286" x2="2.921" y2="-2.286" width="0.4064" layer="21"/>
<wire x1="-2.921" y1="2.286" x2="2.921" y2="2.286" width="0.4064" layer="21"/>
<wire x1="-2.921" y1="-1.778" x2="2.921" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.778" x2="-2.921" y2="1.778" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.778" x2="2.921" y2="-1.778" width="0.1524" layer="21" curve="-180"/>
<wire x1="2.921" y1="2.286" x2="2.921" y2="-2.286" width="0.4064" layer="21" curve="-180"/>
<wire x1="-2.921" y1="2.286" x2="-2.921" y2="-2.286" width="0.4064" layer="21" curve="180"/>
<wire x1="-2.921" y1="1.778" x2="-2.921" y2="-1.778" width="0.1524" layer="21" curve="180"/>
<wire x1="-0.254" y1="0.889" x2="0.254" y2="0.889" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0.889" x2="0.254" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="0.254" y1="-0.889" x2="-0.254" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-0.889" x2="-0.254" y2="0.889" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0.889" x2="0.635" y2="0" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="0.635" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0.889" x2="-0.635" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="-0.635" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="1.27" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="-1.27" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-2.413" y="0" drill="0.8128"/>
<pad name="2" x="2.413" y="0" drill="0.8128"/>
<text x="-5.08" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.81" y1="-2.794" x2="3.81" y2="2.794" layer="43"/>
<rectangle x1="-4.318" y1="-2.54" x2="-3.81" y2="2.54" layer="43"/>
<rectangle x1="-4.826" y1="-2.286" x2="-4.318" y2="2.286" layer="43"/>
<rectangle x1="-5.334" y1="-1.778" x2="-4.826" y2="1.778" layer="43"/>
<rectangle x1="-5.588" y1="-1.27" x2="-5.334" y2="1.016" layer="43"/>
<rectangle x1="3.81" y1="-2.54" x2="4.318" y2="2.54" layer="43"/>
<rectangle x1="4.318" y1="-2.286" x2="4.826" y2="2.286" layer="43"/>
<rectangle x1="4.826" y1="-1.778" x2="5.334" y2="1.778" layer="43"/>
<rectangle x1="5.334" y1="-1.016" x2="5.588" y2="1.016" layer="43"/>
</package>
<package name="HC49U70">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-3.048" y1="-2.54" x2="3.048" y2="-2.54" width="0.4064" layer="21"/>
<wire x1="-3.048" y1="2.54" x2="3.048" y2="2.54" width="0.4064" layer="21"/>
<wire x1="-3.048" y1="-2.032" x2="3.048" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-0.3302" y1="1.016" x2="-0.3302" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-0.3302" y1="-1.016" x2="0.3048" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="-1.016" x2="0.3048" y2="1.016" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="1.016" x2="-0.3302" y2="1.016" width="0.1524" layer="21"/>
<wire x1="0.6858" y1="1.016" x2="0.6858" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.6858" y1="1.016" x2="-0.6858" y2="0" width="0.1524" layer="21"/>
<wire x1="0.6858" y1="0" x2="1.397" y2="0" width="0.1524" layer="21"/>
<wire x1="0.6858" y1="0" x2="0.6858" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-0.6858" y1="0" x2="-1.397" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.6858" y1="0" x2="-0.6858" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="2.54" x2="-3.048" y2="-2.54" width="0.4064" layer="21" curve="180"/>
<wire x1="3.048" y1="2.54" x2="3.048" y2="-2.54" width="0.4064" layer="21" curve="-180"/>
<wire x1="-3.048" y1="-2.032" x2="-3.048" y2="2.032" width="0.1524" layer="21" curve="-180"/>
<wire x1="3.048" y1="2.032" x2="3.048" y2="-2.032" width="0.1524" layer="21" curve="-180"/>
<wire x1="3.048" y1="2.032" x2="-3.048" y2="2.032" width="0.1524" layer="21"/>
<pad name="1" x="-2.413" y="0" drill="0.8128"/>
<pad name="2" x="2.413" y="0" drill="0.8128"/>
<text x="-5.08" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-4.445" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.572" y1="-2.794" x2="-4.064" y2="2.794" layer="43"/>
<rectangle x1="-5.08" y1="-2.54" x2="-4.572" y2="2.54" layer="43"/>
<rectangle x1="-5.588" y1="-2.032" x2="-5.08" y2="2.032" layer="43"/>
<rectangle x1="-5.842" y1="-1.27" x2="-5.588" y2="1.27" layer="43"/>
<rectangle x1="-4.064" y1="-3.048" x2="4.064" y2="3.048" layer="43"/>
<rectangle x1="4.064" y1="-2.794" x2="4.572" y2="2.794" layer="43"/>
<rectangle x1="4.572" y1="-2.54" x2="5.08" y2="2.54" layer="43"/>
<rectangle x1="5.08" y1="-2.032" x2="5.588" y2="2.032" layer="43"/>
<rectangle x1="5.588" y1="-1.27" x2="5.842" y2="1.27" layer="43"/>
</package>
<package name="HC49UP">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-5.1091" y1="1.143" x2="-3.429" y2="2.0321" width="0.0508" layer="21" curve="-55.770993"/>
<wire x1="-5.715" y1="1.143" x2="-5.715" y2="2.159" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.032" x2="5.1091" y2="1.143" width="0.0508" layer="21" curve="-55.772485"/>
<wire x1="5.715" y1="1.143" x2="5.715" y2="2.159" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-1.27" x2="-3.429" y2="-1.27" width="0.0508" layer="21"/>
<wire x1="3.429" y1="-2.032" x2="-3.429" y2="-2.032" width="0.0508" layer="21"/>
<wire x1="-3.429" y1="1.27" x2="3.429" y2="1.27" width="0.0508" layer="21"/>
<wire x1="5.461" y1="-2.413" x2="-5.461" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-0.381" x2="6.477" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="5.715" y1="0.381" x2="6.477" y2="0.381" width="0.1524" layer="51"/>
<wire x1="6.477" y1="-0.381" x2="6.477" y2="0.381" width="0.1524" layer="51"/>
<wire x1="5.461" y1="-2.413" x2="5.715" y2="-2.159" width="0.1524" layer="21" curve="90"/>
<wire x1="5.715" y1="-1.143" x2="5.715" y2="1.143" width="0.1524" layer="51"/>
<wire x1="5.715" y1="-2.159" x2="5.715" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-1.27" x2="3.9826" y2="-1.143" width="0.0508" layer="21" curve="25.842828"/>
<wire x1="3.429" y1="1.27" x2="3.9826" y2="1.143" width="0.0508" layer="21" curve="-25.842828"/>
<wire x1="3.429" y1="-2.032" x2="5.109" y2="-1.1429" width="0.0508" layer="21" curve="55.771157"/>
<wire x1="3.9826" y1="-1.143" x2="3.9826" y2="1.143" width="0.0508" layer="51" curve="128.314524"/>
<wire x1="5.1091" y1="-1.143" x2="5.1091" y2="1.143" width="0.0508" layer="51" curve="68.456213"/>
<wire x1="-5.1091" y1="-1.143" x2="-3.429" y2="-2.032" width="0.0508" layer="21" curve="55.772485"/>
<wire x1="-3.9826" y1="-1.143" x2="-3.9826" y2="1.143" width="0.0508" layer="51" curve="-128.314524"/>
<wire x1="-3.9826" y1="-1.143" x2="-3.429" y2="-1.27" width="0.0508" layer="21" curve="25.842828"/>
<wire x1="-3.9826" y1="1.143" x2="-3.429" y2="1.27" width="0.0508" layer="21" curve="-25.842828"/>
<wire x1="-6.477" y1="-0.381" x2="-6.477" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-5.1091" y1="-1.143" x2="-5.1091" y2="1.143" width="0.0508" layer="51" curve="-68.456213"/>
<wire x1="-5.715" y1="-1.143" x2="-5.715" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-5.715" y1="-0.381" x2="-5.715" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-5.715" y1="0.381" x2="-5.715" y2="1.143" width="0.1524" layer="51"/>
<wire x1="-5.715" y1="-2.159" x2="-5.715" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.159" x2="-5.461" y2="-2.413" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.715" y1="-0.381" x2="-6.477" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-5.715" y1="0.381" x2="-6.477" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="2.032" x2="3.429" y2="2.032" width="0.0508" layer="21"/>
<wire x1="5.461" y1="2.413" x2="-5.461" y2="2.413" width="0.1524" layer="21"/>
<wire x1="5.461" y1="2.413" x2="5.715" y2="2.159" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.715" y1="2.159" x2="-5.461" y2="2.413" width="0.1524" layer="21" curve="-90"/>
<wire x1="-0.254" y1="0.635" x2="-0.254" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-0.635" x2="0.254" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.254" y1="-0.635" x2="0.254" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0.635" x2="-0.254" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0.635" x2="-0.635" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="-0.635" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="-1.016" y2="0" width="0.0508" layer="21"/>
<wire x1="0.635" y1="0.635" x2="0.635" y2="0" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="0.635" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="1.016" y2="0" width="0.0508" layer="21"/>
<smd name="1" x="-4.826" y="0" dx="5.334" dy="1.9304" layer="1"/>
<smd name="2" x="4.826" y="0" dx="5.334" dy="1.9304" layer="1"/>
<text x="-5.715" y="2.794" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.715" y="-4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-6.604" y1="-3.048" x2="6.604" y2="3.048" layer="43"/>
</package>
<package name="HC13U-H">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-9.906" y1="-3.048" x2="-9.271" y2="-3.048" width="1.27" layer="21"/>
<wire x1="-9.271" y1="-3.048" x2="9.271" y2="-3.048" width="1.27" layer="21"/>
<wire x1="9.271" y1="-3.048" x2="9.906" y2="-3.048" width="1.27" layer="21"/>
<wire x1="8.636" y1="33.401" x2="-8.636" y2="33.401" width="0.1524" layer="21"/>
<wire x1="-9.271" y1="32.766" x2="-8.636" y2="33.401" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.636" y1="33.401" x2="9.271" y2="32.766" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.017" y1="15.24" x2="9.017" y2="15.24" width="0.6096" layer="21"/>
<wire x1="-0.3302" y1="21.59" x2="-0.3302" y2="19.05" width="0.3048" layer="21"/>
<wire x1="-0.3302" y1="19.05" x2="0.3048" y2="19.05" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="19.05" x2="0.3048" y2="21.59" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="21.59" x2="-0.3302" y2="21.59" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="21.59" x2="0.9398" y2="20.32" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="21.59" x2="-0.9398" y2="20.32" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="20.32" x2="1.905" y2="20.32" width="0.1524" layer="21"/>
<wire x1="0.9398" y1="20.32" x2="0.9398" y2="19.05" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="20.32" x2="-1.905" y2="20.32" width="0.1524" layer="21"/>
<wire x1="-0.9398" y1="20.32" x2="-0.9398" y2="19.05" width="0.3048" layer="21"/>
<wire x1="9.144" y1="15.24" x2="10.16" y2="15.24" width="0.6096" layer="51"/>
<wire x1="-10.16" y1="15.24" x2="-9.144" y2="15.24" width="0.6096" layer="51"/>
<wire x1="-6.223" y1="-3.175" x2="-6.223" y2="-5.08" width="0.8128" layer="51"/>
<wire x1="6.223" y1="-3.175" x2="6.223" y2="-5.08" width="0.8128" layer="51"/>
<wire x1="9.271" y1="15.748" x2="9.271" y2="32.766" width="0.1524" layer="21"/>
<wire x1="9.271" y1="14.732" x2="9.271" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="9.271" y1="15.748" x2="9.271" y2="14.732" width="0.1524" layer="51"/>
<wire x1="-9.271" y1="14.732" x2="-9.271" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-9.271" y1="15.748" x2="-9.271" y2="32.766" width="0.1524" layer="21"/>
<wire x1="-9.271" y1="15.748" x2="-9.271" y2="14.732" width="0.1524" layer="51"/>
<pad name="1" x="-6.223" y="-5.08" drill="1.016"/>
<pad name="2" x="6.223" y="-5.08" drill="1.016"/>
<pad name="M" x="-10.16" y="15.24" drill="0.8128"/>
<pad name="M1" x="10.16" y="15.24" drill="0.8128"/>
<text x="-10.16" y="0" size="1.778" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-5.08" y="-1.27" size="1.778" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-10.795" y1="-5.08" x2="10.795" y2="34.925" layer="43"/>
</package>
<package name="HC18U-H">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="5.461" y1="-3.175" x2="5.08" y2="-3.175" width="0.8128" layer="21"/>
<wire x1="5.08" y1="-3.175" x2="-5.08" y2="-3.175" width="0.8128" layer="21"/>
<wire x1="-5.08" y1="-3.175" x2="-5.461" y2="-3.175" width="0.8128" layer="21"/>
<wire x1="4.445" y1="10.16" x2="-4.445" y2="10.16" width="0.1524" layer="21"/>
<wire x1="4.445" y1="10.16" x2="5.08" y2="9.525" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="9.525" x2="-4.445" y2="10.16" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.572" y1="3.81" x2="4.572" y2="3.81" width="0.6096" layer="21"/>
<wire x1="-0.3302" y1="8.255" x2="-0.3302" y2="5.715" width="0.3048" layer="21"/>
<wire x1="-0.3302" y1="5.715" x2="0.3048" y2="5.715" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="5.715" x2="0.3048" y2="8.255" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="8.255" x2="-0.3302" y2="8.255" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="8.255" x2="0.9398" y2="6.985" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="8.255" x2="-0.9398" y2="6.985" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="6.985" x2="2.54" y2="6.985" width="0.1524" layer="21"/>
<wire x1="0.9398" y1="6.985" x2="0.9398" y2="5.715" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="6.985" x2="-2.54" y2="6.985" width="0.1524" layer="21"/>
<wire x1="-0.9398" y1="6.985" x2="-0.9398" y2="5.715" width="0.3048" layer="21"/>
<wire x1="-2.54" y1="-3.302" x2="-2.54" y2="-5.08" width="0.6096" layer="51"/>
<wire x1="2.54" y1="-3.302" x2="2.54" y2="-5.08" width="0.6096" layer="51"/>
<wire x1="5.08" y1="3.048" x2="5.08" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="5.08" y1="4.572" x2="5.08" y2="9.525" width="0.1524" layer="21"/>
<wire x1="4.572" y1="3.81" x2="5.08" y2="3.81" width="0.6096" layer="51"/>
<wire x1="5.08" y1="3.81" x2="5.715" y2="3.81" width="0.6096" layer="51"/>
<wire x1="5.08" y1="3.81" x2="5.08" y2="3.048" width="0.1524" layer="51"/>
<wire x1="5.08" y1="3.81" x2="5.08" y2="4.572" width="0.1524" layer="51"/>
<wire x1="-5.08" y1="3.175" x2="-5.08" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="4.445" x2="-5.08" y2="9.525" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="3.81" x2="-5.715" y2="3.81" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="4.445" x2="-5.08" y2="3.175" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="-5.08" drill="0.8128"/>
<pad name="2" x="2.54" y="-5.08" drill="0.8128"/>
<pad name="M" x="-5.715" y="3.81" drill="0.8128"/>
<pad name="M1" x="5.715" y="3.81" drill="0.8128"/>
<text x="-5.08" y="10.668" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.445" y="-0.889" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-6.35" y1="-5.08" x2="6.35" y2="10.795" layer="43"/>
</package>
<package name="HC18U-V">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="1.905" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="1.905" x2="-5.08" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="4.445" y2="2.54" width="0.4064" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="4.445" y2="-2.54" width="0.4064" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="5.08" y2="-1.905" width="0.4064" layer="21" curve="90"/>
<wire x1="4.445" y1="2.54" x2="5.08" y2="1.905" width="0.4064" layer="21" curve="-90"/>
<wire x1="-5.08" y1="1.905" x2="-4.445" y2="2.54" width="0.4064" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.905" x2="-4.445" y2="-2.54" width="0.4064" layer="21" curve="90"/>
<wire x1="-4.318" y1="-1.905" x2="4.318" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-1.905" x2="4.445" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.778" x2="4.445" y2="1.778" width="0.1524" layer="21"/>
<wire x1="4.318" y1="1.905" x2="4.445" y2="1.778" width="0.1524" layer="21"/>
<wire x1="4.318" y1="1.905" x2="-4.318" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.778" x2="-4.318" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.778" x2="-4.445" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="-1.905" x2="-4.445" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-0.3302" y1="1.27" x2="-0.3302" y2="-1.27" width="0.3048" layer="21"/>
<wire x1="-0.3302" y1="-1.27" x2="0.3048" y2="-1.27" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="-1.27" x2="0.3048" y2="1.27" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="1.27" x2="-0.3302" y2="1.27" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="1.27" x2="0.9398" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="1.27" x2="-0.9398" y2="0" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.9398" y1="0" x2="0.9398" y2="-1.27" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.9398" y1="0" x2="-0.9398" y2="-1.27" width="0.3048" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="0.8128"/>
<pad name="2" x="2.54" y="0" drill="0.8128"/>
<text x="-5.0546" y="3.2766" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-4.6228" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.715" y1="-3.175" x2="5.715" y2="3.175" layer="43"/>
</package>
<package name="HC33U-H">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-9.906" y1="-3.048" x2="-9.271" y2="-3.048" width="1.27" layer="21"/>
<wire x1="-9.271" y1="-3.048" x2="9.271" y2="-3.048" width="1.27" layer="21"/>
<wire x1="9.271" y1="-3.048" x2="9.906" y2="-3.048" width="1.27" layer="21"/>
<wire x1="8.636" y1="16.51" x2="-8.636" y2="16.51" width="0.1524" layer="21"/>
<wire x1="-9.271" y1="15.875" x2="-8.636" y2="16.51" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.636" y1="16.51" x2="9.271" y2="15.875" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.017" y1="7.62" x2="9.017" y2="7.62" width="0.6096" layer="21"/>
<wire x1="-0.3302" y1="13.97" x2="-0.3302" y2="11.43" width="0.3048" layer="21"/>
<wire x1="-0.3302" y1="11.43" x2="0.3048" y2="11.43" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="11.43" x2="0.3048" y2="13.97" width="0.3048" layer="21"/>
<wire x1="0.3048" y1="13.97" x2="-0.3302" y2="13.97" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="13.97" x2="0.9398" y2="12.7" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="13.97" x2="-0.9398" y2="12.7" width="0.3048" layer="21"/>
<wire x1="0.9398" y1="12.7" x2="1.905" y2="12.7" width="0.1524" layer="21"/>
<wire x1="0.9398" y1="12.7" x2="0.9398" y2="11.43" width="0.3048" layer="21"/>
<wire x1="-0.9398" y1="12.7" x2="-1.905" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-0.9398" y1="12.7" x2="-0.9398" y2="11.43" width="0.3048" layer="21"/>
<wire x1="9.144" y1="7.62" x2="10.16" y2="7.62" width="0.6096" layer="51"/>
<wire x1="-10.16" y1="7.62" x2="-9.144" y2="7.62" width="0.6096" layer="51"/>
<wire x1="-6.223" y1="-3.175" x2="-6.223" y2="-5.08" width="0.8128" layer="51"/>
<wire x1="6.223" y1="-3.175" x2="6.223" y2="-5.08" width="0.8128" layer="51"/>
<wire x1="9.271" y1="8.128" x2="9.271" y2="15.875" width="0.1524" layer="21"/>
<wire x1="9.271" y1="7.112" x2="9.271" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="9.271" y1="8.128" x2="9.271" y2="7.112" width="0.1524" layer="51"/>
<wire x1="-9.271" y1="7.112" x2="-9.271" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-9.271" y1="8.128" x2="-9.271" y2="15.875" width="0.1524" layer="21"/>
<wire x1="-9.271" y1="8.128" x2="-9.271" y2="7.112" width="0.1524" layer="51"/>
<pad name="1" x="-6.223" y="-5.08" drill="1.016"/>
<pad name="2" x="6.223" y="-5.08" drill="1.016"/>
<pad name="M" x="-10.16" y="7.62" drill="0.8128"/>
<pad name="M1" x="10.16" y="7.62" drill="0.8128"/>
<text x="-7.62" y="17.272" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.35" y="2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-7.62" y1="-3.175" x2="-6.985" y2="16.51" layer="21"/>
<rectangle x1="6.985" y1="-3.175" x2="7.62" y2="16.51" layer="21"/>
<rectangle x1="-10.795" y1="-5.715" x2="10.795" y2="17.145" layer="43"/>
</package>
<package name="HC33U-V">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-0.3302" y1="2.54" x2="-0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3302" y1="0" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="2.54" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="2.54" x2="-0.3302" y2="2.54" width="0.3048" layer="21"/>
<wire x1="0.9652" y1="2.54" x2="0.9652" y2="1.27" width="0.3048" layer="21"/>
<wire x1="-0.9652" y1="2.54" x2="-0.9652" y2="1.27" width="0.3048" layer="21"/>
<wire x1="0.9652" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.9652" y1="1.27" x2="0.9652" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.9652" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.9652" y1="1.27" x2="-0.9652" y2="0" width="0.3048" layer="21"/>
<wire x1="-5.207" y1="4.064" x2="5.207" y2="4.064" width="0.254" layer="21"/>
<wire x1="-5.207" y1="-4.064" x2="5.207" y2="-4.064" width="0.254" layer="21"/>
<wire x1="-5.207" y1="-3.683" x2="5.207" y2="-3.683" width="0.0508" layer="21"/>
<wire x1="-5.207" y1="3.683" x2="5.207" y2="3.683" width="0.0508" layer="21"/>
<wire x1="-5.207" y1="-3.683" x2="-5.207" y2="3.683" width="0.0508" layer="21" curve="-180"/>
<wire x1="5.207" y1="3.683" x2="5.207" y2="-3.683" width="0.0508" layer="21" curve="-180"/>
<wire x1="5.207" y1="4.064" x2="5.207" y2="-4.064" width="0.254" layer="21" curve="-180"/>
<wire x1="-5.207" y1="4.064" x2="-5.207" y2="-4.064" width="0.254" layer="21" curve="180"/>
<pad name="1" x="-6.223" y="0" drill="1.016"/>
<pad name="2" x="6.223" y="0" drill="1.016"/>
<text x="-5.08" y="4.826" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-8.255" y1="-3.81" x2="-6.985" y2="3.81" layer="43"/>
<rectangle x1="-8.89" y1="-3.175" x2="-8.255" y2="3.175" layer="43"/>
<rectangle x1="-9.525" y1="-2.54" x2="-8.89" y2="2.54" layer="43"/>
<rectangle x1="-6.985" y1="-4.445" x2="6.985" y2="4.445" layer="43"/>
<rectangle x1="6.985" y1="-3.81" x2="8.255" y2="3.81" layer="43"/>
<rectangle x1="8.255" y1="-3.175" x2="8.89" y2="3.175" layer="43"/>
<rectangle x1="8.89" y1="-2.54" x2="9.525" y2="2.54" layer="43"/>
</package>
<package name="SM49">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="3.429" y1="-2.032" x2="5.109" y2="-1.1429" width="0.0508" layer="21" curve="55.771157"/>
<wire x1="5.715" y1="-1.143" x2="5.715" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-5.1091" y1="-1.143" x2="-3.429" y2="-2.032" width="0.0508" layer="21" curve="55.772485"/>
<wire x1="-5.715" y1="-1.143" x2="-5.715" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="1.27" x2="3.429" y2="1.27" width="0.0508" layer="21"/>
<wire x1="-3.429" y1="2.032" x2="3.429" y2="2.032" width="0.0508" layer="21"/>
<wire x1="3.429" y1="-1.27" x2="-3.429" y2="-1.27" width="0.0508" layer="21"/>
<wire x1="-5.461" y1="2.413" x2="5.461" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="0.381" x2="-6.477" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-5.715" y1="-0.381" x2="-6.477" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-6.477" y1="0.381" x2="-6.477" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-5.715" y1="2.159" x2="-5.461" y2="2.413" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.715" y1="1.143" x2="-5.715" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="-5.715" y1="2.159" x2="-5.715" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-3.9826" y1="1.143" x2="-3.429" y2="1.27" width="0.0508" layer="21" curve="-25.842828"/>
<wire x1="-3.9826" y1="-1.143" x2="-3.429" y2="-1.27" width="0.0508" layer="21" curve="25.842828"/>
<wire x1="-5.1091" y1="1.143" x2="-3.429" y2="2.0321" width="0.0508" layer="21" curve="-55.770993"/>
<wire x1="-3.9826" y1="1.143" x2="-3.9826" y2="-1.143" width="0.0508" layer="51" curve="128.314524"/>
<wire x1="-5.1091" y1="1.143" x2="-5.1091" y2="-1.143" width="0.0508" layer="51" curve="68.456213"/>
<wire x1="3.429" y1="2.032" x2="5.1091" y2="1.143" width="0.0508" layer="21" curve="-55.772485"/>
<wire x1="3.9826" y1="1.143" x2="3.9826" y2="-1.143" width="0.0508" layer="51" curve="-128.314524"/>
<wire x1="3.429" y1="1.27" x2="3.9826" y2="1.143" width="0.0508" layer="21" curve="-25.842828"/>
<wire x1="3.429" y1="-1.27" x2="3.9826" y2="-1.143" width="0.0508" layer="21" curve="25.842828"/>
<wire x1="6.477" y1="0.381" x2="6.477" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="5.1091" y1="1.143" x2="5.1091" y2="-1.143" width="0.0508" layer="51" curve="-68.456213"/>
<wire x1="5.715" y1="1.143" x2="5.715" y2="0.381" width="0.1524" layer="51"/>
<wire x1="5.715" y1="0.381" x2="5.715" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="5.715" y1="-0.381" x2="5.715" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="5.715" y1="2.159" x2="5.715" y2="1.143" width="0.1524" layer="21"/>
<wire x1="5.461" y1="2.413" x2="5.715" y2="2.159" width="0.1524" layer="21" curve="-90"/>
<wire x1="5.715" y1="0.381" x2="6.477" y2="0.381" width="0.1524" layer="51"/>
<wire x1="5.715" y1="-0.381" x2="6.477" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="3.429" y1="-2.032" x2="-3.429" y2="-2.032" width="0.0508" layer="21"/>
<wire x1="-5.461" y1="-2.413" x2="5.461" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.159" x2="-5.461" y2="-2.413" width="0.1524" layer="21" curve="90"/>
<wire x1="5.461" y1="-2.413" x2="5.715" y2="-2.159" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.254" y1="0.635" x2="-0.254" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-0.635" x2="0.254" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.254" y1="-0.635" x2="0.254" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0.635" x2="-0.254" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0.635" x2="-0.635" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="-0.635" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="-1.143" y2="0" width="0.0508" layer="21"/>
<wire x1="0.635" y1="0.635" x2="0.635" y2="0" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="0.635" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="1.143" y2="0" width="0.0508" layer="21"/>
<smd name="1" x="-4.826" y="0" dx="5.08" dy="1.778" layer="1"/>
<smd name="2" x="4.826" y="0" dx="5.08" dy="1.778" layer="1"/>
<text x="-5.715" y="2.667" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.715" y="-4.064" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-6.604" y1="-2.54" x2="6.604" y2="2.794" layer="43"/>
</package>
<package name="TC26H">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-0.889" y1="1.651" x2="0.889" y2="1.651" width="0.1524" layer="21"/>
<wire x1="0.762" y1="7.747" x2="1.016" y2="7.493" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.016" y1="7.493" x2="-0.762" y2="7.747" width="0.1524" layer="21" curve="-90"/>
<wire x1="-0.762" y1="7.747" x2="0.762" y2="7.747" width="0.1524" layer="21"/>
<wire x1="0.889" y1="1.651" x2="0.889" y2="2.032" width="0.1524" layer="21"/>
<wire x1="1.016" y1="2.032" x2="1.016" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.651" x2="-0.889" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="2.032" x2="-0.889" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="2.032" x2="-1.016" y2="7.493" width="0.1524" layer="21"/>
<wire x1="0.508" y1="0.762" x2="0.508" y2="1.143" width="0.4064" layer="21"/>
<wire x1="-0.508" y1="0.762" x2="-0.508" y2="1.27" width="0.4064" layer="21"/>
<wire x1="0.635" y1="0.635" x2="1.27" y2="0" width="0.4064" layer="51"/>
<wire x1="-0.635" y1="0.635" x2="-1.27" y2="0" width="0.4064" layer="51"/>
<wire x1="-0.508" y1="4.953" x2="-0.508" y2="4.572" width="0.1524" layer="21"/>
<wire x1="0.508" y1="4.572" x2="-0.508" y2="4.572" width="0.1524" layer="21"/>
<wire x1="0.508" y1="4.572" x2="0.508" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="4.953" x2="0.508" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="5.334" x2="0" y2="5.334" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="4.191" x2="0" y2="4.191" width="0.1524" layer="21"/>
<wire x1="0" y1="4.191" x2="0" y2="3.683" width="0.1524" layer="21"/>
<wire x1="0" y1="4.191" x2="0.508" y2="4.191" width="0.1524" layer="21"/>
<wire x1="0" y1="5.334" x2="0" y2="5.842" width="0.1524" layer="21"/>
<wire x1="0" y1="5.334" x2="0.508" y2="5.334" width="0.1524" layer="21"/>
<wire x1="1.016" y1="2.032" x2="0.889" y2="2.032" width="0.1524" layer="21"/>
<wire x1="0.889" y1="2.032" x2="-0.889" y2="2.032" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="0.8128"/>
<pad name="2" x="1.27" y="0" drill="0.8128"/>
<text x="-1.397" y="2.032" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="2.667" y="2.032" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="0.3048" y1="1.016" x2="0.7112" y2="1.6002" layer="21"/>
<rectangle x1="-0.7112" y1="1.016" x2="-0.3048" y2="1.6002" layer="21"/>
<rectangle x1="-1.778" y1="0.762" x2="1.778" y2="8.382" layer="43"/>
</package>
<package name="TC26V">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-0.127" y1="-0.508" x2="0.127" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="0.127" y1="0.508" x2="0.127" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="0.127" y1="0.508" x2="-0.127" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-0.127" y1="-0.508" x2="-0.127" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="-0.508" x2="-0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-0.508" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.381" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="0" x2="-0.381" y2="0.508" width="0.1524" layer="51"/>
<wire x1="0" y1="1.016" x2="0.7184" y2="0.7184" width="0.1524" layer="21" curve="-44.999323"/>
<wire x1="-0.7184" y1="0.7184" x2="0" y2="1.016" width="0.1524" layer="21" curve="-44.999323"/>
<wire x1="-0.7184" y1="-0.7184" x2="0" y2="-1.016" width="0.1524" layer="21" curve="44.999323"/>
<wire x1="0" y1="-1.016" x2="0.7184" y2="-0.7184" width="0.1524" layer="21" curve="44.999323"/>
<circle x="0" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128"/>
<pad name="2" x="1.27" y="0" drill="0.8128"/>
<text x="-2.032" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.032" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="TC38H">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-1.397" y1="1.651" x2="1.397" y2="1.651" width="0.1524" layer="21"/>
<wire x1="1.27" y1="9.906" x2="1.524" y2="9.652" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.524" y1="9.652" x2="-1.27" y2="9.906" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="9.906" x2="1.27" y2="9.906" width="0.1524" layer="21"/>
<wire x1="1.397" y1="1.651" x2="1.397" y2="2.032" width="0.1524" layer="21"/>
<wire x1="1.524" y1="2.032" x2="1.397" y2="2.032" width="0.1524" layer="21"/>
<wire x1="1.524" y1="2.032" x2="1.524" y2="9.652" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="1.651" x2="-1.397" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="2.032" x2="-1.397" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="2.032" x2="-1.524" y2="9.652" width="0.1524" layer="21"/>
<wire x1="1.397" y1="2.032" x2="-1.397" y2="2.032" width="0.1524" layer="21"/>
<wire x1="0.5588" y1="0.7112" x2="0.508" y2="0.762" width="0.4064" layer="21"/>
<wire x1="0.508" y1="0.762" x2="0.508" y2="1.143" width="0.4064" layer="21"/>
<wire x1="-0.508" y1="0.762" x2="-0.508" y2="1.016" width="0.4064" layer="21"/>
<wire x1="-0.5588" y1="0.7112" x2="-0.508" y2="0.762" width="0.4064" layer="21"/>
<wire x1="0.635" y1="0.635" x2="1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="0.635" x2="-1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="5.588" x2="-0.762" y2="5.207" width="0.1524" layer="21"/>
<wire x1="0.762" y1="5.207" x2="-0.762" y2="5.207" width="0.1524" layer="21"/>
<wire x1="0.762" y1="5.207" x2="0.762" y2="5.588" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="5.588" x2="0.762" y2="5.588" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="5.969" x2="0" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="4.826" x2="0" y2="4.826" width="0.1524" layer="21"/>
<wire x1="0" y1="4.826" x2="0" y2="4.318" width="0.1524" layer="21"/>
<wire x1="0" y1="4.826" x2="0.762" y2="4.826" width="0.1524" layer="21"/>
<wire x1="0" y1="5.969" x2="0" y2="6.477" width="0.1524" layer="21"/>
<wire x1="0" y1="5.969" x2="0.762" y2="5.969" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="0.8128"/>
<pad name="2" x="1.27" y="0" drill="0.8128"/>
<text x="-1.905" y="2.032" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="3.175" y="2.032" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="0.3048" y1="1.016" x2="0.7112" y2="1.6002" layer="21"/>
<rectangle x1="-0.7112" y1="1.016" x2="-0.3048" y2="1.6002" layer="21"/>
<rectangle x1="-1.778" y1="1.016" x2="1.778" y2="10.414" layer="43"/>
</package>
<package name="86SMX">
<description>&lt;b&gt;CRYSTAL RESONATOR&lt;/b&gt;</description>
<wire x1="-3.81" y1="1.905" x2="2.413" y2="1.905" width="0.0508" layer="21"/>
<wire x1="-3.81" y1="2.286" x2="2.413" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="2.413" y2="-1.905" width="0.0508" layer="21"/>
<wire x1="-3.81" y1="-2.286" x2="2.413" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.286" x2="-6.604" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="1.905" x2="-5.334" y2="1.016" width="0.0508" layer="51"/>
<wire x1="-5.334" y1="-1.905" x2="-3.81" y2="-1.905" width="0.0508" layer="51"/>
<wire x1="-6.35" y1="-2.286" x2="-5.969" y2="-2.286" width="0.1524" layer="51"/>
<wire x1="-5.969" y1="-2.286" x2="-4.191" y2="-2.286" width="0.1524" layer="51"/>
<wire x1="-4.191" y1="-2.286" x2="-3.81" y2="-2.286" width="0.1524" layer="51"/>
<wire x1="-5.969" y1="-2.54" x2="-4.191" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="-6.35" y1="-2.2098" x2="-6.604" y2="-2.286" width="0.0508" layer="21"/>
<wire x1="-6.604" y1="-2.286" x2="-6.35" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-5.969" y1="-2.54" x2="-5.969" y2="-2.286" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="1.016" x2="-5.334" y2="-1.016" width="0.0508" layer="21"/>
<wire x1="-5.334" y1="-1.016" x2="-5.334" y2="-1.905" width="0.0508" layer="51"/>
<wire x1="-5.334" y1="-1.905" x2="-6.35" y2="-2.2098" width="0.0508" layer="51"/>
<wire x1="-4.191" y1="-2.54" x2="-4.191" y2="-2.286" width="0.1524" layer="51"/>
<wire x1="-5.969" y1="2.54" x2="-4.191" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="1.905" x2="-3.81" y2="1.905" width="0.0508" layer="51"/>
<wire x1="-6.35" y1="2.286" x2="-5.969" y2="2.286" width="0.1524" layer="51"/>
<wire x1="-5.969" y1="2.286" x2="-4.191" y2="2.286" width="0.1524" layer="51"/>
<wire x1="-4.191" y1="2.286" x2="-3.81" y2="2.286" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="2.286" x2="-6.35" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="2.2098" x2="-6.604" y2="2.286" width="0.0508" layer="21"/>
<wire x1="-5.969" y1="2.54" x2="-5.969" y2="2.286" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="1.905" x2="-6.35" y2="2.2098" width="0.0508" layer="51"/>
<wire x1="-4.191" y1="2.54" x2="-4.191" y2="2.286" width="0.1524" layer="51"/>
<wire x1="6.604" y1="2.286" x2="6.604" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="6.223" y1="-1.905" x2="6.223" y2="1.905" width="0.0508" layer="21"/>
<wire x1="6.223" y1="-1.905" x2="6.604" y2="-2.286" width="0.0508" layer="21"/>
<wire x1="6.223" y1="-2.286" x2="6.604" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="2.794" y1="-2.54" x2="5.842" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="2.794" y1="-2.286" x2="2.794" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="5.842" y1="-2.54" x2="5.842" y2="-2.286" width="0.1524" layer="51"/>
<wire x1="2.413" y1="-2.286" x2="6.223" y2="-2.286" width="0.1524" layer="51"/>
<wire x1="2.413" y1="-1.905" x2="6.223" y2="-1.905" width="0.0508" layer="51"/>
<wire x1="6.223" y1="1.905" x2="6.604" y2="2.286" width="0.0508" layer="21"/>
<wire x1="6.223" y1="2.286" x2="6.604" y2="2.286" width="0.1524" layer="21"/>
<wire x1="2.794" y1="2.54" x2="5.842" y2="2.54" width="0.1524" layer="51"/>
<wire x1="2.794" y1="2.286" x2="2.794" y2="2.54" width="0.1524" layer="51"/>
<wire x1="5.842" y1="2.54" x2="5.842" y2="2.286" width="0.1524" layer="51"/>
<wire x1="2.413" y1="1.905" x2="6.223" y2="1.905" width="0.0508" layer="51"/>
<wire x1="2.413" y1="2.286" x2="6.223" y2="2.286" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="1.651" x2="-0.254" y2="0.381" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="0.381" x2="0.254" y2="0.381" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0.381" x2="0.254" y2="1.651" width="0.1524" layer="21"/>
<wire x1="0.254" y1="1.651" x2="-0.254" y2="1.651" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.651" x2="0.635" y2="1.016" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.016" x2="0.635" y2="0.381" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.016" x2="1.016" y2="1.016" width="0.0508" layer="21"/>
<wire x1="-0.635" y1="1.651" x2="-0.635" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.016" x2="-0.635" y2="0.381" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.016" x2="-1.016" y2="1.016" width="0.0508" layer="21"/>
<smd name="2" x="4.318" y="-2.286" dx="3.556" dy="2.1844" layer="1"/>
<smd name="3" x="4.318" y="2.286" dx="3.556" dy="2.1844" layer="1"/>
<smd name="1" x="-5.08" y="-2.286" dx="2.286" dy="2.1844" layer="1"/>
<smd name="4" x="-5.08" y="2.286" dx="2.286" dy="2.1844" layer="1"/>
<text x="-3.683" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.683" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="MM20SS">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-2.032" y1="-1.27" x2="2.032" y2="-1.27" width="0.0508" layer="21"/>
<wire x1="-2.032" y1="-1.778" x2="2.032" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="2.032" y1="1.27" x2="-2.032" y2="1.27" width="0.0508" layer="21"/>
<wire x1="-2.032" y1="1.778" x2="2.032" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="-1.778" x2="-4.064" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="0.381" x2="-2.921" y2="-0.381" width="0.0508" layer="21"/>
<wire x1="-4.064" y1="-1.778" x2="-3.556" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-1.552" x2="-4.064" y2="-1.778" width="0.0508" layer="21"/>
<wire x1="-2.032" y1="1.27" x2="-2.921" y2="1.27" width="0.0508" layer="51"/>
<wire x1="-2.921" y1="1.27" x2="-2.921" y2="0.381" width="0.0508" layer="51"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="-1.905" x2="-3.048" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="-0.381" x2="-2.921" y2="-1.27" width="0.0508" layer="51"/>
<wire x1="-2.921" y1="-1.27" x2="-2.032" y2="-1.27" width="0.0508" layer="51"/>
<wire x1="-3.556" y1="-1.778" x2="-2.032" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="-1.27" x2="-3.556" y2="-1.552" width="0.0508" layer="51"/>
<wire x1="-4.064" y1="1.778" x2="-3.556" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="1.552" x2="-4.064" y2="1.778" width="0.0508" layer="21"/>
<wire x1="-2.921" y1="1.27" x2="-3.556" y2="1.552" width="0.0508" layer="51"/>
<wire x1="-3.048" y1="1.778" x2="-3.048" y2="1.905" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="1.905" x2="-2.54" y2="1.778" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="1.905" x2="-2.54" y2="1.905" width="0.1524" layer="51"/>
<wire x1="-3.556" y1="1.778" x2="-2.032" y2="1.778" width="0.1524" layer="51"/>
<wire x1="4.064" y1="-1.778" x2="4.064" y2="1.778" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-1.27" width="0.0508" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="4.064" y2="-1.778" width="0.0508" layer="21"/>
<wire x1="3.556" y1="-1.27" x2="3.81" y2="-1.27" width="0.0508" layer="21"/>
<wire x1="3.556" y1="-1.778" x2="4.064" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.556" y2="1.27" width="0.0508" layer="21"/>
<wire x1="3.556" y1="1.27" x2="2.032" y2="1.27" width="0.0508" layer="51"/>
<wire x1="3.048" y1="-1.905" x2="3.048" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="2.54" y1="-1.778" x2="2.54" y2="-1.905" width="0.1524" layer="51"/>
<wire x1="2.54" y1="-1.905" x2="3.048" y2="-1.905" width="0.1524" layer="51"/>
<wire x1="2.032" y1="-1.27" x2="3.556" y2="-1.27" width="0.0508" layer="51"/>
<wire x1="2.032" y1="-1.778" x2="3.556" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="3.81" y1="1.27" x2="4.064" y2="1.778" width="0.0508" layer="21"/>
<wire x1="3.556" y1="1.778" x2="4.064" y2="1.778" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.905" x2="2.54" y2="1.778" width="0.1524" layer="51"/>
<wire x1="3.048" y1="1.778" x2="3.048" y2="1.905" width="0.1524" layer="51"/>
<wire x1="2.54" y1="1.905" x2="3.048" y2="1.905" width="0.1524" layer="51"/>
<wire x1="2.032" y1="1.778" x2="3.556" y2="1.778" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="-0.254" x2="-0.508" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="-0.254" x2="-0.508" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="0.254" x2="-1.778" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.254" x2="-1.778" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.635" x2="-1.143" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0.635" x2="-0.508" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0.635" x2="-1.143" y2="1.016" width="0.0508" layer="21"/>
<wire x1="-1.778" y1="-0.635" x2="-1.143" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-0.635" x2="-0.508" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-0.635" x2="-1.143" y2="-1.016" width="0.0508" layer="21"/>
<circle x="3.048" y="0" radius="0.254" width="0.1524" layer="21"/>
<smd name="1" x="-2.794" y="-1.524" dx="1.27" dy="1.8796" layer="1"/>
<smd name="2" x="2.794" y="-1.524" dx="1.27" dy="1.8796" layer="1"/>
<smd name="3" x="2.794" y="1.524" dx="1.27" dy="1.8796" layer="1"/>
<smd name="4" x="-2.794" y="1.524" dx="1.27" dy="1.8796" layer="1"/>
<text x="-2.54" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="MM39SL">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-3.683" y1="-1.651" x2="3.683" y2="-1.651" width="0.0508" layer="21"/>
<wire x1="-3.683" y1="-2.286" x2="3.683" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.286" x2="3.683" y2="2.286" width="0.1524" layer="21"/>
<wire x1="3.683" y1="1.651" x2="-3.683" y2="1.651" width="0.0508" layer="21"/>
<wire x1="-6.223" y1="-2.286" x2="-6.223" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="1.651" x2="-4.826" y2="0.762" width="0.0508" layer="51"/>
<wire x1="-5.715" y1="-2.286" x2="-3.683" y2="-2.286" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="-1.651" x2="-3.683" y2="-1.651" width="0.0508" layer="51"/>
<wire x1="-5.715" y1="-2.055" x2="-6.223" y2="-2.286" width="0.0508" layer="21"/>
<wire x1="-6.223" y1="-2.286" x2="-5.715" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="0.762" x2="-4.826" y2="-0.762" width="0.0508" layer="21"/>
<wire x1="-4.826" y1="-0.762" x2="-4.826" y2="-1.651" width="0.0508" layer="51"/>
<wire x1="-4.826" y1="-1.651" x2="-5.715" y2="-2.055" width="0.0508" layer="51"/>
<wire x1="-5.715" y1="2.286" x2="-3.683" y2="2.286" width="0.1524" layer="51"/>
<wire x1="-3.683" y1="1.651" x2="-4.826" y2="1.651" width="0.0508" layer="51"/>
<wire x1="-6.223" y1="2.286" x2="-5.715" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.055" x2="-6.223" y2="2.286" width="0.0508" layer="21"/>
<wire x1="-4.826" y1="1.651" x2="-5.715" y2="2.055" width="0.0508" layer="51"/>
<wire x1="6.223" y1="-2.286" x2="6.223" y2="2.286" width="0.1524" layer="21"/>
<wire x1="5.842" y1="-1.651" x2="5.842" y2="1.651" width="0.0508" layer="21"/>
<wire x1="5.842" y1="-1.651" x2="6.223" y2="-2.286" width="0.0508" layer="21"/>
<wire x1="5.715" y1="-2.286" x2="6.223" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.286" x2="5.715" y2="-2.286" width="0.1524" layer="51"/>
<wire x1="5.715" y1="-1.651" x2="5.842" y2="-1.651" width="0.0508" layer="21"/>
<wire x1="3.683" y1="-1.651" x2="5.715" y2="-1.651" width="0.0508" layer="51"/>
<wire x1="5.842" y1="1.651" x2="6.223" y2="2.286" width="0.0508" layer="21"/>
<wire x1="5.842" y1="1.651" x2="5.715" y2="1.651" width="0.0508" layer="21"/>
<wire x1="5.715" y1="2.286" x2="6.223" y2="2.286" width="0.1524" layer="21"/>
<wire x1="3.683" y1="2.286" x2="5.715" y2="2.286" width="0.1524" layer="51"/>
<wire x1="5.715" y1="1.651" x2="3.683" y2="1.651" width="0.0508" layer="51"/>
<wire x1="-3.81" y1="-0.254" x2="-2.54" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.254" x2="-2.54" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.254" x2="-3.81" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.254" x2="-3.81" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.175" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0.635" x2="-3.175" y2="1.016" width="0.1016" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-3.175" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-0.635" x2="-3.175" y2="-1.016" width="0.1016" layer="21"/>
<circle x="5.08" y="0" radius="0.254" width="0.1524" layer="21"/>
<smd name="1" x="-4.699" y="-1.778" dx="1.778" dy="1.778" layer="1"/>
<smd name="2" x="4.699" y="-1.778" dx="1.778" dy="1.778" layer="1"/>
<smd name="3" x="4.699" y="1.778" dx="1.778" dy="1.778" layer="1"/>
<smd name="4" x="-4.699" y="1.778" dx="1.778" dy="1.778" layer="1"/>
<text x="-2.54" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.032" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="CTS406">
<description>&lt;b&gt;Model 406 6.0x3.5mm Low Cost Surface Mount Crystal&lt;/b&gt;&lt;p&gt;
Source: 008-0260-0_E.pdf</description>
<wire x1="-2.475" y1="1.65" x2="-1.05" y2="1.65" width="0.2032" layer="51"/>
<wire x1="-1.05" y1="1.65" x2="1.05" y2="1.65" width="0.2032" layer="21"/>
<wire x1="1.05" y1="1.65" x2="2.475" y2="1.65" width="0.2032" layer="51"/>
<wire x1="2.9" y1="1.225" x2="2.9" y2="0.3" width="0.2032" layer="51"/>
<wire x1="2.9" y1="0.3" x2="2.9" y2="-0.3" width="0.2032" layer="21"/>
<wire x1="2.9" y1="-0.3" x2="2.9" y2="-1.225" width="0.2032" layer="51"/>
<wire x1="2.475" y1="-1.65" x2="1.05" y2="-1.65" width="0.2032" layer="51"/>
<wire x1="1.05" y1="-1.65" x2="-1.05" y2="-1.65" width="0.2032" layer="21"/>
<wire x1="-1.05" y1="-1.65" x2="-2.475" y2="-1.65" width="0.2032" layer="51"/>
<wire x1="-2.9" y1="-1.225" x2="-2.9" y2="-0.3" width="0.2032" layer="51"/>
<wire x1="-2.9" y1="-0.3" x2="-2.9" y2="0.3" width="0.2032" layer="21"/>
<wire x1="-2.9" y1="0.3" x2="-2.9" y2="1.225" width="0.2032" layer="51"/>
<wire x1="-2.9" y1="1.225" x2="-2.475" y2="1.65" width="0.2032" layer="51" curve="89.516721"/>
<wire x1="2.475" y1="1.65" x2="2.9" y2="1.225" width="0.2032" layer="51" curve="89.516721"/>
<wire x1="2.9" y1="-1.225" x2="2.475" y2="-1.65" width="0.2032" layer="51" curve="89.516721"/>
<wire x1="-2.475" y1="-1.65" x2="-2.9" y2="-1.225" width="0.2032" layer="51" curve="89.516721"/>
<circle x="-2.05" y="-0.2" radius="0.182" width="0" layer="21"/>
<smd name="1" x="-2.2" y="-1.2" dx="1.9" dy="1.4" layer="1"/>
<smd name="2" x="2.2" y="-1.2" dx="1.9" dy="1.4" layer="1"/>
<smd name="3" x="2.2" y="1.2" dx="1.9" dy="1.4" layer="1"/>
<smd name="4" x="-2.2" y="1.2" dx="1.9" dy="1.4" layer="1"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="Q">
<wire x1="1.016" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.016" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.381" y1="1.524" x2="-0.381" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-0.381" y1="-1.524" x2="0.381" y2="-1.524" width="0.254" layer="94"/>
<wire x1="0.381" y1="-1.524" x2="0.381" y2="1.524" width="0.254" layer="94"/>
<wire x1="0.381" y1="1.524" x2="-0.381" y2="1.524" width="0.254" layer="94"/>
<wire x1="1.016" y1="1.778" x2="1.016" y2="-1.778" width="0.254" layer="94"/>
<wire x1="-1.016" y1="1.778" x2="-1.016" y2="-1.778" width="0.254" layer="94"/>
<text x="2.54" y="1.016" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.159" y="-1.143" size="0.8636" layer="93">1</text>
<text x="1.524" y="-1.143" size="0.8636" layer="93">2</text>
<pin name="2" x="2.54" y="0" visible="off" length="point" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-2.54" y="0" visible="off" length="point" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CRYSTAL" prefix="Q" uservalue="yes">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="Q" x="0" y="0"/>
</gates>
<devices>
<device name="HC49S" package="HC49/S">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="1667008" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HC49GW" package="HC49GW">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HC49TL-H" package="HC49TL-H">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HC49U-H" package="HC49U-H">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="1666973" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HC49U-LM" package="HC49U-LM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="1666956" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HC49U-V" package="HC49U-V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="1666969" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HC49U70" package="HC49U70">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HC49UP" package="HC49UP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HC13U-H" package="HC13U-H">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HC18U-H" package="HC18U-H">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HC18U-V" package="HC18U-V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HC33U-H" package="HC33U-H">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HC33U-V" package="HC33U-V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="SM49" package="SM49">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="TC26H" package="TC26H">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="TC26V" package="TC26V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="TC38H" package="TC38H">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="68SMX" package="86SMX">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="6344860" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="MM20SS" package="MM20SS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="MM39SL" package="MM39SL">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="CTS406" package="CTS406">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="resistor">
<packages>
<package name="R0402">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.762" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.032" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="R0603">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.432" y1="-0.356" x2="0.432" y2="-0.356" width="0.1524" layer="51"/>
<wire x1="0.432" y1="0.356" x2="-0.432" y2="0.356" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.85" y="0" dx="1" dy="1.1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1" dy="1.1" layer="1"/>
<text x="-0.889" y="0.889" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.889" y="-2.032" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4318" y1="-0.4318" x2="0.8382" y2="0.4318" layer="51"/>
<rectangle x1="-0.8382" y1="-0.4318" x2="-0.4318" y2="0.4318" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="R0805">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.762" y="1.016" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.762" y="-2.286" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="R0805W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip, wave soldering</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.94" y="0" dx="1.5" dy="1" layer="1"/>
<smd name="2" x="0.94" y="0" dx="1.5" dy="1" layer="1"/>
<text x="-0.635" y="1.016" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.159" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="R1005">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.762" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.032" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="R1206">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="0.9525" y1="-0.8128" x2="-0.9652" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0.8128" x2="-0.9652" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="2" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="1" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.397" y="1.143" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.397" y="-2.413" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6891" y1="-0.8763" x2="-0.9525" y2="0.8763" layer="51"/>
<rectangle x1="0.9525" y1="-0.8763" x2="1.6891" y2="0.8763" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R1206W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip, wave soldering</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="21"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="21"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<text x="-1.651" y="1.143" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.651" y="-2.413" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R1210">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-1.27" y="1.651" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.921" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-0.8999" x2="0.3" y2="0.8999" layer="35"/>
</package>
<package name="R1210W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip, wave soldering</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="21"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="21"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<text x="-1.651" y="1.524" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.651" y="-2.794" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="R2010">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="-1.027" y1="1.245" x2="1.027" y2="1.245" width="0.1524" layer="21"/>
<wire x1="-1.002" y1="-1.245" x2="1.016" y2="-1.245" width="0.1524" layer="21"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-2.159" y="1.651" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.159" y="-2.921" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
</package>
<package name="R2010W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip, wave soldering</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="21"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="21"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.311" y="0" dx="2" dy="1.8" layer="1"/>
<smd name="2" x="2.311" y="0" dx="2" dy="1.8" layer="1"/>
<text x="-2.286" y="1.524" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.286" y="-2.921" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
</package>
<package name="R2012">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.762" y="1.016" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.762" y="-2.286" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1001" y1="-0.5999" x2="0.1001" y2="0.5999" layer="35"/>
</package>
<package name="R2012W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip, wave soldering</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.94" y="0" dx="1.5" dy="1" layer="1"/>
<smd name="2" x="0.94" y="0" dx="1.5" dy="1" layer="1"/>
<text x="-0.635" y="1.016" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.286" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1001" y1="-0.5999" x2="0.1001" y2="0.5999" layer="35"/>
</package>
<package name="R2512">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="1.473" x2="1.498" y2="1.473" width="0.1524" layer="21"/>
<wire x1="-1.473" y1="-1.473" x2="1.498" y2="-1.473" width="0.1524" layer="21"/>
<smd name="1" x="-2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<smd name="2" x="2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<text x="-2.667" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.667" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R2512W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip, wave soldering</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="21"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="21"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-2.896" y="0" dx="2" dy="2.1" layer="1"/>
<smd name="2" x="2.896" y="0" dx="2" dy="2.1" layer="1"/>
<text x="-2.794" y="1.778" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.794" y="-3.048" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R3216">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.397" y="1.143" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.397" y="-2.413" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R3216W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip, wave soldering</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="21"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="21"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<text x="-1.524" y="1.143" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.524" y="-2.413" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R3225">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-1.397" y="1.651" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.397" y="-2.921" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-1" x2="0.3" y2="1" layer="35"/>
</package>
<package name="R3225W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip, wave soldering</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="21"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="21"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<text x="-1.397" y="1.524" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.397" y="-2.921" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-1" x2="0.3" y2="1" layer="35"/>
</package>
<package name="R5025">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="-0.9" y1="1.245" x2="0.9" y2="1.245" width="0.1524" layer="21"/>
<wire x1="-0.875" y1="-1.245" x2="0.925" y2="-1.245" width="0.1524" layer="21"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-2.159" y="1.651" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.159" y="-2.921" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R5025W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip, wave soldering</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="21"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="21"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.311" y="0" dx="2" dy="1.8" layer="1"/>
<smd name="2" x="2.311" y="0" dx="2" dy="1.8" layer="1"/>
<text x="-2.286" y="1.651" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.286" y="-2.921" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R6332">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="1.473" x2="1.498" y2="1.473" width="0.1524" layer="21"/>
<wire x1="-1.473" y1="-1.473" x2="1.498" y2="-1.473" width="0.1524" layer="21"/>
<smd name="1" x="-2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<smd name="2" x="2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<text x="-2.794" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.794" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R6332W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip, wave soldering</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="21"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="21"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-2.896" y="0" dx="2" dy="2.1" layer="1"/>
<smd name="2" x="2.896" y="0" dx="2" dy="2.1" layer="1"/>
<text x="-2.921" y="1.778" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.921" y="-3.048" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="M0805">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.10 W</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="0.7112" y1="0.635" x2="-0.7112" y2="0.635" width="0.1524" layer="51"/>
<wire x1="0.7112" y1="-0.635" x2="-0.7112" y2="-0.635" width="0.1524" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-1.016" y="1.016" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.016" y="-2.286" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0414" y1="-0.7112" x2="-0.6858" y2="0.7112" layer="51"/>
<rectangle x1="0.6858" y1="-0.7112" x2="1.0414" y2="0.7112" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5999" x2="0.1999" y2="0.5999" layer="35"/>
</package>
<package name="M1206">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="1.143" y1="0.8382" x2="-1.143" y2="0.8382" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.8382" x2="-1.143" y2="-0.8382" width="0.1524" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.9144" x2="-1.1176" y2="0.9144" layer="51"/>
<rectangle x1="1.1176" y1="-0.9144" x2="1.7018" y2="0.9144" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="M1406">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.12 W</description>
<wire x1="-2.973" y1="0.983" x2="2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-0.983" x2="-2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-0.983" x2="-2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="0.983" x2="2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.3208" y1="0.762" x2="-1.3208" y2="0.762" width="0.1524" layer="51"/>
<wire x1="1.3208" y1="-0.762" x2="-1.3208" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="0.6858" y1="0.762" x2="-0.6858" y2="0.762" width="0.1524" layer="21"/>
<wire x1="0.6858" y1="-0.762" x2="-0.6858" y2="-0.762" width="0.1524" layer="21"/>
<smd name="1" x="-1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<smd name="2" x="1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<text x="-1.651" y="1.143" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.651" y="-2.413" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.8542" y1="-0.8382" x2="-1.2954" y2="0.8382" layer="51"/>
<rectangle x1="1.2954" y1="-0.8382" x2="1.8542" y2="0.8382" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="M2012">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.10 W</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="0.7112" y1="0.635" x2="-0.7112" y2="0.635" width="0.1524" layer="51"/>
<wire x1="0.7112" y1="-0.635" x2="-0.7112" y2="-0.635" width="0.1524" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-1.016" y="1.016" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.016" y="-2.286" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0414" y1="-0.7112" x2="-0.6858" y2="0.7112" layer="51"/>
<rectangle x1="0.6858" y1="-0.7112" x2="1.0414" y2="0.7112" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5999" x2="0.1999" y2="0.5999" layer="35"/>
</package>
<package name="M2309">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-4.473" y1="1.483" x2="4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="-1.483" x2="-4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-4.473" y1="-1.483" x2="-4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="1.483" x2="4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.413" y1="1.1684" x2="-2.4384" y2="1.1684" width="0.1524" layer="51"/>
<wire x1="2.413" y1="-1.1684" x2="-2.413" y2="-1.1684" width="0.1524" layer="51"/>
<wire x1="1.651" y1="1.1684" x2="-1.6764" y2="1.1684" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-1.1684" x2="-1.651" y2="-1.1684" width="0.1524" layer="21"/>
<smd name="1" x="-2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<smd name="2" x="2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<text x="-2.794" y="1.651" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.794" y="-2.794" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.048" y1="-1.2446" x2="-2.3876" y2="1.2446" layer="51"/>
<rectangle x1="2.3876" y1="-1.2446" x2="3.048" y2="1.2446" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="M3216">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="1.143" y1="0.8382" x2="-1.143" y2="0.8382" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.8382" x2="-1.143" y2="-0.8382" width="0.1524" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.9144" x2="-1.1176" y2="0.9144" layer="51"/>
<rectangle x1="1.1176" y1="-0.9144" x2="1.7018" y2="0.9144" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="M3516">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.12 W</description>
<wire x1="-2.973" y1="0.983" x2="2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-0.983" x2="-2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-0.983" x2="-2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="0.983" x2="2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.3208" y1="0.762" x2="-1.3208" y2="0.762" width="0.1524" layer="51"/>
<wire x1="1.3208" y1="-0.762" x2="-1.3208" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="0.6858" y1="0.762" x2="-0.6858" y2="0.762" width="0.1524" layer="21"/>
<wire x1="0.6858" y1="-0.762" x2="-0.6858" y2="-0.762" width="0.1524" layer="21"/>
<smd name="1" x="-1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<smd name="2" x="1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<text x="-1.651" y="1.143" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.651" y="-2.413" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.8542" y1="-0.8382" x2="-1.2954" y2="0.8382" layer="51"/>
<rectangle x1="1.2954" y1="-0.8382" x2="1.8542" y2="0.8382" layer="51"/>
<rectangle x1="-0.4001" y1="-0.7" x2="0.4001" y2="0.7" layer="35"/>
</package>
<package name="M5923">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-4.473" y1="1.483" x2="4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="-1.483" x2="-4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-4.473" y1="-1.483" x2="-4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="1.483" x2="4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.413" y1="1.1684" x2="-2.4384" y2="1.1684" width="0.1524" layer="51"/>
<wire x1="2.413" y1="-1.1684" x2="-2.413" y2="-1.1684" width="0.1524" layer="51"/>
<wire x1="1.651" y1="1.1684" x2="-1.6764" y2="1.1684" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-1.1684" x2="-1.651" y2="-1.1684" width="0.1524" layer="21"/>
<smd name="1" x="-2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<smd name="2" x="2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<text x="-2.794" y="1.651" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.794" y="-2.794" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.048" y1="-1.2446" x2="-2.3876" y2="1.2446" layer="51"/>
<rectangle x1="2.3876" y1="-1.2446" x2="3.048" y2="1.2446" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="0204/5">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="2.032" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0" x2="-2.032" y2="0" width="0.508" layer="51"/>
<wire x1="-1.778" y1="0.635" x2="-1.524" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-0.635" x2="-1.524" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="-0.889" x2="1.778" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="0.889" x2="1.778" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-0.635" x2="-1.778" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0.889" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0.762" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-0.889" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-0.762" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.762" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.762" x2="-1.143" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.762" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.762" x2="-1.143" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="1.524" y1="0.889" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-0.889" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.635" x2="1.778" y2="0.635" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.0066" y="1.1684" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-0.254" x2="-1.778" y2="0.254" layer="51"/>
<rectangle x1="1.778" y1="-0.254" x2="2.032" y2="0.254" layer="51"/>
</package>
<package name="0204/7">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 7.5 mm</description>
<wire x1="3.81" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-3.81" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.016" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.889" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.016" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.889" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="-1.778" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="-1.778" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.016" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.016" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
</package>
<package name="0204V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 2.5 mm</description>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.508" layer="51"/>
<wire x1="-0.127" y1="0" x2="0.127" y2="0" width="0.508" layer="21"/>
<circle x="-1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="0" radius="0.635" width="0.0508" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.1336" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 10 mm</description>
<wire x1="5.08" y1="0" x2="4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.048" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.2606" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
</package>
<package name="0207/12">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 12 mm</description>
<wire x1="6.35" y1="0" x2="5.334" y2="0" width="0.6096" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.334" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="4.445" y1="0" x2="4.064" y2="0" width="0.6096" layer="21"/>
<wire x1="-4.445" y1="0" x2="-4.064" y2="0" width="0.6096" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="4.445" y1="-0.3048" x2="5.3086" y2="0.3048" layer="21"/>
<rectangle x1="-5.3086" y1="-0.3048" x2="-4.445" y2="0.3048" layer="21"/>
</package>
<package name="0207/15">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 15mm</description>
<wire x1="7.62" y1="0" x2="6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="5.715" y1="0" x2="4.064" y2="0" width="0.6096" layer="21"/>
<wire x1="-5.715" y1="0" x2="-4.064" y2="0" width="0.6096" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="5.715" y1="-0.3048" x2="6.5786" y2="0.3048" layer="21"/>
<rectangle x1="-6.5786" y1="-0.3048" x2="-5.715" y2="0.3048" layer="21"/>
</package>
<package name="0207/2V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 2.5 mm</description>
<wire x1="-1.27" y1="0" x2="-0.381" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.6096" layer="21"/>
<wire x1="0.381" y1="0" x2="1.27" y2="0" width="0.6096" layer="51"/>
<circle x="-1.27" y="0" radius="1.27" width="0.1524" layer="21"/>
<circle x="-1.27" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-0.0508" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.0508" y="-2.2352" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/5V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 5 mm</description>
<wire x1="-2.54" y1="0" x2="-0.889" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.762" y1="0" x2="0.762" y2="0" width="0.6096" layer="21"/>
<wire x1="0.889" y1="0" x2="2.54" y2="0" width="0.6096" layer="51"/>
<circle x="-2.54" y="0" radius="1.27" width="0.1016" layer="21"/>
<circle x="-2.54" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.143" y="0.889" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.143" y="-2.159" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/7">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 7.5 mm</description>
<wire x1="-3.81" y1="0" x2="-3.429" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.429" y1="0" x2="3.81" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.5588" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.429" y1="-0.3048" x2="-3.175" y2="0.3048" layer="51"/>
<rectangle x1="3.175" y1="-0.3048" x2="3.429" y2="0.3048" layer="51"/>
</package>
<package name="0309/10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0309, grid 10mm</description>
<wire x1="-4.699" y1="0" x2="-5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="-4.318" y1="1.27" x2="-4.064" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.064" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="-1.524" x2="4.318" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="1.524" x2="4.318" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.318" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="1.397" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="-1.524" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="-1.397" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="-3.302" y2="1.397" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="-3.302" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="4.064" y1="1.524" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="4.064" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-1.27" x2="4.318" y2="1.27" width="0.1524" layer="51"/>
<wire x1="5.08" y1="0" x2="4.699" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-4.191" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.6228" y1="-0.3048" x2="-4.318" y2="0.3048" layer="51"/>
<rectangle x1="4.318" y1="-0.3048" x2="4.6228" y2="0.3048" layer="51"/>
</package>
<package name="0309/12">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0309, grid 12.5 mm</description>
<wire x1="6.35" y1="0" x2="5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="-4.318" y1="1.27" x2="-4.064" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.064" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="-1.524" x2="4.318" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="1.524" x2="4.318" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.318" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="1.397" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="-1.524" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="-1.397" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="-3.302" y2="1.397" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="-3.302" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="4.064" y1="1.524" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="4.064" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-1.27" x2="4.318" y2="1.27" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.8128" shape="octagon"/>
<text x="-4.191" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="4.318" y1="-0.3048" x2="5.1816" y2="0.3048" layer="21"/>
<rectangle x1="-5.1816" y1="-0.3048" x2="-4.318" y2="0.3048" layer="21"/>
</package>
<package name="0309V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0309, grid 2.5 mm</description>
<wire x1="1.27" y1="0" x2="0.635" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.635" y1="0" x2="-1.27" y2="0" width="0.6096" layer="51"/>
<circle x="-1.27" y="0" radius="1.524" width="0.1524" layer="21"/>
<circle x="-1.27" y="0" radius="0.762" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="0.254" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.254" y="-2.2098" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.254" y1="-0.3048" x2="0.5588" y2="0.3048" layer="51"/>
<rectangle x1="-0.635" y1="-0.3048" x2="-0.3302" y2="0.3048" layer="51"/>
<rectangle x1="-0.3302" y1="-0.3048" x2="0.254" y2="0.3048" layer="21"/>
</package>
<package name="0411/12">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0411, grid 12.5 mm</description>
<wire x1="6.35" y1="0" x2="5.461" y2="0" width="0.762" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.461" y2="0" width="0.762" layer="51"/>
<wire x1="5.08" y1="-1.651" x2="5.08" y2="1.651" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.032" x2="5.08" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.651" x2="-4.699" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="4.699" y1="-2.032" x2="5.08" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.651" x2="-4.699" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="2.032" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="1.905" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.032" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="-1.905" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="3.937" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="3.937" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.651" x2="-5.08" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="2.032" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-2.032" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.9144" shape="octagon"/>
<text x="-5.08" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.5814" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.3594" y1="-0.381" x2="-5.08" y2="0.381" layer="21"/>
<rectangle x1="5.08" y1="-0.381" x2="5.3594" y2="0.381" layer="21"/>
</package>
<package name="0411/15">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0411, grid 15 mm</description>
<wire x1="5.08" y1="-1.651" x2="5.08" y2="1.651" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.032" x2="5.08" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.651" x2="-4.699" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="4.699" y1="-2.032" x2="5.08" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.651" x2="-4.699" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="2.032" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="1.905" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.032" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="-1.905" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="3.937" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="3.937" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.651" x2="-5.08" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="2.032" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-2.032" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0" x2="-6.35" y2="0" width="0.762" layer="51"/>
<wire x1="6.35" y1="0" x2="7.62" y2="0" width="0.762" layer="51"/>
<pad name="1" x="-7.62" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="0.9144" shape="octagon"/>
<text x="-5.08" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.5814" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="5.08" y1="-0.381" x2="6.477" y2="0.381" layer="21"/>
<rectangle x1="-6.477" y1="-0.381" x2="-5.08" y2="0.381" layer="21"/>
</package>
<package name="0411V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0411, grid 3.81 mm</description>
<wire x1="1.27" y1="0" x2="0.3048" y2="0" width="0.762" layer="51"/>
<wire x1="-1.5748" y1="0" x2="-2.54" y2="0" width="0.762" layer="51"/>
<circle x="-2.54" y="0" radius="2.032" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.9144" shape="octagon"/>
<text x="-0.508" y="1.143" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.5334" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.4732" y1="-0.381" x2="0.2032" y2="0.381" layer="21"/>
</package>
<package name="0414/15">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0414, grid 15 mm</description>
<wire x1="7.62" y1="0" x2="6.604" y2="0" width="0.8128" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.604" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.096" y1="1.905" x2="-5.842" y2="2.159" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.096" y1="-1.905" x2="-5.842" y2="-2.159" width="0.1524" layer="21" curve="90"/>
<wire x1="5.842" y1="-2.159" x2="6.096" y2="-1.905" width="0.1524" layer="21" curve="90"/>
<wire x1="5.842" y1="2.159" x2="6.096" y2="1.905" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.096" y1="-1.905" x2="-6.096" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="2.159" x2="-4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.032" x2="-4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="-2.159" x2="-4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.032" x2="-4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="-4.826" y2="2.032" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-2.032" x2="4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-2.032" x2="-4.826" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="5.842" y1="2.159" x2="4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="5.842" y1="-2.159" x2="4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-1.905" x2="6.096" y2="1.905" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="2.5654" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="6.096" y1="-0.4064" x2="6.5024" y2="0.4064" layer="21"/>
<rectangle x1="-6.5024" y1="-0.4064" x2="-6.096" y2="0.4064" layer="21"/>
</package>
<package name="0414V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0414, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.8128" layer="51"/>
<wire x1="-2.54" y1="0" x2="-1.397" y2="0" width="0.8128" layer="51"/>
<circle x="-2.54" y="0" radius="2.159" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.143" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="-0.381" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.381" y="-2.3622" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.2954" y1="-0.4064" x2="1.2954" y2="0.4064" layer="21"/>
</package>
<package name="0617/17">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0617, grid 17.5 mm</description>
<wire x1="-8.89" y1="0" x2="-8.636" y2="0" width="0.8128" layer="51"/>
<wire x1="-7.874" y1="3.048" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="2.794" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-3.048" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-2.794" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="-6.731" y2="2.794" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="-6.731" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="7.874" y1="3.048" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="7.874" y1="-3.048" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-2.667" x2="-8.255" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.016" x2="-8.255" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="1.016" x2="-8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.667" x2="8.255" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.016" x2="8.255" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="8.255" y1="1.016" x2="8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="8.636" y1="0" x2="8.89" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.255" y1="2.667" x2="-7.874" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="7.874" y1="3.048" x2="8.255" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.255" y1="-2.667" x2="-7.874" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="7.874" y1="-3.048" x2="8.255" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-8.89" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="8.89" y="0" drill="1.016" shape="octagon"/>
<text x="-8.128" y="3.4544" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.096" y="-0.7112" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-8.5344" y1="-0.4064" x2="-8.2296" y2="0.4064" layer="51"/>
<rectangle x1="8.2296" y1="-0.4064" x2="8.5344" y2="0.4064" layer="51"/>
</package>
<package name="0617/22">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0617, grid 22.5 mm</description>
<wire x1="-10.287" y1="0" x2="-11.43" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.255" y1="-2.667" x2="-8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="3.048" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="2.794" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-3.048" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-2.794" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="-6.731" y2="2.794" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="-6.731" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="7.874" y1="3.048" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="7.874" y1="-3.048" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.667" x2="8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="11.43" y1="0" x2="10.287" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.255" y1="2.667" x2="-7.874" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.255" y1="-2.667" x2="-7.874" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="7.874" y1="3.048" x2="8.255" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="7.874" y1="-3.048" x2="8.255" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.43" y="0" drill="1.016" shape="octagon"/>
<text x="-8.255" y="3.4544" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.477" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.1854" y1="-0.4064" x2="-8.255" y2="0.4064" layer="21"/>
<rectangle x1="8.255" y1="-0.4064" x2="10.1854" y2="0.4064" layer="21"/>
</package>
<package name="0617V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0617, grid 5 mm</description>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.8128" layer="51"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.8128" layer="51"/>
<circle x="-2.54" y="0" radius="3.048" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.143" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="0.635" y="1.4224" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.635" y="-2.6162" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.3208" y1="-0.4064" x2="1.3208" y2="0.4064" layer="21"/>
</package>
<package name="0922/22">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0922, grid 22.5 mm</description>
<wire x1="11.43" y1="0" x2="10.795" y2="0" width="0.8128" layer="51"/>
<wire x1="-11.43" y1="0" x2="-10.795" y2="0" width="0.8128" layer="51"/>
<wire x1="-10.16" y1="-4.191" x2="-10.16" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="4.572" x2="-8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="4.318" x2="-8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="-4.572" x2="-8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="-4.318" x2="-8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="8.636" y1="4.318" x2="8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="8.636" y1="4.318" x2="-8.636" y2="4.318" width="0.1524" layer="21"/>
<wire x1="8.636" y1="-4.318" x2="8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="8.636" y1="-4.318" x2="-8.636" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="9.779" y1="4.572" x2="8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="9.779" y1="-4.572" x2="8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-4.191" x2="10.16" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-4.191" x2="-9.779" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-10.16" y1="4.191" x2="-9.779" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="9.779" y1="-4.572" x2="10.16" y2="-4.191" width="0.1524" layer="21" curve="90"/>
<wire x1="9.779" y1="4.572" x2="10.16" y2="4.191" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.43" y="0" drill="1.016" shape="octagon"/>
<text x="-10.16" y="5.1054" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.477" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.7188" y1="-0.4064" x2="-10.16" y2="0.4064" layer="51"/>
<rectangle x1="10.16" y1="-0.4064" x2="10.3124" y2="0.4064" layer="21"/>
<rectangle x1="-10.3124" y1="-0.4064" x2="-10.16" y2="0.4064" layer="21"/>
<rectangle x1="10.16" y1="-0.4064" x2="10.7188" y2="0.4064" layer="51"/>
</package>
<package name="P0613V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0613, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.8128" layer="51"/>
<wire x1="-2.54" y1="0" x2="-1.397" y2="0" width="0.8128" layer="51"/>
<circle x="-2.54" y="0" radius="2.286" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.143" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="-0.254" y="1.143" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.254" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.2954" y1="-0.4064" x2="1.3208" y2="0.4064" layer="21"/>
</package>
<package name="P0613/15">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0613, grid 15 mm</description>
<wire x1="7.62" y1="0" x2="6.985" y2="0" width="0.8128" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.985" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.477" y1="2.032" x2="-6.223" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.477" y1="-2.032" x2="-6.223" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="6.223" y1="-2.286" x2="6.477" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="6.223" y1="2.286" x2="6.477" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.223" y1="2.286" x2="-5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.159" x2="-5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-6.223" y1="-2.286" x2="-5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-2.159" x2="-5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="5.207" y1="2.159" x2="5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="5.207" y1="2.159" x2="-5.207" y2="2.159" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.159" x2="5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.159" x2="-5.207" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="6.223" y1="2.286" x2="5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="6.223" y1="-2.286" x2="5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-0.635" x2="6.477" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-0.635" x2="6.477" y2="0.635" width="0.1524" layer="51"/>
<wire x1="6.477" y1="2.032" x2="6.477" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="-2.032" x2="-6.477" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="0.635" x2="-6.477" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-6.477" y1="0.635" x2="-6.477" y2="2.032" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="1.016" shape="octagon"/>
<text x="-6.477" y="2.6924" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-0.7112" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-7.0358" y1="-0.4064" x2="-6.477" y2="0.4064" layer="51"/>
<rectangle x1="6.477" y1="-0.4064" x2="7.0358" y2="0.4064" layer="51"/>
</package>
<package name="P0817/22">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0817, grid 22.5 mm</description>
<wire x1="-10.414" y1="0" x2="-11.43" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.509" y1="-3.429" x2="-8.509" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-8.128" y1="3.81" x2="-7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="3.556" x2="-7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-8.128" y1="-3.81" x2="-7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-3.556" x2="-7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="3.556" x2="7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="3.556" x2="-6.985" y2="3.556" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-3.556" x2="7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-3.556" x2="-6.985" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="8.128" y1="3.81" x2="7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="8.128" y1="-3.81" x2="7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.429" x2="8.509" y2="3.429" width="0.1524" layer="21"/>
<wire x1="11.43" y1="0" x2="10.414" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.509" y1="3.429" x2="-8.128" y2="3.81" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.509" y1="-3.429" x2="-8.128" y2="-3.81" width="0.1524" layer="21" curve="90"/>
<wire x1="8.128" y1="3.81" x2="8.509" y2="3.429" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.128" y1="-3.81" x2="8.509" y2="-3.429" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.43" y="0" drill="1.016" shape="octagon"/>
<text x="-8.382" y="4.2164" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.223" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="6.604" y="-2.2606" size="1.27" layer="51" ratio="10" rot="R90">0817</text>
<rectangle x1="8.509" y1="-0.4064" x2="10.3124" y2="0.4064" layer="21"/>
<rectangle x1="-10.3124" y1="-0.4064" x2="-8.509" y2="0.4064" layer="21"/>
</package>
<package name="P0817V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0817, grid 6.35 mm</description>
<wire x1="-3.81" y1="0" x2="-5.08" y2="0" width="0.8128" layer="51"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.8128" layer="51"/>
<circle x="-5.08" y="0" radius="3.81" width="0.1524" layer="21"/>
<circle x="-5.08" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="1.016" shape="octagon"/>
<text x="-1.016" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.016" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-6.858" y="2.032" size="1.016" layer="21" ratio="12">0817</text>
<rectangle x1="-3.81" y1="-0.4064" x2="0" y2="0.4064" layer="21"/>
</package>
<package name="V234/12">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type V234, grid 12.5 mm</description>
<wire x1="-4.953" y1="1.524" x2="-4.699" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="1.778" x2="4.953" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-1.778" x2="4.953" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.953" y1="-1.524" x2="-4.699" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="1.778" x2="4.699" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="1.524" x2="-4.953" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.778" x2="-4.699" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="4.953" y1="1.524" x2="4.953" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0" x2="5.461" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.461" y2="0" width="0.8128" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="1.016" shape="octagon"/>
<text x="-4.953" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="4.953" y1="-0.4064" x2="5.4102" y2="0.4064" layer="21"/>
<rectangle x1="-5.4102" y1="-0.4064" x2="-4.953" y2="0.4064" layer="21"/>
</package>
<package name="V235/17">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type V235, grid 17.78 mm</description>
<wire x1="-6.731" y1="2.921" x2="6.731" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-7.112" y1="2.54" x2="-7.112" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.921" x2="-6.731" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.89" y1="0" x2="7.874" y2="0" width="1.016" layer="51"/>
<wire x1="-7.874" y1="0" x2="-8.89" y2="0" width="1.016" layer="51"/>
<wire x1="-7.112" y1="-2.54" x2="-6.731" y2="-2.921" width="0.1524" layer="21" curve="90"/>
<wire x1="6.731" y1="2.921" x2="7.112" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.731" y1="-2.921" x2="7.112" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-7.112" y1="2.54" x2="-6.731" y2="2.921" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-8.89" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="8.89" y="0" drill="1.1938" shape="octagon"/>
<text x="-6.858" y="3.302" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.842" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="7.112" y1="-0.508" x2="7.747" y2="0.508" layer="21"/>
<rectangle x1="-7.747" y1="-0.508" x2="-7.112" y2="0.508" layer="21"/>
</package>
<package name="V526-0">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type V526-0, grid 2.5 mm</description>
<wire x1="-2.54" y1="1.016" x2="-2.286" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.286" y1="1.27" x2="2.54" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.286" y1="-1.27" x2="2.54" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.54" y1="-1.016" x2="-2.286" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.27" x2="-2.286" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.016" x2="2.54" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.27" x2="2.286" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.016" x2="-2.54" y2="-1.016" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.413" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.413" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0102R">
<description>&lt;b&gt;CECC Size RC2211&lt;/b&gt; Reflow Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1" y1="-0.5" x2="1" y2="-0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="-0.5" x2="1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="0.5" x2="-1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="-1" y1="0.5" x2="-1" y2="-0.5" width="0.2032" layer="51"/>
<smd name="1" x="-0.9" y="0" dx="0.5" dy="1.3" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.5" dy="1.3" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0102W">
<description>&lt;b&gt;CECC Size RC2211&lt;/b&gt; Wave Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1" y1="-0.5" x2="1" y2="-0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="-0.5" x2="1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="0.5" x2="-1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="-1" y1="0.5" x2="-1" y2="-0.5" width="0.2032" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="0.6" dy="1.3" layer="1"/>
<smd name="2" x="0.95" y="0" dx="0.6" dy="1.3" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0204R">
<description>&lt;b&gt;CECC Size RC3715&lt;/b&gt; Reflow Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1.7" y1="-0.6" x2="1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="-0.6" x2="1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="0.6" x2="-1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="-1.7" y1="0.6" x2="-1.7" y2="-0.6" width="0.2032" layer="51"/>
<smd name="1" x="-1.5" y="0" dx="0.8" dy="1.6" layer="1"/>
<smd name="2" x="1.5" y="0" dx="0.8" dy="1.6" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0204W">
<description>&lt;b&gt;CECC Size RC3715&lt;/b&gt; Wave Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1.7" y1="-0.6" x2="1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="-0.6" x2="1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="0.6" x2="-1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="-1.7" y1="0.6" x2="-1.7" y2="-0.6" width="0.2032" layer="51"/>
<smd name="1" x="-1.5" y="0" dx="1.2" dy="1.6" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.2" dy="1.6" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0207R">
<description>&lt;b&gt;CECC Size RC6123&lt;/b&gt; Reflow Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-2.8" y1="-1" x2="2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="-1" x2="2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="1" x2="-2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="-2.8" y1="1" x2="-2.8" y2="-1" width="0.2032" layer="51"/>
<smd name="1" x="-2.25" y="0" dx="1.6" dy="2.5" layer="1"/>
<smd name="2" x="2.25" y="0" dx="1.6" dy="2.5" layer="1"/>
<text x="-2.2225" y="1.5875" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.2225" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0207W">
<description>&lt;b&gt;CECC Size RC6123&lt;/b&gt; Wave Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-2.8" y1="-1" x2="2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="-1" x2="2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="1" x2="-2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="-2.8" y1="1" x2="-2.8" y2="-1" width="0.2032" layer="51"/>
<smd name="1" x="-2.6" y="0" dx="2.4" dy="2.5" layer="1"/>
<smd name="2" x="2.6" y="0" dx="2.4" dy="2.5" layer="1"/>
<text x="-2.54" y="1.5875" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="0922V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0922, grid 7.5 mm</description>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.8128" layer="51"/>
<wire x1="-5.08" y1="0" x2="-3.81" y2="0" width="0.8128" layer="51"/>
<circle x="-5.08" y="0" radius="4.572" width="0.1524" layer="21"/>
<circle x="-5.08" y="0" radius="1.905" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="-0.508" y="1.6764" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.508" y="-2.9972" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-6.858" y="2.54" size="1.016" layer="21" ratio="12">0922</text>
<rectangle x1="-3.81" y1="-0.4064" x2="1.3208" y2="0.4064" layer="21"/>
</package>
<package name="RDH/15">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type RDH, grid 15 mm</description>
<wire x1="-7.62" y1="0" x2="-6.858" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.096" y1="3.048" x2="-5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="2.794" x2="-5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="-3.048" x2="-5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-2.794" x2="-5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.794" x2="5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.794" x2="-4.953" y2="2.794" width="0.1524" layer="21"/>
<wire x1="4.953" y1="-2.794" x2="5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="4.953" y1="-2.794" x2="-4.953" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="6.096" y1="3.048" x2="5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-3.048" x2="5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="-2.667" x2="-6.477" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="1.016" x2="-6.477" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-6.477" y1="1.016" x2="-6.477" y2="2.667" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-2.667" x2="6.477" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="6.477" y1="1.016" x2="6.477" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="6.477" y1="1.016" x2="6.477" y2="2.667" width="0.1524" layer="21"/>
<wire x1="6.858" y1="0" x2="7.62" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.477" y1="2.667" x2="-6.096" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="3.048" x2="6.477" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.477" y1="-2.667" x2="-6.096" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="6.096" y1="-3.048" x2="6.477" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="1.016" shape="octagon"/>
<text x="-6.35" y="3.4544" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="4.572" y="-1.7272" size="1.27" layer="51" ratio="10" rot="R90">RDH</text>
<rectangle x1="-6.7564" y1="-0.4064" x2="-6.4516" y2="0.4064" layer="51"/>
<rectangle x1="6.4516" y1="-0.4064" x2="6.7564" y2="0.4064" layer="51"/>
</package>
<package name="MINI_MELF-0102AX">
<description>&lt;b&gt;Mini MELF 0102 Axial&lt;/b&gt;</description>
<circle x="0" y="0" radius="0.6" width="0" layer="51"/>
<circle x="0" y="0" radius="0.6" width="0" layer="52"/>
<smd name="1" x="0" y="0" dx="1.9" dy="1.9" layer="1" roundness="100"/>
<smd name="2" x="0" y="0" dx="1.9" dy="1.9" layer="16" roundness="100"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
<hole x="0" y="0" drill="1.3"/>
</package>
<package name="C0402">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.762" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C0504">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.294" y1="0.559" x2="0.294" y2="0.559" width="0.1016" layer="51"/>
<wire x1="-0.294" y1="-0.559" x2="0.294" y2="-0.559" width="0.1016" layer="51"/>
<smd name="1" x="-0.7" y="0" dx="1" dy="1.3" layer="1"/>
<smd name="2" x="0.7" y="0" dx="1" dy="1.3" layer="1"/>
<text x="-0.635" y="0.889" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.159" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.6604" y1="-0.6223" x2="-0.2804" y2="0.6276" layer="51"/>
<rectangle x1="0.2794" y1="-0.6223" x2="0.6594" y2="0.6276" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="C0603">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.889" y="0.762" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.889" y="-2.032" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C0805">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.889" y="1.016" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.889" y="-2.286" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="C1005">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.762" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C1206">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.143" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.413" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="C1210">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="-0.9652" y1="1.2446" x2="0.9652" y2="1.2446" width="0.1016" layer="51"/>
<wire x1="-0.9652" y1="-1.2446" x2="0.9652" y2="-1.2446" width="0.1016" layer="51"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-1.397" y="1.651" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.397" y="-2.921" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-1.2954" x2="-0.9517" y2="1.3045" layer="51"/>
<rectangle x1="0.9517" y1="-1.3045" x2="1.7018" y2="1.2954" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="C1310">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.294" y1="0.559" x2="0.294" y2="0.559" width="0.1016" layer="51"/>
<wire x1="-0.294" y1="-0.559" x2="0.294" y2="-0.559" width="0.1016" layer="51"/>
<smd name="1" x="-0.7" y="0" dx="1" dy="1.3" layer="1"/>
<smd name="2" x="0.7" y="0" dx="1" dy="1.3" layer="1"/>
<text x="-0.635" y="0.889" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.159" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.6604" y1="-0.6223" x2="-0.2804" y2="0.6276" layer="51"/>
<rectangle x1="0.2794" y1="-0.6223" x2="0.6594" y2="0.6276" layer="51"/>
<rectangle x1="-0.1001" y1="-0.3" x2="0.1001" y2="0.3" layer="35"/>
</package>
<package name="C1608">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.635" y="0.762" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.032" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C1812">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-2.973" y1="1.983" x2="2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-1.983" x2="-2.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-1.983" x2="-2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="-1.4732" y1="1.6002" x2="1.4732" y2="1.6002" width="0.1016" layer="51"/>
<wire x1="-1.4478" y1="-1.6002" x2="1.4732" y2="-1.6002" width="0.1016" layer="51"/>
<wire x1="2.973" y1="1.983" x2="2.973" y2="-1.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.3876" y1="-1.651" x2="-1.4376" y2="1.649" layer="51"/>
<rectangle x1="1.4478" y1="-1.651" x2="2.3978" y2="1.649" layer="51"/>
<rectangle x1="-0.3" y1="-0.4001" x2="0.3" y2="0.4001" layer="35"/>
</package>
<package name="C1825">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-2.973" y1="3.483" x2="2.973" y2="3.483" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-3.483" x2="-2.973" y2="-3.483" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-3.483" x2="-2.973" y2="3.483" width="0.0508" layer="39"/>
<wire x1="-1.4986" y1="3.2766" x2="1.4732" y2="3.2766" width="0.1016" layer="51"/>
<wire x1="-1.4732" y1="-3.2766" x2="1.4986" y2="-3.2766" width="0.1016" layer="51"/>
<wire x1="2.973" y1="3.483" x2="2.973" y2="-3.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="6.8" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="6.8" layer="1"/>
<text x="-1.905" y="3.683" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-4.826" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.413" y1="-3.3528" x2="-1.463" y2="3.3472" layer="51"/>
<rectangle x1="1.4478" y1="-3.3528" x2="2.3978" y2="3.3472" layer="51"/>
<rectangle x1="-0.7" y1="-0.7" x2="0.7" y2="0.7" layer="35"/>
</package>
<package name="C2012">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.889" y="1.016" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.889" y="-2.286" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="C3216">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.143" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.413" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.3" y1="-0.5001" x2="0.3" y2="0.5001" layer="35"/>
</package>
<package name="C3225">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="-0.9652" y1="1.2446" x2="0.9652" y2="1.2446" width="0.1016" layer="51"/>
<wire x1="-0.9652" y1="-1.2446" x2="0.9652" y2="-1.2446" width="0.1016" layer="51"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-1.397" y="1.651" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.397" y="-2.921" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-1.2954" x2="-0.9517" y2="1.3045" layer="51"/>
<rectangle x1="0.9517" y1="-1.3045" x2="1.7018" y2="1.2954" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="C4532">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-2.973" y1="1.983" x2="2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-1.983" x2="-2.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-1.983" x2="-2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="-1.4732" y1="1.6002" x2="1.4732" y2="1.6002" width="0.1016" layer="51"/>
<wire x1="-1.4478" y1="-1.6002" x2="1.4732" y2="-1.6002" width="0.1016" layer="51"/>
<wire x1="2.973" y1="1.983" x2="2.973" y2="-1.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<text x="-1.905" y="2.032" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.3876" y1="-1.651" x2="-1.4376" y2="1.649" layer="51"/>
<rectangle x1="1.4478" y1="-1.651" x2="2.3978" y2="1.649" layer="51"/>
<rectangle x1="-0.4001" y1="-0.7" x2="0.4001" y2="0.7" layer="35"/>
</package>
<package name="C4564">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-2.973" y1="3.483" x2="2.973" y2="3.483" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-3.483" x2="-2.973" y2="-3.483" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-3.483" x2="-2.973" y2="3.483" width="0.0508" layer="39"/>
<wire x1="-1.4986" y1="3.2766" x2="1.4732" y2="3.2766" width="0.1016" layer="51"/>
<wire x1="-1.4732" y1="-3.2766" x2="1.4986" y2="-3.2766" width="0.1016" layer="51"/>
<wire x1="2.973" y1="3.483" x2="2.973" y2="-3.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="6.8" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="6.8" layer="1"/>
<text x="-1.905" y="3.683" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-4.826" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.413" y1="-3.3528" x2="-1.463" y2="3.3472" layer="51"/>
<rectangle x1="1.4478" y1="-3.3528" x2="2.3978" y2="3.3472" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="C025-024X044">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 2.4 x 4.4 mm</description>
<wire x1="-2.159" y1="-0.635" x2="-2.159" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0.635" x2="-1.651" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-0.635" x2="-1.651" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="1.143" x2="-1.651" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-0.635" x2="2.159" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-1.143" x2="-1.651" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.651" y1="1.143" x2="2.159" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.651" y1="-1.143" x2="2.159" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.3048" y1="0.762" x2="-0.3048" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0.762" x2="0.3302" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="1.27" y1="0" x2="0.3302" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0" x2="-0.3048" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.778" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.778" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-025X050">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 2.5 x 5 mm</description>
<wire x1="-2.159" y1="1.27" x2="2.159" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.27" x2="-2.159" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.27" x2="2.413" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.016" x2="-2.159" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.27" x2="2.413" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.016" x2="-2.159" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-030X050">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 3 x 5 mm</description>
<wire x1="-2.159" y1="1.524" x2="2.159" y2="1.524" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.524" x2="-2.159" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.27" x2="2.413" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.27" x2="-2.413" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.524" x2="2.413" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.27" x2="-2.159" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.524" x2="2.413" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.27" x2="-2.159" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-040X050">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 4 x 5 mm</description>
<wire x1="-2.159" y1="1.905" x2="2.159" y2="1.905" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.905" x2="-2.159" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.651" x2="2.413" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.651" x2="-2.413" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.905" x2="2.413" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.651" x2="-2.159" y2="1.905" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.905" x2="2.413" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.651" x2="-2.159" y2="-1.905" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.429" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-050X050">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 5 x 5 mm</description>
<wire x1="-2.159" y1="2.286" x2="2.159" y2="2.286" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.286" x2="-2.159" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.032" x2="2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.032" x2="-2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.286" x2="2.413" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.032" x2="-2.159" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.286" x2="2.413" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.032" x2="-2.159" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-060X050">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 6 x 5 mm</description>
<wire x1="-2.159" y1="2.794" x2="2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.794" x2="-2.159" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.54" x2="2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.54" x2="-2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.794" x2="2.413" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.54" x2="-2.159" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.794" x2="2.413" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.54" x2="-2.159" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.032" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-024X070">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm + 5 mm, outline 2.4 x 7 mm</description>
<wire x1="-2.159" y1="-0.635" x2="-2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="0.635" x2="-1.651" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-0.635" x2="-1.651" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="1.143" x2="-1.651" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-0.635" x2="2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-1.143" x2="-1.651" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.651" y1="1.143" x2="2.159" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.191" y1="-1.143" x2="-3.9624" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="1.143" x2="-3.9624" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-0.635" x2="-4.191" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="-1.143" x2="2.159" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="0.635" x2="-4.191" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.699" y1="-0.635" x2="-4.699" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="1.143" x2="-2.5654" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.143" x2="-2.5654" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="0.762" x2="-0.3048" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0.762" x2="0.3302" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="1.27" y1="0" x2="0.3302" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0" x2="-0.3048" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.81" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-025X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 + 5 mm, outline 2.5 x 7.5 mm</description>
<wire x1="-2.159" y1="1.27" x2="2.159" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.27" x2="-2.159" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.27" x2="2.413" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.016" x2="-2.159" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.27" x2="2.413" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.016" x2="-2.159" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="4.953" y1="1.016" x2="4.953" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="4.699" y1="1.27" x2="4.953" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-1.27" x2="4.953" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="1.27" x2="4.699" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.27" x2="2.794" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.413" y2="0.762" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-0.762" x2="2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="0.254" x2="2.413" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0" x2="2.286" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="2.794" y2="0" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.159" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-035X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 + 5 mm, outline 3.5 x 7.5 mm</description>
<wire x1="-2.159" y1="1.778" x2="2.159" y2="1.778" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.778" x2="-2.159" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.524" x2="-2.413" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.778" x2="2.413" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.524" x2="-2.159" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.778" x2="2.413" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.524" x2="-2.159" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="4.953" y1="1.524" x2="4.953" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.699" y1="1.778" x2="4.953" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-1.778" x2="4.953" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="1.778" x2="4.699" y2="1.778" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.778" x2="2.794" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.524" x2="2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.413" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="2.413" y1="0.508" x2="2.413" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0" x2="0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="2.794" y2="0" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="1.778" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.302" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-045X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 + 5 mm, outline 4.5 x 7.5 mm</description>
<wire x1="-2.159" y1="2.286" x2="2.159" y2="2.286" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.286" x2="-2.159" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.032" x2="-2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.286" x2="2.413" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.032" x2="-2.159" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.286" x2="2.413" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.032" x2="-2.159" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="4.953" y1="2.032" x2="4.953" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.286" x2="4.953" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-2.286" x2="4.953" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="2.286" x2="4.699" y2="2.286" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.286" x2="2.794" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.032" x2="2.413" y2="1.397" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.397" x2="2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="2.413" y1="0.762" x2="2.413" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="2.286" y1="0" x2="2.794" y2="0" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="1.778" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.667" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-055X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 + 5 mm, outline 5.5 x 7.5 mm</description>
<wire x1="-2.159" y1="2.794" x2="2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.794" x2="-2.159" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.54" x2="-2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.794" x2="2.413" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.54" x2="-2.159" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.794" x2="2.413" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.54" x2="-2.159" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="4.953" y1="2.54" x2="4.953" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.794" x2="4.953" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-2.794" x2="4.953" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="2.794" x2="4.699" y2="2.794" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.794" x2="2.794" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.54" x2="2.413" y2="2.032" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-2.032" x2="2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.413" y1="0.762" x2="2.413" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0" x2="2.286" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="2.794" y2="0" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.032" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-024X044">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 2.4 x 4.4 mm</description>
<wire x1="-2.159" y1="-0.635" x2="-2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="0.635" x2="-1.651" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-0.635" x2="-1.651" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="1.143" x2="-1.651" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-0.635" x2="2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-1.143" x2="-1.651" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.651" y1="1.143" x2="2.159" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.651" y1="-1.143" x2="2.159" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.3048" y1="0.762" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0.762" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="1.27" y1="0" x2="0.3302" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0" x2="-0.3048" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.159" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.159" y1="-0.381" x2="2.54" y2="0.381" layer="51"/>
<rectangle x1="-2.54" y1="-0.381" x2="-2.159" y2="0.381" layer="51"/>
</package>
<package name="C050-025X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 2.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.016" x2="-3.683" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.27" x2="3.429" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.016" x2="3.683" y2="1.016" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.27" x2="-3.429" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.27" x2="3.683" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.27" x2="3.683" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.016" x2="-3.429" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.016" x2="-3.429" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-045X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 4.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.032" x2="-3.683" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.286" x2="3.429" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.032" x2="3.683" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.286" x2="-3.429" y2="2.286" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.286" x2="3.683" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.286" x2="3.683" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.032" x2="-3.429" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.032" x2="-3.429" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.556" y="2.667" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.556" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-030X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 3 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.27" x2="-3.683" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.27" x2="3.683" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.524" x2="3.683" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.524" x2="3.683" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.27" x2="-3.429" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.27" x2="-3.429" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.556" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.556" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-050X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.286" x2="-3.683" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.54" x2="3.429" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.286" x2="3.683" y2="2.286" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.54" x2="-3.429" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.54" x2="3.683" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.54" x2="3.683" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.286" x2="-3.429" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.286" x2="-3.429" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-2.159" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-055X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 5.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.54" x2="-3.683" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.794" x2="3.429" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.54" x2="3.683" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.794" x2="-3.429" y2="2.794" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.794" x2="3.683" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.794" x2="3.683" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.54" x2="-3.429" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.54" x2="-3.429" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.302" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-075X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 7.5 x 7.5 mm</description>
<wire x1="-1.524" y1="0" x2="-0.4572" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.4572" y1="0" x2="-0.4572" y2="0.762" width="0.4064" layer="21"/>
<wire x1="-0.4572" y1="0" x2="-0.4572" y2="-0.762" width="0.4064" layer="21"/>
<wire x1="0.4318" y1="0.762" x2="0.4318" y2="0" width="0.4064" layer="21"/>
<wire x1="0.4318" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.4318" y1="0" x2="0.4318" y2="-0.762" width="0.4064" layer="21"/>
<wire x1="-3.683" y1="3.429" x2="-3.683" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-3.683" x2="3.429" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-3.429" x2="3.683" y2="3.429" width="0.1524" layer="21"/>
<wire x1="3.429" y1="3.683" x2="-3.429" y2="3.683" width="0.1524" layer="21"/>
<wire x1="3.429" y1="3.683" x2="3.683" y2="3.429" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-3.683" x2="3.683" y2="-3.429" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-3.429" x2="-3.429" y2="-3.683" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="3.429" x2="-3.429" y2="3.683" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="4.064" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050H075X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
Horizontal, grid 5 mm, outline 7.5 x 7.5 mm</description>
<wire x1="-3.683" y1="7.112" x2="-3.683" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="0.508" x2="-3.302" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="0.508" x2="-1.778" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="0.508" x2="1.778" y2="0.508" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.508" x2="3.302" y2="0.508" width="0.1524" layer="51"/>
<wire x1="3.302" y1="0.508" x2="3.683" y2="0.508" width="0.1524" layer="21"/>
<wire x1="3.683" y1="0.508" x2="3.683" y2="7.112" width="0.1524" layer="21"/>
<wire x1="3.175" y1="7.62" x2="-3.175" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="2.413" x2="-0.3048" y2="1.778" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="1.778" x2="-0.3048" y2="1.143" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="1.778" x2="-1.651" y2="1.778" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="2.413" x2="0.3302" y2="1.778" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="1.778" x2="0.3302" y2="1.143" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="1.778" x2="1.651" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="7.112" x2="-3.175" y2="7.62" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.175" y1="7.62" x2="3.683" y2="7.112" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.254" width="0.508" layer="51"/>
<wire x1="2.54" y1="0" x2="2.54" y2="0.254" width="0.508" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.302" y="8.001" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="3.175" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.794" y1="0.127" x2="-2.286" y2="0.508" layer="51"/>
<rectangle x1="2.286" y1="0.127" x2="2.794" y2="0.508" layer="51"/>
</package>
<package name="C075-032X103">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 7.5 mm, outline 3.2 x 10.3 mm</description>
<wire x1="4.826" y1="1.524" x2="-4.826" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-1.524" x2="4.826" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.826" y1="1.524" x2="5.08" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.826" y1="-1.524" x2="5.08" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="-1.27" x2="-4.826" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.27" x2="-4.826" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.508" y1="0" x2="2.54" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0" x2="-0.508" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="0.889" x2="-0.508" y2="0" width="0.4064" layer="21"/>
<wire x1="-0.508" y1="0" x2="-0.508" y2="-0.889" width="0.4064" layer="21"/>
<wire x1="0.508" y1="0.889" x2="0.508" y2="0" width="0.4064" layer="21"/>
<wire x1="0.508" y1="0" x2="0.508" y2="-0.889" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.826" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.826" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C075-042X103">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 7.5 mm, outline 4.2 x 10.3 mm</description>
<wire x1="4.826" y1="2.032" x2="-4.826" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.778" x2="-5.08" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.032" x2="4.826" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.778" x2="5.08" y2="1.778" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="5.08" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.826" y1="-2.032" x2="5.08" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="-1.778" x2="-4.826" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.778" x2="-4.826" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.699" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.635" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C075-052X106">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 7.5 mm, outline 5.2 x 10.6 mm</description>
<wire x1="4.953" y1="2.54" x2="-4.953" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.286" x2="-5.207" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-2.54" x2="4.953" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.286" x2="5.207" y2="2.286" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.54" x2="5.207" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.953" y1="-2.54" x2="5.207" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="-2.286" x2="-4.953" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="2.286" x2="-4.953" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.826" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.635" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C102-043X133">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 10.2 mm, outline 4.3 x 13.3 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="2.032" x2="6.096" y2="2.032" width="0.1524" layer="21"/>
<wire x1="6.604" y1="1.524" x2="6.604" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-2.032" x2="-6.096" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-1.524" x2="-6.604" y2="1.524" width="0.1524" layer="21"/>
<wire x1="6.096" y1="2.032" x2="6.604" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-2.032" x2="6.604" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-1.524" x2="-6.096" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="1.524" x2="-6.096" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C102-054X133">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 10.2 mm, outline 5.4 x 13.3 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="2.54" x2="6.096" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.604" y1="2.032" x2="6.604" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-2.54" x2="-6.096" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.032" x2="-6.604" y2="2.032" width="0.1524" layer="21"/>
<wire x1="6.096" y1="2.54" x2="6.604" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-2.54" x2="6.604" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-2.032" x2="-6.096" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="2.032" x2="-6.096" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-1.905" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C102-064X133">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 10.2 mm, outline 6.4 x 13.3 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="3.048" x2="6.096" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.604" y1="2.54" x2="6.604" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-3.048" x2="-6.096" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.54" x2="-6.604" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.096" y1="3.048" x2="6.604" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-3.048" x2="6.604" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-2.54" x2="-6.096" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="2.54" x2="-6.096" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C102_152-062X184">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 10.2 mm + 15.2 mm, outline 6.2 x 18.4 mm</description>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.683" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="3.683" y2="0" width="0.1524" layer="21"/>
<wire x1="6.477" y1="0" x2="8.636" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="3.048" x2="6.223" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.223" y1="-3.048" x2="-6.096" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.54" x2="-6.604" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.223" y1="3.048" x2="6.731" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.223" y1="-3.048" x2="6.731" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-2.54" x2="-6.096" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="2.54" x2="-6.096" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.731" y1="2.54" x2="6.731" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="11.176" y1="3.048" x2="11.684" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="11.176" y1="-3.048" x2="11.684" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="11.176" y1="-3.048" x2="7.112" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="7.112" y1="3.048" x2="11.176" y2="3.048" width="0.1524" layer="21"/>
<wire x1="11.684" y1="2.54" x2="11.684" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="3" x="10.033" y="0" drill="1.016" shape="octagon"/>
<text x="-5.969" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-054X183">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 5.4 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="2.032" x2="9.017" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-2.54" x2="-8.509" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-2.032" x2="-9.017" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="2.54" x2="8.509" y2="2.54" width="0.1524" layer="21"/>
<wire x1="8.509" y1="2.54" x2="9.017" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-2.54" x2="9.017" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-2.032" x2="-8.509" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="2.032" x2="-8.509" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.382" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-064X183">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 6.4 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="2.54" x2="9.017" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.048" x2="-8.509" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-2.54" x2="-9.017" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="3.048" x2="8.509" y2="3.048" width="0.1524" layer="21"/>
<wire x1="8.509" y1="3.048" x2="9.017" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-3.048" x2="9.017" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-2.54" x2="-8.509" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="2.54" x2="-8.509" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-072X183">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 7.2 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.048" x2="9.017" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.556" x2="-8.509" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.048" x2="-9.017" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="3.556" x2="8.509" y2="3.556" width="0.1524" layer="21"/>
<wire x1="8.509" y1="3.556" x2="9.017" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-3.556" x2="9.017" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.048" x2="-8.509" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.048" x2="-8.509" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="3.937" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-084X183">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 8.4 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.556" x2="9.017" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-4.064" x2="-8.509" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.556" x2="-9.017" y2="3.556" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="4.064" x2="8.509" y2="4.064" width="0.1524" layer="21"/>
<wire x1="8.509" y1="4.064" x2="9.017" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-4.064" x2="9.017" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.556" x2="-8.509" y2="-4.064" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.556" x2="-8.509" y2="4.064" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="4.445" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-091X182">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 9.1 x 18.2 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.937" x2="9.017" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-4.445" x2="-8.509" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.937" x2="-9.017" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="4.445" x2="8.509" y2="4.445" width="0.1524" layer="21"/>
<wire x1="8.509" y1="4.445" x2="9.017" y2="3.937" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-4.445" x2="9.017" y2="-3.937" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.937" x2="-8.509" y2="-4.445" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.937" x2="-8.509" y2="4.445" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="4.826" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-062X268">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 6.2 x 26.8 mm</description>
<wire x1="-12.827" y1="3.048" x2="12.827" y2="3.048" width="0.1524" layer="21"/>
<wire x1="13.335" y1="2.54" x2="13.335" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-3.048" x2="-12.827" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-2.54" x2="-13.335" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="3.048" x2="13.335" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-3.048" x2="13.335" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-2.54" x2="-12.827" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="2.54" x2="-12.827" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.7" y="3.429" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-074X268">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 7.4 x 26.8 mm</description>
<wire x1="-12.827" y1="3.556" x2="12.827" y2="3.556" width="0.1524" layer="21"/>
<wire x1="13.335" y1="3.048" x2="13.335" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-3.556" x2="-12.827" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-3.048" x2="-13.335" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="3.556" x2="13.335" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-3.556" x2="13.335" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-3.048" x2="-12.827" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="3.048" x2="-12.827" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.827" y="3.937" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-087X268">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 8.7 x 26.8 mm</description>
<wire x1="-12.827" y1="4.318" x2="12.827" y2="4.318" width="0.1524" layer="21"/>
<wire x1="13.335" y1="3.81" x2="13.335" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-4.318" x2="-12.827" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-3.81" x2="-13.335" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="4.318" x2="13.335" y2="3.81" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-4.318" x2="13.335" y2="-3.81" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-3.81" x2="-12.827" y2="-4.318" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="3.81" x2="-12.827" y2="4.318" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.827" y="4.699" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-108X268">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 10.8 x 26.8 mm</description>
<wire x1="-12.827" y1="5.334" x2="12.827" y2="5.334" width="0.1524" layer="21"/>
<wire x1="13.335" y1="4.826" x2="13.335" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-5.334" x2="-12.827" y2="-5.334" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-4.826" x2="-13.335" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="5.334" x2="13.335" y2="4.826" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-5.334" x2="13.335" y2="-4.826" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-4.826" x2="-12.827" y2="-5.334" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="4.826" x2="-12.827" y2="5.334" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.954" y="5.715" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-113X268">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 11.3 x 26.8 mm</description>
<wire x1="-12.827" y1="5.588" x2="12.827" y2="5.588" width="0.1524" layer="21"/>
<wire x1="13.335" y1="5.08" x2="13.335" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-5.588" x2="-12.827" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-5.08" x2="-13.335" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="5.588" x2="13.335" y2="5.08" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-5.588" x2="13.335" y2="-5.08" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-5.08" x2="-12.827" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="5.08" x2="-12.827" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.954" y="5.969" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-093X316">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 9.3 x 31.6 mm</description>
<wire x1="-15.24" y1="4.572" x2="15.24" y2="4.572" width="0.1524" layer="21"/>
<wire x1="15.748" y1="4.064" x2="15.748" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-4.572" x2="-15.24" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-4.064" x2="-15.748" y2="4.064" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="4.572" x2="15.748" y2="4.064" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-4.572" x2="15.748" y2="-4.064" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-4.064" x2="-15.24" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="4.064" x2="-15.24" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="4.953" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-113X316">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 11.3 x 31.6 mm</description>
<wire x1="-15.24" y1="5.588" x2="15.24" y2="5.588" width="0.1524" layer="21"/>
<wire x1="15.748" y1="5.08" x2="15.748" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-5.588" x2="-15.24" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-5.08" x2="-15.748" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="5.588" x2="15.748" y2="5.08" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-5.588" x2="15.748" y2="-5.08" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-5.08" x2="-15.24" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="5.08" x2="-15.24" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="5.969" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-134X316">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 13.4 x 31.6 mm</description>
<wire x1="-15.24" y1="6.604" x2="15.24" y2="6.604" width="0.1524" layer="21"/>
<wire x1="15.748" y1="6.096" x2="15.748" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-6.604" x2="-15.24" y2="-6.604" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-6.096" x2="-15.748" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="6.604" x2="15.748" y2="6.096" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-6.604" x2="15.748" y2="-6.096" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-6.096" x2="-15.24" y2="-6.604" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="6.096" x2="-15.24" y2="6.604" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="6.985" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-205X316">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 20.5 x 31.6 mm</description>
<wire x1="-15.24" y1="10.16" x2="15.24" y2="10.16" width="0.1524" layer="21"/>
<wire x1="15.748" y1="9.652" x2="15.748" y2="-9.652" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-10.16" x2="-15.24" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-9.652" x2="-15.748" y2="9.652" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="10.16" x2="15.748" y2="9.652" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-10.16" x2="15.748" y2="-9.652" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-9.652" x2="-15.24" y2="-10.16" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="9.652" x2="-15.24" y2="10.16" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="10.541" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-4.318" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C325-137X374">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 32.5 mm, outline 13.7 x 37.4 mm</description>
<wire x1="-14.2748" y1="0" x2="-12.7" y2="0" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.905" x2="-12.7" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="1.905" x2="-11.811" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="0" x2="14.2748" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.811" y1="0" x2="-11.811" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-12.7" y1="0" x2="-12.7" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="18.542" y1="6.731" x2="18.542" y2="-6.731" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="6.731" x2="-18.542" y2="-6.731" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-6.731" x2="18.542" y2="-6.731" width="0.1524" layer="21"/>
<wire x1="18.542" y1="6.731" x2="-18.542" y2="6.731" width="0.1524" layer="21"/>
<pad name="1" x="-16.256" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="16.256" y="0" drill="1.1938" shape="octagon"/>
<text x="-18.2372" y="7.0612" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.8458" y="-2.8702" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C325-162X374">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 32.5 mm, outline 16.2 x 37.4 mm</description>
<wire x1="-14.2748" y1="0" x2="-12.7" y2="0" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.905" x2="-12.7" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="1.905" x2="-11.811" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="0" x2="14.2748" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.811" y1="0" x2="-11.811" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-12.7" y1="0" x2="-12.7" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="18.542" y1="8.001" x2="18.542" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="8.001" x2="-18.542" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-8.001" x2="18.542" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="18.542" y1="8.001" x2="-18.542" y2="8.001" width="0.1524" layer="21"/>
<pad name="1" x="-16.256" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="16.256" y="0" drill="1.1938" shape="octagon"/>
<text x="-18.3642" y="8.3312" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.8458" y="-2.8702" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C325-182X374">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 32.5 mm, outline 18.2 x 37.4 mm</description>
<wire x1="-14.2748" y1="0" x2="-12.7" y2="0" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.905" x2="-12.7" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="1.905" x2="-11.811" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="0" x2="14.2748" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.811" y1="0" x2="-11.811" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-12.7" y1="0" x2="-12.7" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="18.542" y1="9.017" x2="18.542" y2="-9.017" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="9.017" x2="-18.542" y2="-9.017" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-9.017" x2="18.542" y2="-9.017" width="0.1524" layer="21"/>
<wire x1="18.542" y1="9.017" x2="-18.542" y2="9.017" width="0.1524" layer="21"/>
<pad name="1" x="-16.256" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="16.256" y="0" drill="1.1938" shape="octagon"/>
<text x="-18.3642" y="9.3472" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.8458" y="-2.8702" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C375-192X418">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 37.5 mm, outline 19.2 x 41.8 mm</description>
<wire x1="-20.32" y1="8.509" x2="20.32" y2="8.509" width="0.1524" layer="21"/>
<wire x1="20.828" y1="8.001" x2="20.828" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-8.509" x2="-20.32" y2="-8.509" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-8.001" x2="-20.828" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="20.32" y1="8.509" x2="20.828" y2="8.001" width="0.1524" layer="21" curve="-90"/>
<wire x1="20.32" y1="-8.509" x2="20.828" y2="-8.001" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="-8.001" x2="-20.32" y2="-8.509" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="8.001" x2="-20.32" y2="8.509" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.002" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="16.002" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-18.796" y="0" drill="1.3208" shape="octagon"/>
<pad name="2" x="18.796" y="0" drill="1.3208" shape="octagon"/>
<text x="-20.447" y="8.89" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C375-203X418">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 37.5 mm, outline 20.3 x 41.8 mm</description>
<wire x1="-20.32" y1="10.16" x2="20.32" y2="10.16" width="0.1524" layer="21"/>
<wire x1="20.828" y1="9.652" x2="20.828" y2="-9.652" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-10.16" x2="-20.32" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-9.652" x2="-20.828" y2="9.652" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="20.32" y1="10.16" x2="20.828" y2="9.652" width="0.1524" layer="21" curve="-90"/>
<wire x1="20.32" y1="-10.16" x2="20.828" y2="-9.652" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="-9.652" x2="-20.32" y2="-10.16" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="9.652" x2="-20.32" y2="10.16" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.002" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="16.002" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-18.796" y="0" drill="1.3208" shape="octagon"/>
<pad name="2" x="18.796" y="0" drill="1.3208" shape="octagon"/>
<text x="-20.32" y="10.541" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-035X075">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 3.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.524" x2="-3.683" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.778" x2="3.429" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.524" x2="3.683" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.778" x2="-3.429" y2="1.778" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.778" x2="3.683" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.778" x2="3.683" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.524" x2="-3.429" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.524" x2="-3.429" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.556" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.556" y="-3.429" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C375-155X418">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 37.5 mm, outline 15.5 x 41.8 mm</description>
<wire x1="-20.32" y1="7.62" x2="20.32" y2="7.62" width="0.1524" layer="21"/>
<wire x1="20.828" y1="7.112" x2="20.828" y2="-7.112" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-7.62" x2="-20.32" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-7.112" x2="-20.828" y2="7.112" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="20.32" y1="7.62" x2="20.828" y2="7.112" width="0.1524" layer="21" curve="-90"/>
<wire x1="20.32" y1="-7.62" x2="20.828" y2="-7.112" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="-7.112" x2="-20.32" y2="-7.62" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="7.112" x2="-20.32" y2="7.62" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.002" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="16.002" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-18.796" y="0" drill="1.3208" shape="octagon"/>
<pad name="2" x="18.796" y="0" drill="1.3208" shape="octagon"/>
<text x="-20.447" y="8.001" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C075-063X106">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 7.5 mm, outline 6.3 x 10.6 mm</description>
<wire x1="4.953" y1="3.048" x2="-4.953" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.794" x2="-5.207" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-3.048" x2="4.953" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.794" x2="5.207" y2="2.794" width="0.1524" layer="21"/>
<wire x1="4.953" y1="3.048" x2="5.207" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.953" y1="-3.048" x2="5.207" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="-2.794" x2="-4.953" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="2.794" x2="-4.953" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.826" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-154X316">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 15.4 x 31.6 mm</description>
<wire x1="-15.24" y1="7.62" x2="15.24" y2="7.62" width="0.1524" layer="21"/>
<wire x1="15.748" y1="7.112" x2="15.748" y2="-7.112" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-7.62" x2="-15.24" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-7.112" x2="-15.748" y2="7.112" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="7.62" x2="15.748" y2="7.112" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-7.62" x2="15.748" y2="-7.112" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-7.112" x2="-15.24" y2="-7.62" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="7.112" x2="-15.24" y2="7.62" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="8.001" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-173X316">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 17.3 x 31.6 mm</description>
<wire x1="-15.24" y1="8.509" x2="15.24" y2="8.509" width="0.1524" layer="21"/>
<wire x1="15.748" y1="8.001" x2="15.748" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-8.509" x2="-15.24" y2="-8.509" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-8.001" x2="-15.748" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="8.509" x2="15.748" y2="8.001" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-8.509" x2="15.748" y2="-8.001" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-8.001" x2="-15.24" y2="-8.509" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="8.001" x2="-15.24" y2="8.509" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="8.89" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C0402K">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 0204 Reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 1005</description>
<wire x1="-0.425" y1="0.2" x2="0.425" y2="0.2" width="0.1016" layer="51"/>
<wire x1="0.425" y1="-0.2" x2="-0.425" y2="-0.2" width="0.1016" layer="51"/>
<smd name="1" x="-0.6" y="0" dx="0.925" dy="0.74" layer="1"/>
<smd name="2" x="0.6" y="0" dx="0.925" dy="0.74" layer="1"/>
<text x="-0.5" y="0.425" size="1.016" layer="25">&gt;NAME</text>
<text x="-0.5" y="-1.45" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-0.5" y1="-0.25" x2="-0.225" y2="0.25" layer="51"/>
<rectangle x1="0.225" y1="-0.25" x2="0.5" y2="0.25" layer="51"/>
</package>
<package name="C0603K">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 0603 Reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 1608</description>
<wire x1="-0.725" y1="0.35" x2="0.725" y2="0.35" width="0.1016" layer="51"/>
<wire x1="0.725" y1="-0.35" x2="-0.725" y2="-0.35" width="0.1016" layer="51"/>
<smd name="1" x="-0.875" y="0" dx="1.05" dy="1.08" layer="1"/>
<smd name="2" x="0.875" y="0" dx="1.05" dy="1.08" layer="1"/>
<text x="-0.8" y="0.65" size="1.016" layer="25">&gt;NAME</text>
<text x="-0.8" y="-1.65" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8" y1="-0.4" x2="-0.45" y2="0.4" layer="51"/>
<rectangle x1="0.45" y1="-0.4" x2="0.8" y2="0.4" layer="51"/>
</package>
<package name="C0805K">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 0805 Reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 2012</description>
<wire x1="-0.925" y1="0.6" x2="0.925" y2="0.6" width="0.1016" layer="51"/>
<wire x1="0.925" y1="-0.6" x2="-0.925" y2="-0.6" width="0.1016" layer="51"/>
<smd name="1" x="-1" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="1" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-1" y="0.875" size="1.016" layer="25">&gt;NAME</text>
<text x="-1" y="-1.9" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1" y1="-0.65" x2="-0.5" y2="0.65" layer="51"/>
<rectangle x1="0.5" y1="-0.65" x2="1" y2="0.65" layer="51"/>
</package>
<package name="C1206K">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 1206 Reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 3216</description>
<wire x1="-1.525" y1="0.75" x2="1.525" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.525" y1="-0.75" x2="-1.525" y2="-0.75" width="0.1016" layer="51"/>
<smd name="1" x="-1.5" y="0" dx="1.5" dy="2" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.5" dy="2" layer="1"/>
<text x="-1.6" y="1.1" size="1.016" layer="25">&gt;NAME</text>
<text x="-1.6" y="-2.1" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6" y1="-0.8" x2="-1.1" y2="0.8" layer="51"/>
<rectangle x1="1.1" y1="-0.8" x2="1.6" y2="0.8" layer="51"/>
</package>
<package name="C1210K">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 1210 Reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 3225</description>
<wire x1="-1.525" y1="1.175" x2="1.525" y2="1.175" width="0.1016" layer="51"/>
<wire x1="1.525" y1="-1.175" x2="-1.525" y2="-1.175" width="0.1016" layer="51"/>
<smd name="1" x="-1.5" y="0" dx="1.5" dy="2.9" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.5" dy="2.9" layer="1"/>
<text x="-1.6" y="1.55" size="1.016" layer="25">&gt;NAME</text>
<text x="-1.6" y="-2.575" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6" y1="-1.25" x2="-1.1" y2="1.25" layer="51"/>
<rectangle x1="1.1" y1="-1.25" x2="1.6" y2="1.25" layer="51"/>
</package>
<package name="C1812K">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 1812 Reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 4532</description>
<wire x1="-2.175" y1="1.525" x2="2.175" y2="1.525" width="0.1016" layer="51"/>
<wire x1="2.175" y1="-1.525" x2="-2.175" y2="-1.525" width="0.1016" layer="51"/>
<smd name="1" x="-2.05" y="0" dx="1.8" dy="3.7" layer="1"/>
<smd name="2" x="2.05" y="0" dx="1.8" dy="3.7" layer="1"/>
<text x="-2.25" y="1.95" size="1.016" layer="25">&gt;NAME</text>
<text x="-2.25" y="-2.975" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-2.25" y1="-1.6" x2="-1.65" y2="1.6" layer="51"/>
<rectangle x1="1.65" y1="-1.6" x2="2.25" y2="1.6" layer="51"/>
</package>
<package name="C1825K">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 1825 Reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 4564</description>
<wire x1="-1.525" y1="3.125" x2="1.525" y2="3.125" width="0.1016" layer="51"/>
<wire x1="1.525" y1="-3.125" x2="-1.525" y2="-3.125" width="0.1016" layer="51"/>
<smd name="1" x="-1.5" y="0" dx="1.8" dy="6.9" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.8" dy="6.9" layer="1"/>
<text x="-1.6" y="3.55" size="1.016" layer="25">&gt;NAME</text>
<text x="-1.6" y="-4.625" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6" y1="-3.2" x2="-1.1" y2="3.2" layer="51"/>
<rectangle x1="1.1" y1="-3.2" x2="1.6" y2="3.2" layer="51"/>
</package>
<package name="C2220K">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 2220 Reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 5650</description>
<wire x1="-2.725" y1="2.425" x2="2.725" y2="2.425" width="0.1016" layer="51"/>
<wire x1="2.725" y1="-2.425" x2="-2.725" y2="-2.425" width="0.1016" layer="51"/>
<smd name="1" x="-2.55" y="0" dx="1.85" dy="5.5" layer="1"/>
<smd name="2" x="2.55" y="0" dx="1.85" dy="5.5" layer="1"/>
<text x="-2.8" y="2.95" size="1.016" layer="25">&gt;NAME</text>
<text x="-2.8" y="-3.975" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-2.8" y1="-2.5" x2="-2.2" y2="2.5" layer="51"/>
<rectangle x1="2.2" y1="-2.5" x2="2.8" y2="2.5" layer="51"/>
</package>
<package name="C2225K">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 2225 Reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 5664</description>
<wire x1="-2.725" y1="3.075" x2="2.725" y2="3.075" width="0.1016" layer="51"/>
<wire x1="2.725" y1="-3.075" x2="-2.725" y2="-3.075" width="0.1016" layer="51"/>
<smd name="1" x="-2.55" y="0" dx="1.85" dy="6.8" layer="1"/>
<smd name="2" x="2.55" y="0" dx="1.85" dy="6.8" layer="1"/>
<text x="-2.8" y="3.6" size="1.016" layer="25">&gt;NAME</text>
<text x="-2.8" y="-4.575" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-2.8" y1="-3.15" x2="-2.2" y2="3.15" layer="51"/>
<rectangle x1="2.2" y1="-3.15" x2="2.8" y2="3.15" layer="51"/>
</package>
<package name="RTRIM3304W">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;
0,1W 25%</description>
<wire x1="-1.9" y1="1.9" x2="1.9" y2="1.9" width="0.254" layer="51"/>
<wire x1="1.9" y1="1.9" x2="1.9" y2="-1.1" width="0.254" layer="21"/>
<wire x1="1.9" y1="-1.1" x2="1.9" y2="-1.9" width="0.254" layer="51"/>
<wire x1="1.9" y1="-1.9" x2="0.65" y2="-1.9" width="0.254" layer="51"/>
<wire x1="0.65" y1="-1.9" x2="0.65" y2="-1.1" width="0.254" layer="51"/>
<wire x1="0.65" y1="-1.1" x2="-0.65" y2="-1.1" width="0.254" layer="21"/>
<wire x1="-0.65" y1="-1.1" x2="-0.65" y2="-1.9" width="0.254" layer="51"/>
<wire x1="-0.65" y1="-1.9" x2="-1.9" y2="-1.9" width="0.254" layer="51"/>
<wire x1="-1.9" y1="-1.9" x2="-1.9" y2="-1.1" width="0.254" layer="51"/>
<wire x1="-1.9" y1="-1.1" x2="-1.9" y2="1.9" width="0.254" layer="21"/>
<circle x="0" y="0.4" radius="1.2" width="0.1016" layer="51"/>
<smd name="1" x="-1.25" y="-1.9" dx="1.4" dy="1.4" layer="1"/>
<smd name="3" x="1.25" y="-1.9" dx="1.4" dy="1.4" layer="1"/>
<smd name="2" x="0" y="1.6" dx="2.5" dy="1.4" layer="1"/>
<text x="-2.29" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.545" y="-2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1" y1="0.2" x2="1" y2="0.6" layer="51"/>
<rectangle x1="-0.2" y1="-0.6" x2="0.2" y2="1.4" layer="51"/>
</package>
<package name="RTRIM3165W">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; MEGGIT</description>
<wire x1="-1.125" y1="1.75" x2="-1.875" y2="1" width="0.254" layer="21"/>
<wire x1="-1.875" y1="1" x2="-1.875" y2="-1.375" width="0.254" layer="21"/>
<wire x1="-1.875" y1="-1.375" x2="-1.875" y2="-2.25" width="0.254" layer="51"/>
<wire x1="-1.875" y1="-2.25" x2="-1.625" y2="-2.5" width="0.254" layer="51"/>
<wire x1="-1.625" y1="-2.5" x2="-1.125" y2="-2.5" width="0.254" layer="51"/>
<wire x1="-1.125" y1="-2.5" x2="-1.125" y2="-1.625" width="0.254" layer="51"/>
<wire x1="-1.125" y1="-1.625" x2="-0.25" y2="-1.625" width="0.254" layer="51"/>
<wire x1="-0.25" y1="-1.625" x2="-0.25" y2="-2.5" width="0.254" layer="51"/>
<wire x1="-0.25" y1="-2.5" x2="0.25" y2="-2.5" width="0.254" layer="51"/>
<wire x1="0.25" y1="-2.5" x2="0.25" y2="-1.625" width="0.254" layer="51"/>
<wire x1="0.25" y1="-1.625" x2="1.125" y2="-1.625" width="0.254" layer="51"/>
<wire x1="1.125" y1="-1.625" x2="1.125" y2="-2.5" width="0.254" layer="51"/>
<wire x1="1.125" y1="-2.5" x2="1.625" y2="-2.5" width="0.254" layer="51"/>
<wire x1="1.625" y1="-2.5" x2="1.875" y2="-2.25" width="0.254" layer="51"/>
<wire x1="1.875" y1="-2.25" x2="1.875" y2="-1.625" width="0.254" layer="51"/>
<wire x1="1.875" y1="-1.625" x2="1.875" y2="1" width="0.254" layer="21"/>
<wire x1="1.875" y1="1" x2="1.125" y2="1.75" width="0.254" layer="21"/>
<wire x1="1.125" y1="1.75" x2="-1.125" y2="1.75" width="0.254" layer="51"/>
<circle x="0" y="0" radius="1.3806" width="0.1016" layer="21"/>
<smd name="1" x="-1.35" y="-2" dx="0.8" dy="1.6" layer="1"/>
<smd name="2" x="0" y="-2" dx="0.8" dy="1.6" layer="1"/>
<smd name="3" x="1.35" y="-2" dx="0.8" dy="1.6" layer="1"/>
<smd name="4" x="0" y="1.8" dx="2" dy="1" layer="1"/>
<text x="-2.54" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.25" y1="-1.125" x2="0.25" y2="1.125" layer="21"/>
<rectangle x1="-1.125" y1="-0.25" x2="1.125" y2="0.25" layer="21"/>
<hole x="0" y="0" drill="2"/>
</package>
<package name="RTRIM3202">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; MEGGIT</description>
<wire x1="-1.6" y1="1.4" x2="-1.6" y2="-1.4" width="0.254" layer="21"/>
<wire x1="-1.6" y1="-1.4" x2="1.6" y2="-1.4" width="0.254" layer="51"/>
<wire x1="1.6" y1="-1.4" x2="1.6" y2="1.4" width="0.254" layer="21"/>
<wire x1="1.6" y1="1.4" x2="-1.6" y2="1.4" width="0.254" layer="51"/>
<wire x1="-1.6" y1="1.4" x2="-1" y2="1.4" width="0.254" layer="21"/>
<wire x1="1" y1="1.4" x2="1.6" y2="1.4" width="0.254" layer="21"/>
<wire x1="-0.3" y1="-1.4" x2="0.3" y2="-1.4" width="0.254" layer="21"/>
<circle x="0" y="0" radius="1" width="0.1016" layer="51"/>
<smd name="2" x="0" y="1.6" dx="1.6" dy="1.4" layer="1"/>
<smd name="1" x="-0.95" y="-1.75" dx="0.9" dy="1.3" layer="1"/>
<smd name="3" x="0.95" y="-1.75" dx="0.9" dy="1.3" layer="1"/>
<text x="-1.99" y="-2.39" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.26" y="-2.39" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.2" y1="-1" x2="0.2" y2="1" layer="51"/>
</package>
<package name="RTRIM3314J">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;
0,25W, 20%</description>
<wire x1="2.15" y1="2.15" x2="2.15" y2="-2.15" width="0.254" layer="51"/>
<wire x1="2.15" y1="-2.15" x2="-2.15" y2="-2.15" width="0.254" layer="51"/>
<wire x1="-2.15" y1="-2.15" x2="-2.15" y2="2.15" width="0.254" layer="51"/>
<wire x1="-2.15" y1="2.15" x2="2.15" y2="2.15" width="0.254" layer="51"/>
<wire x1="2.15" y1="-0.8" x2="2.15" y2="2.15" width="0.254" layer="21"/>
<wire x1="2.15" y1="2.15" x2="1.2" y2="2.15" width="0.254" layer="21"/>
<wire x1="-1.2" y1="2.15" x2="-2.15" y2="2.15" width="0.254" layer="21"/>
<wire x1="-2.15" y1="2.15" x2="-2.15" y2="-0.8" width="0.254" layer="21"/>
<wire x1="0.95" y1="-2.15" x2="-0.95" y2="-2.15" width="0.254" layer="21"/>
<wire x1="-0.5" y1="-0.9" x2="0.9" y2="0.5" width="0.1016" layer="21"/>
<wire x1="-0.85" y1="-0.55" x2="0.55" y2="0.85" width="0.1016" layer="21"/>
<circle x="0" y="0" radius="1.1" width="0.1016" layer="21"/>
<smd name="3" x="1.8" y="-2" dx="1.3" dy="2" layer="1"/>
<smd name="1" x="-1.8" y="-2" dx="1.3" dy="2" layer="1"/>
<smd name="2" x="0" y="2" dx="2" dy="2" layer="1"/>
<text x="-2.64" y="-2.99" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.01" y="-2.99" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="RTRIM4G/J">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; VISHAY</description>
<wire x1="-2.4" y1="2.4" x2="-2.4" y2="-2.4" width="0.254" layer="51"/>
<wire x1="-2.4" y1="-2.4" x2="2.4" y2="-2.4" width="0.254" layer="51"/>
<wire x1="2.4" y1="-2.4" x2="2.4" y2="2.4" width="0.254" layer="51"/>
<wire x1="2.4" y1="2.4" x2="-2.4" y2="2.4" width="0.254" layer="51"/>
<wire x1="-2.1" y1="-2.4" x2="-2.4" y2="-2.4" width="0.254" layer="21"/>
<wire x1="-2.4" y1="-2.4" x2="-2.4" y2="2.4" width="0.254" layer="21"/>
<wire x1="-2.4" y1="2.4" x2="-1.25" y2="2.4" width="0.254" layer="21"/>
<wire x1="2" y1="-2.4" x2="2.4" y2="-2.4" width="0.254" layer="21"/>
<wire x1="2.4" y1="-2.4" x2="2.4" y2="2.4" width="0.254" layer="21"/>
<wire x1="2.4" y1="2.4" x2="1.25" y2="2.4" width="0.254" layer="21"/>
<wire x1="-0.25" y1="-2.4" x2="0.25" y2="-2.4" width="0.254" layer="21"/>
<circle x="0" y="0" radius="1.85" width="0.1016" layer="21"/>
<smd name="1" x="-1.15" y="-2.75" dx="1.3" dy="1.3" layer="1"/>
<smd name="3" x="1.15" y="-2.75" dx="1.3" dy="1.3" layer="1"/>
<smd name="2" x="0" y="2.75" dx="2" dy="1.3" layer="1"/>
<text x="-2.875" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.045" y="-2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.3" y1="-0.2" x2="1.35" y2="0.2" layer="21"/>
<rectangle x1="-0.2" y1="-1.35" x2="0.2" y2="1.3" layer="21"/>
</package>
<package name="RTRIMCVR42A">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; AVX</description>
<wire x1="-1.9" y1="1.9" x2="-1.9" y2="-1.9" width="0.254" layer="51"/>
<wire x1="-1.9" y1="-1.9" x2="1.9" y2="-1.9" width="0.254" layer="51"/>
<wire x1="1.9" y1="-1.9" x2="1.9" y2="1.9" width="0.254" layer="51"/>
<wire x1="1.9" y1="1.9" x2="-1.9" y2="1.9" width="0.254" layer="51"/>
<wire x1="-0.6" y1="-1.1" x2="0.6" y2="-1.1" width="0.8128" layer="51" curve="-302.779081" cap="flat"/>
<wire x1="-1.9" y1="-1.15" x2="-1.9" y2="1.9" width="0.254" layer="21"/>
<wire x1="-1.9" y1="1.9" x2="-1.35" y2="1.9" width="0.254" layer="21"/>
<wire x1="1.9" y1="-1.15" x2="1.9" y2="1.9" width="0.254" layer="21"/>
<wire x1="1.9" y1="1.9" x2="1.35" y2="1.9" width="0.254" layer="21"/>
<smd name="2" x="0" y="1.8" dx="2.3" dy="1.5" layer="1"/>
<smd name="1" x="-1.15" y="-2.05" dx="1.3" dy="1.4" layer="1"/>
<smd name="3" x="1.15" y="-2.05" dx="1.3" dy="1.4" layer="1"/>
<text x="-2.29" y="-2.69" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.51" y="-2.69" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.65" y1="-1.15" x2="0.65" y2="-0.75" layer="51"/>
<rectangle x1="-1.05" y1="-0.15" x2="1.05" y2="0.15" layer="21"/>
</package>
<package name="RTRIM3214W">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;
SMD Cermet trimmer</description>
<wire x1="-2.3" y1="-1.85" x2="-2.3" y2="1.85" width="0.254" layer="51"/>
<wire x1="-2.3" y1="1.85" x2="2.3" y2="1.85" width="0.254" layer="51"/>
<wire x1="2.3" y1="1.85" x2="2.3" y2="-1.85" width="0.254" layer="51"/>
<wire x1="2.3" y1="-1.85" x2="-2.3" y2="-1.85" width="0.254" layer="51"/>
<wire x1="-2.3" y1="-1.85" x2="-2.3" y2="1.85" width="0.254" layer="21"/>
<wire x1="-2.3" y1="1.85" x2="-1.3" y2="1.85" width="0.254" layer="21"/>
<wire x1="2.3" y1="-1.85" x2="2.3" y2="1.85" width="0.254" layer="21"/>
<wire x1="2.3" y1="1.85" x2="1.3" y2="1.85" width="0.254" layer="21"/>
<wire x1="-0.4" y1="-1.85" x2="0.4" y2="-1.85" width="0.254" layer="21"/>
<circle x="1.2" y="0.65" radius="0.7" width="0.1016" layer="51"/>
<smd name="1" x="-1.275" y="-1.45" dx="1.3" dy="1.6" layer="1"/>
<smd name="3" x="1.275" y="-1.45" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="0" y="1.45" dx="2" dy="1.6" layer="1"/>
<text x="-2.54" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="0.55" y1="0.55" x2="1.85" y2="0.75" layer="51"/>
<rectangle x1="-1.8" y1="-2.1" x2="-0.75" y2="-1.95" layer="51"/>
<rectangle x1="0.75" y1="-2.1" x2="1.8" y2="-1.95" layer="51"/>
<rectangle x1="-0.75" y1="1.95" x2="0.75" y2="2.1" layer="51"/>
</package>
<package name="RTRIM3224G">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;
Side Adjust</description>
<wire x1="2.25" y1="2.15" x2="2.25" y2="-2.15" width="0.254" layer="51"/>
<wire x1="2.25" y1="-2.15" x2="-2.25" y2="-2.15" width="0.254" layer="51"/>
<wire x1="-2.25" y1="-2.15" x2="-2.25" y2="2.15" width="0.254" layer="51"/>
<wire x1="-2.25" y1="2.15" x2="2.25" y2="2.15" width="0.254" layer="51"/>
<wire x1="-0.5" y1="2.05" x2="-0.5" y2="1.35" width="0.1016" layer="51"/>
<wire x1="-0.5" y1="1.35" x2="-1.9" y2="1.35" width="0.1016" layer="51"/>
<wire x1="-1.9" y1="1.35" x2="-1.9" y2="2.05" width="0.1016" layer="51"/>
<wire x1="-1.2" y1="2.15" x2="-2.25" y2="2.15" width="0.254" layer="21"/>
<wire x1="-2.25" y1="2.15" x2="-2.25" y2="-2.15" width="0.254" layer="21"/>
<wire x1="-2.25" y1="-2.15" x2="-2" y2="-2.15" width="0.254" layer="21"/>
<wire x1="-0.3" y1="-2.15" x2="0.3" y2="-2.15" width="0.254" layer="21"/>
<wire x1="1.2" y1="2.15" x2="2.25" y2="2.15" width="0.254" layer="21"/>
<wire x1="2.25" y1="2.15" x2="2.25" y2="-2.15" width="0.254" layer="21"/>
<wire x1="2.25" y1="-2.15" x2="2" y2="-2.15" width="0.254" layer="21"/>
<circle x="-1.2" y="1.7" radius="0.2" width="0" layer="21"/>
<smd name="1" x="-1.15" y="-2.6" dx="1.27" dy="1.27" layer="1"/>
<smd name="3" x="1.15" y="-2.6" dx="1.27" dy="1.27" layer="1"/>
<smd name="2" x="0" y="2.6" dx="2" dy="1.27" layer="1"/>
<text x="-2.49" y="-3.205" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-3.205" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.65" y1="2.25" x2="0.65" y2="3" layer="51"/>
<rectangle x1="-1.6" y1="-3" x2="-0.7" y2="-2.25" layer="51"/>
<rectangle x1="0.7" y1="-3" x2="1.6" y2="-2.25" layer="51"/>
</package>
<package name="RTRIM3224J">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;
Side Adjust</description>
<wire x1="2.4" y1="2.3" x2="2.4" y2="-2.3" width="0.254" layer="51"/>
<wire x1="2.4" y1="-2.3" x2="-2.4" y2="-2.3" width="0.254" layer="51"/>
<wire x1="-2.4" y1="-2.3" x2="-2.4" y2="2.3" width="0.254" layer="51"/>
<wire x1="-2.4" y1="2.3" x2="2.4" y2="2.3" width="0.254" layer="51"/>
<wire x1="-0.5" y1="2.2" x2="-0.5" y2="1.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="-0.5" y1="1.6" x2="-1.9" y2="1.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="-1.9" y1="1.6" x2="-1.9" y2="2.2" width="0.1016" layer="51" style="shortdash"/>
<wire x1="1.4" y1="2.3" x2="2.4" y2="2.3" width="0.254" layer="21" style="shortdash"/>
<wire x1="2.4" y1="2.3" x2="2.4" y2="-2.3" width="0.254" layer="21"/>
<wire x1="2.4" y1="-2.3" x2="2.2" y2="-2.3" width="0.254" layer="21"/>
<wire x1="-2.1" y1="-2.3" x2="-2.4" y2="-2.3" width="0.254" layer="21"/>
<wire x1="-2.4" y1="-2.3" x2="-2.4" y2="2.3" width="0.254" layer="21"/>
<wire x1="-2.4" y1="2.3" x2="-1.4" y2="2.3" width="0.254" layer="21"/>
<wire x1="0.2" y1="-2.3" x2="-0.2" y2="-2.3" width="0.254" layer="21"/>
<circle x="-1.2" y="1.9" radius="0.1414" width="0" layer="21"/>
<smd name="3" x="1.15" y="-2" dx="1.3" dy="2" layer="1"/>
<smd name="1" x="-1.15" y="-2" dx="1.3" dy="2" layer="1"/>
<smd name="2" x="0" y="2" dx="2" dy="2" layer="1"/>
<text x="2.74" y="2.405" size="1.27" layer="25" rot="R270">&gt;NAME</text>
<text x="-4.01" y="2.405" size="1.27" layer="27" rot="R270">&gt;VALUE</text>
<rectangle x1="-0.6" y1="2.4" x2="0.6" y2="2.5" layer="51"/>
<rectangle x1="0.7" y1="-2.5" x2="1.6" y2="-2.4" layer="51"/>
<rectangle x1="-1.6" y1="-2.5" x2="-0.7" y2="-2.4" layer="51"/>
</package>
<package name="RTRIM3224X">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;
Top Adjust</description>
<wire x1="-2.25" y1="-1.6" x2="-2.25" y2="1.6" width="0.254" layer="51"/>
<wire x1="-2.25" y1="1.6" x2="2.25" y2="1.6" width="0.254" layer="51"/>
<wire x1="2.25" y1="1.6" x2="2.25" y2="-1.6" width="0.254" layer="51"/>
<wire x1="2.25" y1="-1.6" x2="-2.25" y2="-1.6" width="0.254" layer="51"/>
<wire x1="-2.25" y1="-1.6" x2="-2.25" y2="1.6" width="0.254" layer="21"/>
<wire x1="-2.25" y1="1.6" x2="-1.25" y2="1.6" width="0.254" layer="21"/>
<wire x1="1.25" y1="1.6" x2="2.25" y2="1.6" width="0.254" layer="21"/>
<wire x1="2.25" y1="1.6" x2="2.25" y2="-1.6" width="0.254" layer="21"/>
<wire x1="-0.4" y1="-1.6" x2="0.4" y2="-1.6" width="0.254" layer="21"/>
<circle x="1.2" y="0.6" radius="0.5" width="0.1016" layer="21"/>
<smd name="1" x="-1.27" y="-2.54" dx="1.32" dy="1.9" layer="1"/>
<smd name="3" x="1.27" y="-2.54" dx="1.32" dy="1.9" layer="1"/>
<smd name="2" x="0" y="2.54" dx="2" dy="2" layer="1"/>
<text x="-2.64" y="-3.455" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.01" y="-3.455" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.7" y1="-2.85" x2="-0.9" y2="-1.7" layer="51"/>
<rectangle x1="0.9" y1="-2.85" x2="1.7" y2="-1.7" layer="51"/>
<rectangle x1="-0.65" y1="1.7" x2="0.65" y2="2.85" layer="51"/>
<rectangle x1="0.75" y1="0.5" x2="1.65" y2="0.7" layer="21"/>
</package>
<package name="RTRIM3103">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; MEGGIT</description>
<wire x1="-1.45" y1="1.75" x2="-1.45" y2="-1.65" width="0.254" layer="51"/>
<wire x1="-1.45" y1="-1.65" x2="1.45" y2="-1.65" width="0.254" layer="51"/>
<wire x1="1.45" y1="-1.65" x2="1.45" y2="1.75" width="0.254" layer="51"/>
<wire x1="1.45" y1="1.75" x2="-1.45" y2="1.75" width="0.254" layer="51"/>
<wire x1="-1.45" y1="-0.4" x2="-1.45" y2="1.75" width="0.254" layer="21"/>
<wire x1="-1.45" y1="1.75" x2="-0.85" y2="1.75" width="0.254" layer="21"/>
<wire x1="1.45" y1="-0.4" x2="1.45" y2="1.75" width="0.254" layer="21"/>
<wire x1="1.45" y1="1.75" x2="0.85" y2="1.75" width="0.254" layer="21"/>
<circle x="0" y="0" radius="1.15" width="0.1016" layer="51"/>
<smd name="2" x="0" y="1.3" dx="1.3" dy="1.3" layer="1"/>
<smd name="1" x="-1" y="-1.225" dx="1.2" dy="1.25" layer="1"/>
<smd name="3" x="1" y="-1.225" dx="1.2" dy="1.25" layer="1"/>
<text x="-1.905" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.175" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.15" y1="-0.15" x2="1.15" y2="0.15" layer="51"/>
<rectangle x1="-0.15" y1="-1.15" x2="0.15" y2="1.15" layer="51"/>
</package>
<package name="RTRIM5W">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; Spectrol&lt;p&gt;
abgedichtet nach &lt;b&gt;IP67&lt;/b&gt;</description>
<wire x1="2.25" y1="1.6" x2="-2.25" y2="1.6" width="0.254" layer="51"/>
<wire x1="-2.25" y1="1.6" x2="-2.25" y2="-1.6" width="0.254" layer="51"/>
<wire x1="-2.25" y1="-1.6" x2="2.25" y2="-1.6" width="0.254" layer="51"/>
<wire x1="2.25" y1="-1.6" x2="2.25" y2="1.6" width="0.254" layer="51"/>
<wire x1="1.25" y1="1.6" x2="2.25" y2="1.6" width="0.254" layer="21"/>
<wire x1="2.25" y1="1.6" x2="2.25" y2="-1.6" width="0.254" layer="21"/>
<wire x1="-1.25" y1="1.6" x2="-2.25" y2="1.6" width="0.254" layer="21"/>
<wire x1="-2.25" y1="1.6" x2="-2.25" y2="-1.6" width="0.254" layer="21"/>
<wire x1="-0.3" y1="-1.6" x2="0.3" y2="-1.6" width="0.254" layer="21"/>
<circle x="1.55" y="0.95" radius="0.4" width="0.1016" layer="21"/>
<smd name="1" x="-1.25" y="-1.45" dx="1.3" dy="1.6" layer="1"/>
<smd name="3" x="1.25" y="-1.45" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="0" y="1.45" dx="2" dy="1.6" layer="1"/>
<text x="-2.625" y="-2.19" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.845" y="-2.19" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="1.15" y1="0.85" x2="1.95" y2="1.05" layer="21"/>
</package>
<package name="RTRIM5X">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; Spectrol&lt;p&gt;
abgedichtet nach &lt;b&gt;IP67&lt;/b&gt;</description>
<wire x1="2.35" y1="2.35" x2="-2.35" y2="2.35" width="0.254" layer="51"/>
<wire x1="-2.35" y1="2.35" x2="-2.35" y2="-2.35" width="0.254" layer="51"/>
<wire x1="-2.35" y1="-2.35" x2="2.35" y2="-2.35" width="0.254" layer="51"/>
<wire x1="2.35" y1="-2.35" x2="2.35" y2="2.35" width="0.254" layer="51"/>
<wire x1="1.25" y1="2.35" x2="2.35" y2="2.35" width="0.254" layer="21"/>
<wire x1="2.35" y1="2.35" x2="2.35" y2="-2.35" width="0.254" layer="21"/>
<wire x1="2.35" y1="-2.35" x2="2.05" y2="-2.35" width="0.254" layer="21"/>
<wire x1="-2.05" y1="-2.35" x2="-2.35" y2="-2.35" width="0.254" layer="21"/>
<wire x1="-2.35" y1="-2.35" x2="-2.35" y2="2.35" width="0.254" layer="21"/>
<wire x1="-2.35" y1="2.35" x2="-1.25" y2="2.35" width="0.254" layer="21"/>
<wire x1="0.25" y1="-2.35" x2="-0.25" y2="-2.35" width="0.254" layer="21"/>
<wire x1="-1.1" y1="2.25" x2="-1.1" y2="1.6" width="0.1016" layer="21"/>
<wire x1="-1.1" y1="1.6" x2="-2.05" y2="1.6" width="0.1016" layer="21"/>
<wire x1="-2.05" y1="1.6" x2="-2.05" y2="2.25" width="0.1016" layer="21"/>
<smd name="1" x="-1.15" y="-2" dx="1.3" dy="2" layer="1"/>
<smd name="3" x="1.15" y="-2" dx="1.3" dy="2" layer="1"/>
<smd name="2" x="0" y="2" dx="2" dy="2" layer="1"/>
<text x="-3.175" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.445" y="-2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="RTRIMTSM53YJ">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; VISHAY&lt;p&gt;
abgedichtet nach &lt;b&gt;IP67&lt;/b&gt;</description>
<wire x1="-2.25" y1="1.6" x2="-2.25" y2="-1.6" width="0.254" layer="51"/>
<wire x1="-2.25" y1="-1.6" x2="2.25" y2="-1.6" width="0.254" layer="51"/>
<wire x1="2.25" y1="-1.6" x2="2.25" y2="1.6" width="0.254" layer="51"/>
<wire x1="2.25" y1="1.6" x2="-2.25" y2="1.6" width="0.254" layer="51"/>
<wire x1="-2.25" y1="-1.6" x2="-2.25" y2="1.6" width="0.254" layer="21"/>
<wire x1="-2.25" y1="1.6" x2="-1.15" y2="1.6" width="0.254" layer="21"/>
<wire x1="2.25" y1="-1.6" x2="2.25" y2="1.6" width="0.254" layer="21"/>
<wire x1="2.25" y1="1.6" x2="1.15" y2="1.6" width="0.254" layer="21"/>
<wire x1="-0.4" y1="-1.6" x2="0.4" y2="-1.6" width="0.254" layer="21"/>
<circle x="1.3" y="0.65" radius="0.7" width="0.1016" layer="51"/>
<smd name="1" x="-1.25" y="-1.45" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="1.25" y="-1.45" dx="1.3" dy="1.6" layer="1"/>
<smd name="3" x="0" y="1.45" dx="1.8" dy="1.6" layer="1"/>
<text x="-2.54" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.3" y1="1.7" x2="0.3" y2="1.9" layer="51"/>
<rectangle x1="-1.6" y1="-1.9" x2="-1" y2="-1.7" layer="51"/>
<rectangle x1="0.95" y1="-1.9" x2="1.55" y2="-1.7" layer="51"/>
<rectangle x1="1.2" y1="0" x2="1.4" y2="1.3" layer="21"/>
</package>
<package name="RTRIMTSM53YL">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; VISHAY&lt;p&gt;
abgedichtet nach &lt;b&gt;IP67&lt;/b&gt;</description>
<wire x1="-2.25" y1="1.6" x2="-2.25" y2="-1.6" width="0.254" layer="51"/>
<wire x1="-2.25" y1="-1.6" x2="2.25" y2="-1.6" width="0.254" layer="51"/>
<wire x1="2.25" y1="-1.6" x2="2.25" y2="1.6" width="0.254" layer="51"/>
<wire x1="2.25" y1="1.6" x2="-2.25" y2="1.6" width="0.254" layer="51"/>
<wire x1="-2.25" y1="-1.6" x2="-2.25" y2="1.6" width="0.254" layer="21"/>
<wire x1="-2.25" y1="1.6" x2="-1.15" y2="1.6" width="0.254" layer="21"/>
<wire x1="2.25" y1="-1.6" x2="2.25" y2="1.6" width="0.254" layer="21"/>
<wire x1="2.25" y1="1.6" x2="1.15" y2="1.6" width="0.254" layer="21"/>
<wire x1="-0.35" y1="-1.6" x2="0.35" y2="-1.6" width="0.254" layer="21"/>
<circle x="1.3" y="0.65" radius="0.7" width="0.1016" layer="51"/>
<smd name="1" x="-1.25" y="-1.9" dx="1.3" dy="2" layer="1"/>
<smd name="3" x="1.25" y="-1.9" dx="1.3" dy="2" layer="1"/>
<smd name="2" x="0" y="1.9" dx="1.8" dy="2" layer="1"/>
<text x="-2.59" y="-2.555" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.86" y="-2.555" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="1.2" y1="0" x2="1.4" y2="1.3" layer="21"/>
<rectangle x1="-0.3" y1="1.7" x2="0.3" y2="2.55" layer="51"/>
<rectangle x1="-1.55" y1="-2.55" x2="-0.95" y2="-1.7" layer="51"/>
<rectangle x1="0.95" y1="-2.55" x2="1.55" y2="-1.7" layer="51"/>
</package>
<package name="RTRIMTS63X">
<description>&lt;b&gt;Trimm resistror&lt;/b&gt; VISHAY&lt;p&gt;
seales container, solder immerson IP67</description>
<wire x1="3.3" y1="2.4" x2="-3.3" y2="2.4" width="0.254" layer="51"/>
<wire x1="-3.3" y1="2.4" x2="-3.3" y2="-2.4" width="0.254" layer="51"/>
<wire x1="-3.3" y1="-2.4" x2="3.3" y2="-2.4" width="0.254" layer="51"/>
<wire x1="3.3" y1="-2.4" x2="3.3" y2="2.4" width="0.254" layer="51"/>
<wire x1="0.8" y1="2.4" x2="3.3" y2="2.4" width="0.254" layer="21"/>
<wire x1="3.3" y1="2.4" x2="3.3" y2="-2.4" width="0.254" layer="21"/>
<wire x1="-0.8" y1="2.4" x2="-3.3" y2="2.4" width="0.254" layer="21"/>
<wire x1="-3.3" y1="2.4" x2="-3.3" y2="-2.4" width="0.254" layer="21"/>
<wire x1="-1.75" y1="-2.4" x2="1.75" y2="-2.4" width="0.254" layer="21"/>
<wire x1="4.3" y1="2.25" x2="3.4" y2="2.25" width="0.1016" layer="21"/>
<wire x1="4.3" y1="0.85" x2="4.3" y2="1.35" width="0.1016" layer="21"/>
<wire x1="4.3" y1="1.35" x2="4" y2="1.35" width="0.1016" layer="21"/>
<wire x1="4" y1="1.35" x2="4" y2="1.75" width="0.1016" layer="21"/>
<wire x1="4" y1="1.75" x2="4.3" y2="1.75" width="0.1016" layer="21"/>
<wire x1="4.3" y1="1.75" x2="4.3" y2="2.25" width="0.1016" layer="21"/>
<wire x1="4.3" y1="0.85" x2="3.4" y2="0.85" width="0.1016" layer="21"/>
<smd name="1" x="-2.55" y="-2.25" dx="1" dy="3" layer="1"/>
<smd name="2" x="0" y="2.25" dx="1" dy="3" layer="1"/>
<smd name="3" x="2.55" y="-2.25" dx="1" dy="3" layer="1"/>
<text x="-3.69" y="-3.34" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="6.06" y="-3.34" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.25" y1="2.5" x2="0.25" y2="3.35" layer="51"/>
<rectangle x1="2.3" y1="-3.35" x2="2.8" y2="-2.5" layer="51"/>
<rectangle x1="-2.8" y1="-3.35" x2="-2.3" y2="-2.5" layer="51"/>
</package>
<package name="RTRIMTS63Y">
<description>&lt;b&gt;Trimm resistror&lt;/b&gt; VISHAY&lt;p&gt;
seales container, solder immerson IP67</description>
<wire x1="3.3" y1="2.35" x2="-3.3" y2="2.35" width="0.254" layer="51"/>
<wire x1="-3.3" y1="2.35" x2="-3.3" y2="-2.35" width="0.254" layer="51"/>
<wire x1="-3.3" y1="-2.35" x2="3.3" y2="-2.35" width="0.254" layer="51"/>
<wire x1="3.3" y1="-2.35" x2="3.3" y2="2.35" width="0.254" layer="51"/>
<wire x1="0.75" y1="2.35" x2="3.3" y2="2.35" width="0.254" layer="21"/>
<wire x1="3.3" y1="2.35" x2="3.3" y2="-2.35" width="0.254" layer="21"/>
<wire x1="1.75" y1="-2.35" x2="-1.75" y2="-2.35" width="0.254" layer="21"/>
<wire x1="-3.3" y1="-2.35" x2="-3.3" y2="2.35" width="0.254" layer="21"/>
<wire x1="-3.3" y1="2.35" x2="-0.75" y2="2.35" width="0.254" layer="21"/>
<circle x="-2.15" y="1.5" radius="0.6" width="0.1016" layer="21"/>
<smd name="1" x="-2.55" y="-2.25" dx="1" dy="3" layer="1"/>
<smd name="2" x="0" y="2.25" dx="1" dy="3" layer="1"/>
<smd name="3" x="2.55" y="-2.25" dx="1" dy="3" layer="1"/>
<text x="-3.74" y="-3.69" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="5.21" y="-3.69" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.7" y1="1.4" x2="-1.6" y2="1.6" layer="21"/>
<rectangle x1="-0.3" y1="2.45" x2="0.3" y2="3" layer="51"/>
<rectangle x1="-2.85" y1="-3" x2="-2.25" y2="-2.45" layer="51"/>
<rectangle x1="2.25" y1="-3" x2="2.85" y2="-2.45" layer="51"/>
</package>
<package name="RTRIMTS63Z">
<description>&lt;b&gt;Trimm resistror&lt;/b&gt; VISHAY&lt;p&gt;
seales container, solder immerson IP67</description>
<wire x1="-3.3" y1="3.3" x2="-3.3" y2="-3.3" width="0.254" layer="51"/>
<wire x1="-3.3" y1="-3.3" x2="3.3" y2="-3.3" width="0.254" layer="51"/>
<wire x1="3.3" y1="-3.3" x2="3.3" y2="3.3" width="0.254" layer="51"/>
<wire x1="3.3" y1="3.3" x2="-3.3" y2="3.3" width="0.254" layer="51"/>
<wire x1="-0.75" y1="3.3" x2="-3.3" y2="3.3" width="0.254" layer="21"/>
<wire x1="-3.3" y1="3.3" x2="-3.3" y2="-3.3" width="0.254" layer="21"/>
<wire x1="-1.75" y1="-3.3" x2="1.75" y2="-3.3" width="0.254" layer="21"/>
<wire x1="3.3" y1="-3.3" x2="3.3" y2="3.3" width="0.254" layer="21"/>
<wire x1="3.3" y1="3.3" x2="0.75" y2="3.3" width="0.254" layer="21"/>
<wire x1="-2.95" y1="3.45" x2="-2.95" y2="4.1" width="0.1016" layer="21"/>
<wire x1="-2.95" y1="4.1" x2="-2.4" y2="4.1" width="0.1016" layer="21"/>
<wire x1="-2.4" y1="4.1" x2="-2.4" y2="3.85" width="0.1016" layer="21"/>
<wire x1="-2.4" y1="3.85" x2="-1.8" y2="3.85" width="0.1016" layer="21"/>
<wire x1="-1.8" y1="3.85" x2="-1.8" y2="4.1" width="0.1016" layer="21"/>
<wire x1="-1.8" y1="4.1" x2="-1.25" y2="4.1" width="0.1016" layer="21"/>
<wire x1="-1.25" y1="4.1" x2="-1.25" y2="3.4" width="0.1016" layer="21"/>
<smd name="1" x="-2.55" y="-3.15" dx="1" dy="3" layer="1"/>
<smd name="2" x="0" y="3.15" dx="1" dy="3" layer="1"/>
<smd name="3" x="2.55" y="-3.15" dx="1" dy="3" layer="1"/>
<text x="-3.84" y="-3.44" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="5.16" y="-3.44" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.3" y1="3.4" x2="0.3" y2="4.4" layer="51"/>
<rectangle x1="-2.85" y1="-4.4" x2="-2.25" y2="-3.4" layer="51"/>
<rectangle x1="2.25" y1="-4.4" x2="2.85" y2="-3.4" layer="51"/>
</package>
<package name="RTRIM3296P">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;</description>
<wire x1="4.15" y1="4.35" x2="-5.1" y2="4.35" width="0.254" layer="21"/>
<wire x1="-5.1" y1="4.35" x2="-5.1" y2="-4.35" width="0.254" layer="21"/>
<wire x1="-5.1" y1="-4.35" x2="4.15" y2="-4.35" width="0.254" layer="21"/>
<wire x1="4.15" y1="-4.35" x2="4.15" y2="4.35" width="0.254" layer="21"/>
<wire x1="4.25" y1="-1.45" x2="5.6" y2="-1.45" width="0.1524" layer="21"/>
<wire x1="5.6" y1="-1.45" x2="5.6" y2="-2.3" width="0.1524" layer="21"/>
<wire x1="5.6" y1="-2.3" x2="5.2" y2="-2.3" width="0.1524" layer="21"/>
<wire x1="5.2" y1="-2.3" x2="5.2" y2="-2.75" width="0.1524" layer="21"/>
<wire x1="5.2" y1="-2.75" x2="5.6" y2="-2.75" width="0.1524" layer="21"/>
<wire x1="5.6" y1="-2.75" x2="5.6" y2="-3.65" width="0.1524" layer="21"/>
<wire x1="5.6" y1="-3.65" x2="4.25" y2="-3.65" width="0.1524" layer="21"/>
<pad name="1" x="0" y="-2.54" drill="0.6096"/>
<pad name="2" x="2.54" y="0" drill="0.6096"/>
<pad name="3" x="0" y="2.54" drill="0.6096"/>
<text x="-5.48" y="-4.5" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="-2.17" y="-3.45" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="RTRIM3296W">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;</description>
<wire x1="-2.25" y1="4.35" x2="2.25" y2="4.35" width="0.254" layer="21"/>
<wire x1="2.25" y1="4.35" x2="2.25" y2="-4.35" width="0.254" layer="21"/>
<wire x1="2.25" y1="-4.35" x2="-2.25" y2="-4.35" width="0.254" layer="21"/>
<wire x1="-2.25" y1="-4.35" x2="-2.25" y2="4.35" width="0.254" layer="21"/>
<circle x="0" y="-2.55" radius="1.1011" width="0.1524" layer="21"/>
<pad name="1" x="0" y="-2.54" drill="0.6096"/>
<pad name="2" x="0" y="0" drill="0.6096"/>
<pad name="3" x="0" y="2.54" drill="0.6096"/>
<text x="-2.65" y="-4.5" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.95" y="-4.5" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.15" y1="-3.6" x2="0.15" y2="-1.5" layer="51"/>
</package>
<package name="RTRIM3296X">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;</description>
<wire x1="-2.25" y1="4.35" x2="2.25" y2="4.35" width="0.254" layer="21"/>
<wire x1="2.25" y1="4.35" x2="2.25" y2="-4.35" width="0.254" layer="21"/>
<wire x1="2.25" y1="-4.35" x2="-2.25" y2="-4.35" width="0.254" layer="21"/>
<wire x1="-2.25" y1="-4.35" x2="-2.25" y2="4.35" width="0.254" layer="21"/>
<wire x1="-1.1" y1="4.4" x2="-1.1" y2="5.6" width="0.1524" layer="21"/>
<wire x1="-1.1" y1="5.6" x2="-0.25" y2="5.6" width="0.1524" layer="21"/>
<wire x1="-0.25" y1="5.6" x2="-0.25" y2="5.1" width="0.1524" layer="21"/>
<wire x1="-0.25" y1="5.1" x2="0.25" y2="5.1" width="0.1524" layer="21"/>
<wire x1="0.25" y1="5.1" x2="0.25" y2="5.6" width="0.1524" layer="21"/>
<wire x1="0.25" y1="5.6" x2="1.1" y2="5.6" width="0.1524" layer="21"/>
<wire x1="1.1" y1="5.6" x2="1.1" y2="4.4" width="0.1524" layer="21"/>
<pad name="1" x="0" y="-2.54" drill="0.6096"/>
<pad name="2" x="0" y="0" drill="0.6096"/>
<pad name="3" x="0" y="2.54" drill="0.6096"/>
<text x="-2.65" y="-4.5" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.95" y="-4.5" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="RTRIM3296Y">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;</description>
<wire x1="-2.25" y1="4.35" x2="2.25" y2="4.35" width="0.254" layer="21"/>
<wire x1="2.25" y1="4.35" x2="2.25" y2="-4.35" width="0.254" layer="21"/>
<wire x1="2.25" y1="-4.35" x2="-2.25" y2="-4.35" width="0.254" layer="21"/>
<wire x1="-2.25" y1="-4.35" x2="-2.25" y2="4.35" width="0.254" layer="21"/>
<circle x="0" y="-2.55" radius="1.1011" width="0.1524" layer="51"/>
<pad name="1" x="1.27" y="-2.54" drill="0.6096"/>
<pad name="2" x="-1.27" y="0" drill="0.6096"/>
<pad name="3" x="1.27" y="2.54" drill="0.6096"/>
<text x="-2.65" y="-4.5" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.95" y="-4.5" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.15" y1="-3.6" x2="0.15" y2="-1.5" layer="21"/>
</package>
<package name="RTRIM74W">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; Spectrol&lt;p&gt;</description>
<wire x1="2.15" y1="-3.1" x2="2.15" y2="3.1" width="0.1524" layer="21"/>
<wire x1="2.15" y1="3.1" x2="-2" y2="3.1" width="0.1524" layer="21"/>
<wire x1="-2" y1="3.1" x2="-2" y2="-3.1" width="0.1524" layer="21"/>
<wire x1="-2" y1="-3.1" x2="2.15" y2="-3.1" width="0.1524" layer="21"/>
<circle x="1.3" y="2.25" radius="0.5522" width="0.1016" layer="21"/>
<pad name="1" x="-1.25" y="-2.5" drill="0.6096"/>
<pad name="2" x="1.25" y="0" drill="0.6096"/>
<pad name="3" x="-1.25" y="2.5" drill="0.6096"/>
<text x="-2.3" y="-3.15" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.7" y="-3.15" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="0.8" y1="2.1" x2="1.8" y2="2.4" layer="21"/>
</package>
<package name="RTRIM74X">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; Spectrol&lt;p&gt;</description>
<wire x1="2.15" y1="-3.1" x2="2.15" y2="3.1" width="0.1524" layer="21"/>
<wire x1="2.15" y1="3.1" x2="-2" y2="3.1" width="0.1524" layer="21"/>
<wire x1="-2" y1="3.1" x2="-2" y2="-3.1" width="0.1524" layer="21"/>
<wire x1="-2" y1="-3.1" x2="2.15" y2="-3.1" width="0.1524" layer="21"/>
<wire x1="0.75" y1="-3.15" x2="0.75" y2="-3.7" width="0.1016" layer="25"/>
<wire x1="0.75" y1="-3.7" x2="1.15" y2="-3.7" width="0.1016" layer="25"/>
<wire x1="1.15" y1="-3.7" x2="1.15" y2="-3.5" width="0.1016" layer="25"/>
<wire x1="1.15" y1="-3.5" x2="1.45" y2="-3.5" width="0.1016" layer="25"/>
<wire x1="1.45" y1="-3.5" x2="1.45" y2="-3.7" width="0.1016" layer="25"/>
<wire x1="1.45" y1="-3.7" x2="1.85" y2="-3.7" width="0.1016" layer="25"/>
<wire x1="1.85" y1="-3.7" x2="1.85" y2="-3.15" width="0.1016" layer="25"/>
<pad name="1" x="-1.25" y="-2.5" drill="0.6096"/>
<pad name="2" x="1.25" y="0" drill="0.6096"/>
<pad name="3" x="-1.25" y="2.5" drill="0.6096"/>
<text x="-2.3" y="-3.15" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.7" y="-3.15" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="RTRIM3224W">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;
Top Adjust</description>
<wire x1="2.3" y1="1.6" x2="2.3" y2="-1.6" width="0.254" layer="51"/>
<wire x1="2.3" y1="-1.6" x2="-2.3" y2="-1.6" width="0.254" layer="51"/>
<wire x1="-2.3" y1="-1.6" x2="-2.3" y2="1.6" width="0.254" layer="51"/>
<wire x1="-2.3" y1="1.6" x2="2.3" y2="1.6" width="0.254" layer="51"/>
<wire x1="1.3" y1="1.6" x2="2.3" y2="1.6" width="0.254" layer="21"/>
<wire x1="2.3" y1="1.6" x2="2.3" y2="-1.6" width="0.254" layer="21"/>
<wire x1="2.3" y1="-1.6" x2="2.1" y2="-1.6" width="0.254" layer="21"/>
<wire x1="-2.1" y1="-1.6" x2="-2.3" y2="-1.6" width="0.254" layer="21"/>
<wire x1="-2.3" y1="-1.6" x2="-2.3" y2="1.6" width="0.254" layer="21"/>
<wire x1="-2.3" y1="1.6" x2="-1.3" y2="1.6" width="0.254" layer="21"/>
<wire x1="0.35" y1="-1.6" x2="-0.35" y2="-1.6" width="0.254" layer="21"/>
<circle x="1.2" y="0.65" radius="0.65" width="0.1016" layer="51"/>
<smd name="1" x="-1.25" y="-1.45" dx="1.3" dy="1.6" layer="1"/>
<smd name="3" x="1.25" y="-1.45" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="0" y="1.45" dx="2" dy="1.6" layer="1"/>
<text x="-2.59" y="-2.255" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.86" y="-2.255" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.7" y1="1.7" x2="0.7" y2="1.95" layer="51"/>
<rectangle x1="0.85" y1="-1.95" x2="1.65" y2="-1.7" layer="51"/>
<rectangle x1="-1.65" y1="-1.95" x2="-0.85" y2="-1.7" layer="51"/>
<rectangle x1="0.6" y1="0.55" x2="1.8" y2="0.75" layer="51"/>
</package>
<package name="RTRIM3339P">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;
Cermet MIL-R-22097</description>
<circle x="0" y="0" radius="3.81" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.4199" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="0.6096"/>
<pad name="2" x="0" y="-2.54" drill="0.6096"/>
<pad name="3" x="2.54" y="0" drill="0.6096"/>
<text x="-2.515" y="4.205" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.515" y="-5.605" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.016" y1="-0.254" x2="1.016" y2="0.254" layer="21"/>
<rectangle x1="-0.254" y1="-1.016" x2="0.254" y2="1.016" layer="21"/>
</package>
<package name="RTRIM64P">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; Spectrol&lt;p&gt;
Cermet MIL-R-22097</description>
<wire x1="-4.15" y1="4.8" x2="4.8" y2="4.8" width="0.254" layer="21"/>
<wire x1="4.8" y1="4.8" x2="4.8" y2="-4.8" width="0.254" layer="21"/>
<wire x1="4.8" y1="-4.8" x2="-4.15" y2="-4.8" width="0.254" layer="21"/>
<wire x1="-4.8" y1="-3.9" x2="-4.15" y2="-3.25" width="0.254" layer="21"/>
<wire x1="-4.15" y1="-3.25" x2="-4.15" y2="3.25" width="0.254" layer="21"/>
<wire x1="-4.15" y1="3.25" x2="-4.8" y2="3.9" width="0.254" layer="21"/>
<wire x1="-4.8" y1="3.9" x2="-4.8" y2="4.15" width="0.254" layer="21"/>
<wire x1="-4.8" y1="4.15" x2="-4.15" y2="4.8" width="0.254" layer="21"/>
<wire x1="4.95" y1="-2.25" x2="6.15" y2="-2.25" width="0.1524" layer="21"/>
<wire x1="6.15" y1="-2.25" x2="6.15" y2="-3.05" width="0.1524" layer="21"/>
<wire x1="6.15" y1="-3.05" x2="5.7" y2="-3.05" width="0.1524" layer="21"/>
<wire x1="5.7" y1="-3.05" x2="5.7" y2="-3.6" width="0.1524" layer="21"/>
<wire x1="5.7" y1="-3.6" x2="6.15" y2="-3.6" width="0.1524" layer="21"/>
<wire x1="6.15" y1="-3.6" x2="6.15" y2="-4.45" width="0.1524" layer="21"/>
<wire x1="6.15" y1="-4.45" x2="4.95" y2="-4.45" width="0.1524" layer="21"/>
<wire x1="-4.8" y1="-4.15" x2="-4.8" y2="-3.9" width="0.254" layer="21"/>
<wire x1="-4.15" y1="-4.8" x2="-4.8" y2="-4.15" width="0.254" layer="21"/>
<pad name="1" x="0" y="-2.54" drill="0.6096"/>
<pad name="2" x="2.54" y="0" drill="0.6096"/>
<pad name="3" x="0" y="2.54" drill="0.6096"/>
<text x="-4.75" y="-2.65" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="-1.65" y="-3.2" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="RTRIM64W">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; Spectrol&lt;p&gt;
Cermet MIL-R-22097</description>
<wire x1="2.52" y1="-4.8" x2="-2.03" y2="-4.8" width="0.254" layer="21"/>
<wire x1="-2.03" y1="-4.8" x2="-2.03" y2="4.8" width="0.254" layer="21"/>
<wire x1="-2.03" y1="4.8" x2="2.52" y2="4.8" width="0.254" layer="21"/>
<wire x1="2.52" y1="4.8" x2="2.52" y2="3.2" width="0.254" layer="21"/>
<wire x1="2.52" y1="3.2" x2="2.27" y2="3.2" width="0.254" layer="21"/>
<wire x1="2.27" y1="3.2" x2="2.27" y2="-3.2" width="0.254" layer="21"/>
<wire x1="2.27" y1="-3.2" x2="2.52" y2="-3.2" width="0.254" layer="21"/>
<wire x1="2.52" y1="-3.2" x2="2.52" y2="-4.8" width="0.254" layer="21"/>
<circle x="-0.58" y="3.3" radius="1.1" width="0.1524" layer="21"/>
<pad name="1" x="1.27" y="-2.54" drill="0.6096"/>
<pad name="2" x="1.27" y="0" drill="0.6096"/>
<pad name="3" x="1.27" y="2.54" drill="0.6096"/>
<text x="-2.62" y="-4.95" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.35" y="-4.95" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.78" y1="2.25" x2="-0.38" y2="4.35" layer="21"/>
</package>
<package name="RTRIM64X">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; Spectrol&lt;p&gt;
Cermet MIL-R-22097</description>
<wire x1="2.52" y1="-4.8" x2="-2.03" y2="-4.8" width="0.254" layer="21"/>
<wire x1="-2.03" y1="-4.8" x2="-2.03" y2="4.8" width="0.254" layer="21"/>
<wire x1="-2.03" y1="4.8" x2="2.52" y2="4.8" width="0.254" layer="21"/>
<wire x1="2.52" y1="4.8" x2="2.52" y2="3.2" width="0.254" layer="21"/>
<wire x1="2.52" y1="3.2" x2="2.27" y2="3.2" width="0.254" layer="21"/>
<wire x1="2.27" y1="3.2" x2="2.27" y2="-3.2" width="0.254" layer="21"/>
<wire x1="2.27" y1="-3.2" x2="2.52" y2="-3.2" width="0.254" layer="21"/>
<wire x1="2.52" y1="-3.2" x2="2.52" y2="-4.8" width="0.254" layer="21"/>
<wire x1="-1.83" y1="4.95" x2="-1.83" y2="6.15" width="0.1524" layer="21"/>
<wire x1="-1.83" y1="6.15" x2="-1.03" y2="6.15" width="0.1524" layer="21"/>
<wire x1="-1.03" y1="6.15" x2="-1.03" y2="5.7" width="0.1524" layer="21"/>
<wire x1="-1.03" y1="5.7" x2="-0.48" y2="5.7" width="0.1524" layer="21"/>
<wire x1="-0.48" y1="5.7" x2="-0.48" y2="6.15" width="0.1524" layer="21"/>
<wire x1="-0.48" y1="6.15" x2="0.37" y2="6.15" width="0.1524" layer="21"/>
<wire x1="0.37" y1="6.15" x2="0.37" y2="4.95" width="0.1524" layer="21"/>
<pad name="1" x="1.27" y="-2.54" drill="0.6096"/>
<pad name="2" x="1.27" y="0" drill="0.6096"/>
<pad name="3" x="1.27" y="2.54" drill="0.6096"/>
<text x="-2.43" y="-4.95" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="0.07" y="-3.4" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="RTRIM64Y">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; Spectrol&lt;p&gt;
Cermet MIL-R-22097</description>
<wire x1="1.05" y1="-4.8" x2="-3.3" y2="-4.8" width="0.254" layer="21"/>
<wire x1="-3.3" y1="-4.8" x2="-3.3" y2="4.8" width="0.254" layer="21"/>
<wire x1="-3.3" y1="4.8" x2="1.05" y2="4.8" width="0.254" layer="21"/>
<wire x1="1.05" y1="4.8" x2="1.05" y2="3.2" width="0.254" layer="21"/>
<wire x1="1.05" y1="3.2" x2="0.8" y2="3.2" width="0.254" layer="21"/>
<wire x1="0.8" y1="3.2" x2="0.8" y2="-3.2" width="0.254" layer="21"/>
<wire x1="0.8" y1="-3.2" x2="1.05" y2="-3.2" width="0.254" layer="21"/>
<wire x1="1.05" y1="-3.2" x2="1.05" y2="-4.8" width="0.254" layer="21"/>
<circle x="-1.9" y="-3.35" radius="1.1" width="0.1524" layer="21"/>
<pad name="1" x="0" y="-2.54" drill="0.6096"/>
<pad name="2" x="-2.54" y="0" drill="0.6096"/>
<pad name="3" x="0" y="2.54" drill="0.6096"/>
<text x="-3.84" y="-4.95" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.75" y="-4.95" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.1" y1="-4.4" x2="-1.7" y2="-2.3" layer="21"/>
</package>
<package name="RTRIM64Z">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; Spectrol&lt;p&gt;
Cermet MIL-R-22097</description>
<wire x1="1.05" y1="-4.8" x2="-3.3" y2="-4.8" width="0.254" layer="21"/>
<wire x1="-3.3" y1="-4.8" x2="-3.3" y2="4.8" width="0.254" layer="21"/>
<wire x1="-3.3" y1="4.8" x2="1.05" y2="4.8" width="0.254" layer="21"/>
<wire x1="1.05" y1="4.8" x2="1.05" y2="3.2" width="0.254" layer="21"/>
<wire x1="1.05" y1="3.2" x2="0.8" y2="3.2" width="0.254" layer="21"/>
<wire x1="0.8" y1="3.2" x2="0.8" y2="-3.2" width="0.254" layer="21"/>
<wire x1="0.8" y1="-3.2" x2="1.05" y2="-3.2" width="0.254" layer="21"/>
<wire x1="1.05" y1="-3.2" x2="1.05" y2="-4.8" width="0.254" layer="21"/>
<wire x1="-3.1" y1="4.95" x2="-3.1" y2="6.15" width="0.1524" layer="21"/>
<wire x1="-3.1" y1="6.15" x2="-2.3" y2="6.15" width="0.1524" layer="21"/>
<wire x1="-2.3" y1="6.15" x2="-2.3" y2="5.7" width="0.1524" layer="21"/>
<wire x1="-2.3" y1="5.7" x2="-1.75" y2="5.7" width="0.1524" layer="21"/>
<wire x1="-1.75" y1="5.7" x2="-1.75" y2="6.15" width="0.1524" layer="21"/>
<wire x1="-1.75" y1="6.15" x2="-0.9" y2="6.15" width="0.1524" layer="21"/>
<wire x1="-0.9" y1="6.15" x2="-0.9" y2="4.95" width="0.1524" layer="21"/>
<pad name="1" x="0" y="-2.54" drill="0.6096"/>
<pad name="2" x="-2.54" y="0" drill="0.6096"/>
<pad name="3" x="0" y="2.54" drill="0.6096"/>
<text x="-3.65" y="-4.9" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.69" y="-4.92" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="RTRIM3059Y">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;
waschfest MIL-R-22097</description>
<wire x1="-16.37" y1="2.2" x2="-16.37" y2="-2.2" width="0.254" layer="21"/>
<wire x1="-16.37" y1="-2.2" x2="-6.69" y2="-2.2" width="0.254" layer="21"/>
<wire x1="8.81" y1="-2.2" x2="15.36" y2="-2.2" width="0.254" layer="21"/>
<wire x1="15.36" y1="-2.2" x2="15.36" y2="2.2" width="0.254" layer="21"/>
<wire x1="15.36" y1="2.2" x2="8.81" y2="2.2" width="0.254" layer="21"/>
<wire x1="8.81" y1="2.2" x2="8.71" y2="2.1" width="0.254" layer="21"/>
<wire x1="8.71" y1="2.1" x2="-6.59" y2="2.1" width="0.254" layer="21"/>
<wire x1="-6.59" y1="2.1" x2="-6.69" y2="2.2" width="0.254" layer="21"/>
<wire x1="-6.69" y1="2.2" x2="-16.37" y2="2.2" width="0.254" layer="21"/>
<wire x1="15.46" y1="1.35" x2="16.91" y2="1.35" width="0.1524" layer="21"/>
<wire x1="16.91" y1="1.35" x2="16.91" y2="0.35" width="0.1524" layer="21"/>
<wire x1="16.91" y1="0.35" x2="16.41" y2="0.35" width="0.1524" layer="21"/>
<wire x1="16.41" y1="0.35" x2="16.41" y2="-0.35" width="0.1524" layer="21"/>
<wire x1="16.41" y1="-0.35" x2="16.91" y2="-0.35" width="0.1524" layer="21"/>
<wire x1="16.91" y1="-0.35" x2="16.91" y2="-1.35" width="0.1524" layer="21"/>
<wire x1="16.91" y1="-1.35" x2="15.46" y2="-1.35" width="0.1524" layer="21"/>
<wire x1="-6.59" y1="-2.1" x2="-6.69" y2="-2.2" width="0.254" layer="21"/>
<wire x1="8.71" y1="-2.1" x2="8.81" y2="-2.2" width="0.254" layer="21"/>
<wire x1="8.71" y1="-2.1" x2="-6.59" y2="-2.1" width="0.254" layer="21"/>
<pad name="1" x="-6.35" y="1.27" drill="0.9"/>
<pad name="2" x="3.81" y="-1.27" drill="0.9"/>
<pad name="3" x="8.89" y="1.27" drill="0.9"/>
<text x="-16.32" y="2.7" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.49" y="0" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="RTRIM70Y">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; Spectrol&lt;p&gt;
waschfest MIL-R-22097</description>
<wire x1="-16.37" y1="2.2" x2="-16.37" y2="-2.2" width="0.254" layer="21"/>
<wire x1="-16.37" y1="-2.2" x2="-6.69" y2="-2.2" width="0.254" layer="21"/>
<wire x1="8.81" y1="-2.2" x2="15.36" y2="-2.2" width="0.254" layer="21"/>
<wire x1="15.36" y1="-2.2" x2="15.36" y2="2.2" width="0.254" layer="21"/>
<wire x1="15.36" y1="2.2" x2="8.81" y2="2.2" width="0.254" layer="21"/>
<wire x1="8.81" y1="2.2" x2="8.71" y2="2.1" width="0.254" layer="21"/>
<wire x1="8.71" y1="2.1" x2="-6.59" y2="2.1" width="0.254" layer="21"/>
<wire x1="-6.59" y1="2.1" x2="-6.69" y2="2.2" width="0.254" layer="21"/>
<wire x1="-6.69" y1="2.2" x2="-16.37" y2="2.2" width="0.254" layer="21"/>
<wire x1="15.46" y1="1.35" x2="16.91" y2="1.35" width="0.1524" layer="21"/>
<wire x1="16.91" y1="1.35" x2="16.91" y2="0.35" width="0.1524" layer="21"/>
<wire x1="16.91" y1="0.35" x2="16.41" y2="0.35" width="0.1524" layer="21"/>
<wire x1="16.41" y1="0.35" x2="16.41" y2="-0.35" width="0.1524" layer="21"/>
<wire x1="16.41" y1="-0.35" x2="16.91" y2="-0.35" width="0.1524" layer="21"/>
<wire x1="16.91" y1="-0.35" x2="16.91" y2="-1.35" width="0.1524" layer="21"/>
<wire x1="16.91" y1="-1.35" x2="15.46" y2="-1.35" width="0.1524" layer="21"/>
<wire x1="-6.59" y1="-2.1" x2="-6.69" y2="-2.2" width="0.254" layer="21"/>
<wire x1="8.71" y1="-2.1" x2="8.81" y2="-2.2" width="0.254" layer="21"/>
<wire x1="8.71" y1="-2.1" x2="-6.59" y2="-2.1" width="0.254" layer="21"/>
<pad name="1" x="-6.35" y="1.27" drill="0.9"/>
<pad name="2" x="3.81" y="-1.27" drill="0.9"/>
<pad name="3" x="8.89" y="1.27" drill="0.9"/>
<text x="-16.32" y="2.7" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.49" y="0" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="RTRIM3374">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS</description>
<wire x1="-1.9" y1="2.35" x2="1.9" y2="2.35" width="0.254" layer="51"/>
<wire x1="1.9" y1="2.35" x2="1.9" y2="-2.35" width="0.254" layer="51"/>
<wire x1="1.9" y1="-2.35" x2="0.6" y2="-2.35" width="0.254" layer="51"/>
<wire x1="0.6" y1="-2.35" x2="0.6" y2="-2.15" width="0.254" layer="51"/>
<wire x1="0.6" y1="-2.15" x2="-0.6" y2="-2.15" width="0.254" layer="51"/>
<wire x1="-0.6" y1="-2.15" x2="-0.6" y2="-2.35" width="0.254" layer="51"/>
<wire x1="-0.6" y1="-2.35" x2="-1.9" y2="-2.35" width="0.254" layer="51"/>
<wire x1="-1.9" y1="-2.35" x2="-1.9" y2="2.35" width="0.254" layer="51"/>
<wire x1="-0.25" y1="-2.15" x2="0.25" y2="-2.15" width="0.254" layer="21"/>
<wire x1="-1.9" y1="-1.15" x2="-1.9" y2="2.35" width="0.254" layer="21"/>
<wire x1="-1.9" y1="2.35" x2="-1.2" y2="2.35" width="0.254" layer="21"/>
<wire x1="1.2" y1="2.35" x2="1.9" y2="2.35" width="0.254" layer="21"/>
<wire x1="1.9" y1="2.35" x2="1.9" y2="-1.15" width="0.254" layer="21"/>
<circle x="0" y="0" radius="1.65" width="0.1524" layer="51"/>
<smd name="2" x="0" y="2.1" dx="1.98" dy="2.17" layer="1"/>
<smd name="1" x="-1.25" y="-2.5" dx="1.5" dy="2.2" layer="1"/>
<smd name="3" x="1.25" y="-2.5" dx="1.5" dy="2.2" layer="1"/>
<text x="-2.2" y="-2.5" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.55" y="-2.5" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.25" y1="-1.3" x2="0.25" y2="1.3" layer="51"/>
<rectangle x1="-1.3" y1="-0.2" x2="1.3" y2="0.3" layer="51"/>
</package>
<package name="RTRIM3299W">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS</description>
<wire x1="-2.78" y1="4.35" x2="3.07" y2="4.35" width="0.254" layer="21"/>
<wire x1="3.07" y1="4.35" x2="3.07" y2="-4.35" width="0.254" layer="21"/>
<wire x1="3.07" y1="-4.35" x2="-2.78" y2="-4.35" width="0.254" layer="21"/>
<wire x1="-2.78" y1="-4.35" x2="-2.78" y2="4.35" width="0.254" layer="21"/>
<circle x="-1.23" y="2.75" radius="1.1011" width="0.1524" layer="21"/>
<pad name="1" x="1.27" y="-2.54" drill="0.6096"/>
<pad name="2" x="1.27" y="0" drill="0.6096"/>
<pad name="3" x="1.27" y="2.54" drill="0.6096"/>
<text x="-3.38" y="-4.5" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.77" y="-4.5" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.38" y1="1.7" x2="-1.08" y2="3.8" layer="21"/>
</package>
<package name="RTRIM43P">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; Spectrol&lt;p&gt;
waschfest MIL-R-22097</description>
<wire x1="-9.2" y1="2.2" x2="-9.2" y2="-2.2" width="0.254" layer="21"/>
<wire x1="-9.2" y1="-2.2" x2="8.1" y2="-2.2" width="0.254" layer="21"/>
<wire x1="8.1" y1="-2.2" x2="8.1" y2="2.2" width="0.254" layer="21"/>
<wire x1="8.1" y1="2.2" x2="-9.2" y2="2.2" width="0.254" layer="21"/>
<wire x1="8.2" y1="1.35" x2="9.65" y2="1.35" width="0.1524" layer="21"/>
<wire x1="9.65" y1="1.35" x2="9.65" y2="0.35" width="0.1524" layer="21"/>
<wire x1="9.65" y1="0.35" x2="9.15" y2="0.35" width="0.1524" layer="21"/>
<wire x1="9.15" y1="0.35" x2="9.15" y2="-0.35" width="0.1524" layer="21"/>
<wire x1="9.15" y1="-0.35" x2="9.65" y2="-0.35" width="0.1524" layer="21"/>
<wire x1="9.65" y1="-0.35" x2="9.65" y2="-1.35" width="0.1524" layer="21"/>
<wire x1="9.65" y1="-1.35" x2="8.2" y2="-1.35" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="1.27" drill="0.9"/>
<pad name="2" x="0" y="-1.27" drill="0.9"/>
<pad name="3" x="5.08" y="1.27" drill="0.9"/>
<text x="-9.15" y="2.7" size="1.27" layer="25">&gt;NAME</text>
<text x="-6.3" y="0" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="RTRIM3006P">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;</description>
<wire x1="-10.6" y1="2.25" x2="-10.6" y2="-2.25" width="0.254" layer="21"/>
<wire x1="-10.6" y1="-2.25" x2="8.25" y2="-2.25" width="0.254" layer="21"/>
<wire x1="8.25" y1="-2.25" x2="8.25" y2="2.25" width="0.254" layer="21"/>
<wire x1="8.25" y1="2.25" x2="-10.6" y2="2.25" width="0.254" layer="21"/>
<wire x1="8.35" y1="1.35" x2="9.8" y2="1.35" width="0.1524" layer="21"/>
<wire x1="9.8" y1="1.35" x2="9.8" y2="0.35" width="0.1524" layer="21"/>
<wire x1="9.8" y1="0.35" x2="9.3" y2="0.35" width="0.1524" layer="21"/>
<wire x1="9.3" y1="0.35" x2="9.3" y2="-0.35" width="0.1524" layer="21"/>
<wire x1="9.3" y1="-0.35" x2="9.8" y2="-0.35" width="0.1524" layer="21"/>
<wire x1="9.8" y1="-0.35" x2="9.8" y2="-1.35" width="0.1524" layer="21"/>
<wire x1="9.8" y1="-1.35" x2="8.35" y2="-1.35" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="1.27" drill="0.6096"/>
<pad name="2" x="0" y="-1.27" drill="0.6096"/>
<pad name="3" x="5.08" y="1.27" drill="0.6096"/>
<text x="-10.7" y="2.7" size="1.27" layer="25">&gt;NAME</text>
<text x="-10.05" y="-1.65" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="RTRIMT18">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; VISHAY&lt;p&gt;
abgedichtet nach IP67</description>
<wire x1="-10.75" y1="2.2" x2="-10.75" y2="-2.2" width="0.254" layer="21"/>
<wire x1="-10.75" y1="-2.2" x2="8.1" y2="-2.2" width="0.254" layer="21"/>
<wire x1="8.1" y1="-2.2" x2="8.1" y2="2.2" width="0.254" layer="21"/>
<wire x1="8.1" y1="2.2" x2="-10.75" y2="2.2" width="0.254" layer="21"/>
<wire x1="8.2" y1="1.35" x2="9.65" y2="1.35" width="0.1524" layer="21"/>
<wire x1="9.65" y1="1.35" x2="9.65" y2="0.35" width="0.1524" layer="21"/>
<wire x1="9.65" y1="0.35" x2="9.15" y2="0.35" width="0.1524" layer="21"/>
<wire x1="9.15" y1="0.35" x2="9.15" y2="-0.35" width="0.1524" layer="21"/>
<wire x1="9.15" y1="-0.35" x2="9.65" y2="-0.35" width="0.1524" layer="21"/>
<wire x1="9.65" y1="-0.35" x2="9.65" y2="-1.35" width="0.1524" layer="21"/>
<wire x1="9.65" y1="-1.35" x2="8.2" y2="-1.35" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="1.27" drill="0.9"/>
<pad name="2" x="0" y="-1.27" drill="0.9"/>
<pad name="3" x="5.08" y="1.27" drill="0.9"/>
<text x="-10.7" y="2.7" size="1.27" layer="25">&gt;NAME</text>
<text x="-10.2" y="-1.65" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="RTRIMT93XA">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; VISHAY&lt;p&gt;
Cermet, abgedichtet nach IP67</description>
<wire x1="2.15" y1="-4.75" x2="2.15" y2="4.75" width="0.254" layer="21"/>
<wire x1="2.15" y1="4.75" x2="-2.55" y2="4.75" width="0.254" layer="21"/>
<wire x1="-2.55" y1="4.75" x2="-2.55" y2="-4.75" width="0.254" layer="21"/>
<wire x1="-2.55" y1="-4.75" x2="2.15" y2="-4.75" width="0.254" layer="21"/>
<wire x1="-0.3" y1="4.9" x2="-0.3" y2="6.05" width="0.1524" layer="21"/>
<wire x1="-0.3" y1="6.05" x2="-1.1" y2="6.05" width="0.1524" layer="21"/>
<wire x1="-1.1" y1="6.05" x2="-1.1" y2="5.85" width="0.1524" layer="21"/>
<wire x1="-1.1" y1="5.85" x2="-1.5" y2="5.85" width="0.1524" layer="21"/>
<wire x1="-1.5" y1="5.85" x2="-1.5" y2="6.05" width="0.1524" layer="21"/>
<wire x1="-1.5" y1="6.05" x2="-2.3" y2="6.05" width="0.1524" layer="21"/>
<wire x1="-2.3" y1="6.05" x2="-2.3" y2="4.9" width="0.1524" layer="21"/>
<pad name="1" x="0" y="-2.54" drill="0.6096"/>
<pad name="2" x="0" y="0" drill="0.6096"/>
<pad name="3" x="0" y="2.54" drill="0.6096"/>
<text x="-3.04" y="-4.89" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.01" y="-4.89" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="RTRIMT93XB">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; VISHAY&lt;p&gt;
Cermet, abgedichtet nach IP67</description>
<wire x1="2.35" y1="-4.75" x2="2.35" y2="4.75" width="0.254" layer="21"/>
<wire x1="2.35" y1="4.75" x2="-2.35" y2="4.75" width="0.254" layer="21"/>
<wire x1="-2.35" y1="4.75" x2="-2.35" y2="-4.75" width="0.254" layer="21"/>
<wire x1="-2.35" y1="-4.75" x2="2.35" y2="-4.75" width="0.254" layer="21"/>
<wire x1="-0.1" y1="4.9" x2="-0.1" y2="6.05" width="0.1524" layer="21"/>
<wire x1="-0.1" y1="6.05" x2="-0.9" y2="6.05" width="0.1524" layer="21"/>
<wire x1="-0.9" y1="6.05" x2="-0.9" y2="5.85" width="0.1524" layer="21"/>
<wire x1="-0.9" y1="5.85" x2="-1.3" y2="5.85" width="0.1524" layer="21"/>
<wire x1="-1.3" y1="5.85" x2="-1.3" y2="6.05" width="0.1524" layer="21"/>
<wire x1="-1.3" y1="6.05" x2="-2.1" y2="6.05" width="0.1524" layer="21"/>
<wire x1="-2.1" y1="6.05" x2="-2.1" y2="4.9" width="0.1524" layer="21"/>
<pad name="1" x="1.27" y="-2.54" drill="0.6096"/>
<pad name="2" x="-1.27" y="0" drill="0.6096"/>
<pad name="3" x="1.27" y="2.54" drill="0.6096"/>
<text x="-2.79" y="-4.89" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.01" y="-4.89" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="RTRIMT93YA">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; VISHAY&lt;p&gt;
Cermet, abgedichtet nach IP67</description>
<wire x1="2.15" y1="-4.75" x2="2.15" y2="4.75" width="0.254" layer="21"/>
<wire x1="2.15" y1="4.75" x2="-2.55" y2="4.75" width="0.254" layer="21"/>
<wire x1="-2.55" y1="4.75" x2="-2.55" y2="-4.75" width="0.254" layer="21"/>
<wire x1="-2.55" y1="-4.75" x2="2.15" y2="-4.75" width="0.254" layer="21"/>
<wire x1="-0.75" y1="2.6" x2="-0.3" y2="3.3" width="0.1524" layer="21" curve="-311.390901"/>
<wire x1="-0.75" y1="2.6" x2="-0.3" y2="3.3" width="0.1524" layer="51" curve="48.609099"/>
<pad name="1" x="0" y="-2.54" drill="0.6096"/>
<pad name="2" x="0" y="0" drill="0.6096"/>
<pad name="3" x="0" y="2.54" drill="0.6096"/>
<text x="-3.04" y="-4.89" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.01" y="-4.89" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.45" y1="2.5" x2="-1.15" y2="4.4" layer="21"/>
</package>
<package name="RTRIMT93YB">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; VISHAY&lt;p&gt;
Cermet, abgedichtet nach IP67</description>
<wire x1="2.35" y1="-4.75" x2="2.35" y2="4.75" width="0.254" layer="21"/>
<wire x1="2.35" y1="4.75" x2="-2.35" y2="4.75" width="0.254" layer="21"/>
<wire x1="-2.35" y1="4.75" x2="-2.35" y2="-4.75" width="0.254" layer="21"/>
<wire x1="-2.35" y1="-4.75" x2="2.35" y2="-4.75" width="0.254" layer="21"/>
<circle x="-1.05" y="3.45" radius="1.0049" width="0.1524" layer="21"/>
<pad name="1" x="1.27" y="-2.54" drill="0.6096"/>
<pad name="2" x="-1.27" y="0" drill="0.6096"/>
<pad name="3" x="1.27" y="2.54" drill="0.6096"/>
<text x="-2.79" y="-4.89" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.01" y="-4.89" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.2" y1="2.5" x2="-0.9" y2="4.4" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="R-EU">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="C-EU">
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<text x="1.524" y="0.381" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-4.699" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
<symbol name="R-TRIM">
<wire x1="0.762" y1="2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="-0.762" y1="2.54" x2="-0.762" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0.762" y1="-2.54" x2="0.762" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="1.651" y2="0" width="0.1524" layer="94"/>
<wire x1="1.651" y1="0" x2="-1.8796" y2="1.7526" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="5.08" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="-0.762" y2="2.54" width="0.254" layer="94"/>
<wire x1="-0.762" y1="-2.54" x2="0.762" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.286" y1="1.27" x2="-1.651" y2="2.413" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-0.508" x2="-3.048" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-0.508" x2="-2.032" y2="-1.524" width="0.1524" layer="94"/>
<text x="-5.969" y="-3.81" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="-3.81" y="-3.81" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="E" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="A" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="S" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="R-EU_" prefix="R" uservalue="yes">
<description>&lt;B&gt;RESISTOR&lt;/B&gt;, European symbol</description>
<gates>
<gate name="G$1" symbol="R-EU" x="0" y="0"/>
</gates>
<devices>
<device name="R0402" package="R0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R0603" package="R0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R0805" package="R0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R0805W" package="R0805W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R1005" package="R1005">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R1206" package="R1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R1206W" package="R1206W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R1210" package="R1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R1210W" package="R1210W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R2010" package="R2010">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R2010W" package="R2010W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R2012" package="R2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R2012W" package="R2012W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R2512" package="R2512">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R2512W" package="R2512W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R3216" package="R3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R3216W" package="R3216W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R3225" package="R3225">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R3225W" package="R3225W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R5025" package="R5025">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R5025W" package="R5025W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R6332" package="R6332">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R6332W" package="R6332W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M0805" package="M0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M1206" package="M1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M1406" package="M1406">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M2012" package="M2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M2309" package="M2309">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M3216" package="M3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M3516" package="M3516">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M5923" package="M5923">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0204/5" package="0204/5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0204/7" package="0204/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0204/2V" package="0204V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/10" package="0207/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/12" package="0207/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/15" package="0207/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/2V" package="0207/2V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/5V" package="0207/5V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/7" package="0207/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0309/10" package="0309/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0309/12" package="0309/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0309/V" package="0309V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0411/12" package="0411/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0411/15" package="0411/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0411/3V" package="0411V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0414/15" package="0414/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0414/5V" package="0414V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0617/17" package="0617/17">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0617/22" package="0617/22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0617/5V" package="0617V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0922/22" package="0922/22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0613/5V" package="P0613V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0613/15" package="P0613/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0817/22" package="P0817/22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0817/7V" package="P0817V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="V234/12" package="V234/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="V235/17" package="V235/17">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="V526-0" package="V526-0">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0102R" package="MINI_MELF-0102R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0102W" package="MINI_MELF-0102W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0204R" package="MINI_MELF-0204R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0204W" package="MINI_MELF-0204W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0207R" package="MINI_MELF-0207R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0207W" package="MINI_MELF-0207W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0922V" package="0922V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="RDH/15" package="RDH/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0102AX" package="MINI_MELF-0102AX">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="C-EU" prefix="C" uservalue="yes">
<description>&lt;B&gt;CAPACITOR&lt;/B&gt;, European symbol</description>
<gates>
<gate name="G$1" symbol="C-EU" x="0" y="0"/>
</gates>
<devices>
<device name="C0402" package="C0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0504" package="C0504">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0603" package="C0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0805" package="C0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1005" package="C1005">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1206" package="C1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1210" package="C1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1310" package="C1310">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1608" package="C1608">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1812" package="C1812">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1825" package="C1825">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C2012" package="C2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C3216" package="C3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C3225" package="C3225">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C4532" package="C4532">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C4564" package="C4564">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025-024X044" package="C025-024X044">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025-025X050" package="C025-025X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025-030X050" package="C025-030X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025-040X050" package="C025-040X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025-050X050" package="C025-050X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025-060X050" package="C025-060X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C025_050-024X070" package="C025_050-024X070">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025_050-025X075" package="C025_050-025X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025_050-035X075" package="C025_050-035X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025_050-045X075" package="C025_050-045X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025_050-055X075" package="C025_050-055X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-024X044" package="C050-024X044">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-025X075" package="C050-025X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-045X075" package="C050-045X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-030X075" package="C050-030X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-050X075" package="C050-050X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-055X075" package="C050-055X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-075X075" package="C050-075X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050H075X075" package="C050H075X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="075-032X103" package="C075-032X103">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="075-042X103" package="C075-042X103">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="075-052X106" package="C075-052X106">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="102-043X133" package="C102-043X133">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="102-054X133" package="C102-054X133">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="102-064X133" package="C102-064X133">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="102_152-062X184" package="C102_152-062X184">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="150-054X183" package="C150-054X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="150-064X183" package="C150-064X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="150-072X183" package="C150-072X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="150-084X183" package="C150-084X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="150-091X182" package="C150-091X182">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="225-062X268" package="C225-062X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="225-074X268" package="C225-074X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="225-087X268" package="C225-087X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="225-108X268" package="C225-108X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="225-113X268" package="C225-113X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="275-093X316" package="C275-093X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="275-113X316" package="C275-113X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="275-134X316" package="C275-134X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="275-205X316" package="C275-205X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="325-137X374" package="C325-137X374">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="325-162X374" package="C325-162X374">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="325-182X374" package="C325-182X374">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="375-192X418" package="C375-192X418">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="375-203X418" package="C375-203X418">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-035X075" package="C050-035X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="375-155X418" package="C375-155X418">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="075-063X106" package="C075-063X106">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="275-154X316" package="C275-154X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="275-173X316" package="C275-173X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0402K" package="C0402K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0603K" package="C0603K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0805K" package="C0805K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1206K" package="C1206K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1210K" package="C1210K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1812K" package="C1812K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1825K" package="C1825K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C2220K" package="C2220K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C2225K" package="C2225K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="R-TRIMM" prefix="R" uservalue="yes">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="R-TRIM" x="0" y="0"/>
</gates>
<devices>
<device name="3304W" package="RTRIM3304W">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3165W" package="RTRIM3165W">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3202" package="RTRIM3202">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3314J" package="RTRIM3314J">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="4G/J" package="RTRIM4G/J">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CVR42A" package="RTRIMCVR42A">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3214W" package="RTRIM3214W">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3224G" package="RTRIM3224G">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3224J" package="RTRIM3224J">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3224X" package="RTRIM3224X">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3103" package="RTRIM3103">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5W" package="RTRIM5W">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5X" package="RTRIM5X">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TSM53YJ" package="RTRIMTSM53YJ">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TSM53YL" package="RTRIMTSM53YL">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TS63X" package="RTRIMTS63X">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TS63Y" package="RTRIMTS63Y">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TS63Z" package="RTRIMTS63Z">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3296P" package="RTRIM3296P">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3296W" package="RTRIM3296W">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3296X" package="RTRIM3296X">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3296Y" package="RTRIM3296Y">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="74W" package="RTRIM74W">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="74X" package="RTRIM74X">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3224W" package="RTRIM3224W">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3339P" package="RTRIM3339P">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="64P" package="RTRIM64P">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="64W" package="RTRIM64W">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="64X" package="RTRIM64X">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="64Y" package="RTRIM64Y">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="64Z" package="RTRIM64Z">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3059Y" package="RTRIM3059Y">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="70Y" package="RTRIM70Y">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3374" package="RTRIM3374">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3299W" package="RTRIM3299W">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="43P" package="RTRIM43P">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3006P" package="RTRIM3006P">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="T18" package="RTRIMT18">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="T93XA" package="RTRIMT93XA">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="T93XB" package="RTRIMT93XB">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="T93YA" package="RTRIMT93YA">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="T93YB" package="RTRIMT93YB">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="VCC">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VCC" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="74xx-eu">
<packages>
<package name="DIL20">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="12.7" y1="2.921" x2="-12.7" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-2.921" x2="12.7" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="12.7" y1="2.921" x2="12.7" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="2.921" x2="-12.7" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-2.921" x2="-12.7" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.016" x2="-12.7" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-11.43" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="11.43" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="11.43" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="17" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="18" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="19" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="20" x="-11.43" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-13.081" y="-3.048" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="-9.779" y="-0.381" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="SO20W">
<description>&lt;b&gt;Wide Small Outline package&lt;/b&gt; 300 mil</description>
<wire x1="6.1214" y1="3.7338" x2="-6.1214" y2="3.7338" width="0.1524" layer="51"/>
<wire x1="6.1214" y1="-3.7338" x2="6.5024" y2="-3.3528" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.5024" y1="3.3528" x2="-6.1214" y2="3.7338" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.1214" y1="3.7338" x2="6.5024" y2="3.3528" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.5024" y1="-3.3528" x2="-6.1214" y2="-3.7338" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.1214" y1="-3.7338" x2="6.1214" y2="-3.7338" width="0.1524" layer="51"/>
<wire x1="6.5024" y1="-3.3528" x2="6.5024" y2="3.3528" width="0.1524" layer="21"/>
<wire x1="-6.5024" y1="3.3528" x2="-6.5024" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.5024" y1="1.27" x2="-6.5024" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.5024" y1="-1.27" x2="-6.5024" y2="-3.3528" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="-3.3782" x2="6.477" y2="-3.3782" width="0.0508" layer="21"/>
<wire x1="-6.5024" y1="1.27" x2="-6.5024" y2="-1.27" width="0.1524" layer="21" curve="-180"/>
<smd name="1" x="-5.715" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-4.445" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="-3.175" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="-1.905" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="-0.635" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="0.635" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="1.905" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="3.175" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="13" x="3.175" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="14" x="1.905" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="15" x="0.635" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="16" x="-0.635" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="17" x="-1.905" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="18" x="-3.175" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="19" x="-4.445" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="20" x="-5.715" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="9" x="4.445" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="10" x="5.715" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="12" x="4.445" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="11" x="5.715" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<text x="-3.81" y="-1.778" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-6.858" y="-3.175" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-5.969" y1="-3.8608" x2="-5.461" y2="-3.7338" layer="51"/>
<rectangle x1="-5.969" y1="-5.334" x2="-5.461" y2="-3.8608" layer="51"/>
<rectangle x1="-4.699" y1="-3.8608" x2="-4.191" y2="-3.7338" layer="51"/>
<rectangle x1="-4.699" y1="-5.334" x2="-4.191" y2="-3.8608" layer="51"/>
<rectangle x1="-3.429" y1="-3.8608" x2="-2.921" y2="-3.7338" layer="51"/>
<rectangle x1="-3.429" y1="-5.334" x2="-2.921" y2="-3.8608" layer="51"/>
<rectangle x1="-2.159" y1="-3.8608" x2="-1.651" y2="-3.7338" layer="51"/>
<rectangle x1="-2.159" y1="-5.334" x2="-1.651" y2="-3.8608" layer="51"/>
<rectangle x1="-0.889" y1="-5.334" x2="-0.381" y2="-3.8608" layer="51"/>
<rectangle x1="-0.889" y1="-3.8608" x2="-0.381" y2="-3.7338" layer="51"/>
<rectangle x1="0.381" y1="-3.8608" x2="0.889" y2="-3.7338" layer="51"/>
<rectangle x1="0.381" y1="-5.334" x2="0.889" y2="-3.8608" layer="51"/>
<rectangle x1="1.651" y1="-3.8608" x2="2.159" y2="-3.7338" layer="51"/>
<rectangle x1="1.651" y1="-5.334" x2="2.159" y2="-3.8608" layer="51"/>
<rectangle x1="2.921" y1="-3.8608" x2="3.429" y2="-3.7338" layer="51"/>
<rectangle x1="2.921" y1="-5.334" x2="3.429" y2="-3.8608" layer="51"/>
<rectangle x1="-5.969" y1="3.8608" x2="-5.461" y2="5.334" layer="51"/>
<rectangle x1="-5.969" y1="3.7338" x2="-5.461" y2="3.8608" layer="51"/>
<rectangle x1="-4.699" y1="3.7338" x2="-4.191" y2="3.8608" layer="51"/>
<rectangle x1="-4.699" y1="3.8608" x2="-4.191" y2="5.334" layer="51"/>
<rectangle x1="-3.429" y1="3.7338" x2="-2.921" y2="3.8608" layer="51"/>
<rectangle x1="-3.429" y1="3.8608" x2="-2.921" y2="5.334" layer="51"/>
<rectangle x1="-2.159" y1="3.7338" x2="-1.651" y2="3.8608" layer="51"/>
<rectangle x1="-2.159" y1="3.8608" x2="-1.651" y2="5.334" layer="51"/>
<rectangle x1="-0.889" y1="3.7338" x2="-0.381" y2="3.8608" layer="51"/>
<rectangle x1="-0.889" y1="3.8608" x2="-0.381" y2="5.334" layer="51"/>
<rectangle x1="0.381" y1="3.7338" x2="0.889" y2="3.8608" layer="51"/>
<rectangle x1="0.381" y1="3.8608" x2="0.889" y2="5.334" layer="51"/>
<rectangle x1="1.651" y1="3.7338" x2="2.159" y2="3.8608" layer="51"/>
<rectangle x1="1.651" y1="3.8608" x2="2.159" y2="5.334" layer="51"/>
<rectangle x1="2.921" y1="3.7338" x2="3.429" y2="3.8608" layer="51"/>
<rectangle x1="2.921" y1="3.8608" x2="3.429" y2="5.334" layer="51"/>
<rectangle x1="4.191" y1="3.7338" x2="4.699" y2="3.8608" layer="51"/>
<rectangle x1="5.461" y1="3.7338" x2="5.969" y2="3.8608" layer="51"/>
<rectangle x1="4.191" y1="3.8608" x2="4.699" y2="5.334" layer="51"/>
<rectangle x1="5.461" y1="3.8608" x2="5.969" y2="5.334" layer="51"/>
<rectangle x1="4.191" y1="-3.8608" x2="4.699" y2="-3.7338" layer="51"/>
<rectangle x1="5.461" y1="-3.8608" x2="5.969" y2="-3.7338" layer="51"/>
<rectangle x1="4.191" y1="-5.334" x2="4.699" y2="-3.8608" layer="51"/>
<rectangle x1="5.461" y1="-5.334" x2="5.969" y2="-3.8608" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="74573">
<wire x1="-7.62" y1="-15.24" x2="7.62" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-15.24" x2="7.62" y2="15.24" width="0.4064" layer="94"/>
<wire x1="7.62" y1="15.24" x2="-7.62" y2="15.24" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="15.24" x2="-7.62" y2="-15.24" width="0.4064" layer="94"/>
<text x="-7.62" y="15.875" size="1.778" layer="95" font="vector">&gt;NAME</text>
<text x="-7.62" y="-17.78" size="1.778" layer="96">&gt;VALUE</text>
<pin name="OC" x="-12.7" y="-12.7" length="middle" direction="in" function="dot"/>
<pin name="1D" x="-12.7" y="12.7" length="middle" direction="in"/>
<pin name="2D" x="-12.7" y="10.16" length="middle" direction="in"/>
<pin name="3D" x="-12.7" y="7.62" length="middle" direction="in"/>
<pin name="4D" x="-12.7" y="5.08" length="middle" direction="in"/>
<pin name="5D" x="-12.7" y="2.54" length="middle" direction="in"/>
<pin name="6D" x="-12.7" y="0" length="middle" direction="in"/>
<pin name="7D" x="-12.7" y="-2.54" length="middle" direction="in"/>
<pin name="8D" x="-12.7" y="-5.08" length="middle" direction="in"/>
<pin name="C" x="-12.7" y="-10.16" length="middle" direction="in"/>
<pin name="8Q" x="12.7" y="-5.08" length="middle" direction="hiz" rot="R180"/>
<pin name="7Q" x="12.7" y="-2.54" length="middle" direction="hiz" rot="R180"/>
<pin name="6Q" x="12.7" y="0" length="middle" direction="hiz" rot="R180"/>
<pin name="5Q" x="12.7" y="2.54" length="middle" direction="hiz" rot="R180"/>
<pin name="4Q" x="12.7" y="5.08" length="middle" direction="hiz" rot="R180"/>
<pin name="3Q" x="12.7" y="7.62" length="middle" direction="hiz" rot="R180"/>
<pin name="2Q" x="12.7" y="10.16" length="middle" direction="hiz" rot="R180"/>
<pin name="1Q" x="12.7" y="12.7" length="middle" direction="hiz" rot="R180"/>
</symbol>
<symbol name="PWRN">
<text x="-0.635" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.905" y="-5.842" size="1.27" layer="95" rot="R90">GND</text>
<text x="1.905" y="2.54" size="1.27" layer="95" rot="R90">VCC</text>
<pin name="GND" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="VCC" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74*573" prefix="IC">
<description>8-bit D latch &lt;b&gt;BUS DRIVER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="74573" x="20.32" y="0"/>
<gate name="P" symbol="PWRN" x="-5.08" y="0" addlevel="request"/>
</gates>
<devices>
<device name="N" package="DIL20">
<connects>
<connect gate="A" pin="1D" pad="2"/>
<connect gate="A" pin="1Q" pad="19"/>
<connect gate="A" pin="2D" pad="3"/>
<connect gate="A" pin="2Q" pad="18"/>
<connect gate="A" pin="3D" pad="4"/>
<connect gate="A" pin="3Q" pad="17"/>
<connect gate="A" pin="4D" pad="5"/>
<connect gate="A" pin="4Q" pad="16"/>
<connect gate="A" pin="5D" pad="6"/>
<connect gate="A" pin="5Q" pad="15"/>
<connect gate="A" pin="6D" pad="7"/>
<connect gate="A" pin="6Q" pad="14"/>
<connect gate="A" pin="7D" pad="8"/>
<connect gate="A" pin="7Q" pad="13"/>
<connect gate="A" pin="8D" pad="9"/>
<connect gate="A" pin="8Q" pad="12"/>
<connect gate="A" pin="C" pad="11"/>
<connect gate="A" pin="OC" pad="1"/>
<connect gate="P" pin="GND" pad="10"/>
<connect gate="P" pin="VCC" pad="20"/>
</connects>
<technologies>
<technology name="AC"/>
<technology name="ACT"/>
<technology name="AS"/>
<technology name="HC"/>
<technology name="HCT"/>
</technologies>
</device>
<device name="D" package="SO20W">
<connects>
<connect gate="A" pin="1D" pad="2"/>
<connect gate="A" pin="1Q" pad="19"/>
<connect gate="A" pin="2D" pad="3"/>
<connect gate="A" pin="2Q" pad="18"/>
<connect gate="A" pin="3D" pad="4"/>
<connect gate="A" pin="3Q" pad="17"/>
<connect gate="A" pin="4D" pad="5"/>
<connect gate="A" pin="4Q" pad="16"/>
<connect gate="A" pin="5D" pad="6"/>
<connect gate="A" pin="5Q" pad="15"/>
<connect gate="A" pin="6D" pad="7"/>
<connect gate="A" pin="6Q" pad="14"/>
<connect gate="A" pin="7D" pad="8"/>
<connect gate="A" pin="7Q" pad="13"/>
<connect gate="A" pin="8D" pad="9"/>
<connect gate="A" pin="8Q" pad="12"/>
<connect gate="A" pin="C" pad="11"/>
<connect gate="A" pin="OC" pad="1"/>
<connect gate="P" pin="GND" pad="10"/>
<connect gate="P" pin="VCC" pad="20"/>
</connects>
<technologies>
<technology name="AC"/>
<technology name="ACT"/>
<technology name="HC"/>
<technology name="HCT"/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="transistor-fet">
<packages>
<package name="TOP3">
<description>&lt;b&gt;TOP 3 horizontal&lt;/b&gt;</description>
<wire x1="-7.874" y1="-1.778" x2="7.874" y2="-1.778" width="0.127" layer="21"/>
<wire x1="7.874" y1="8.763" x2="7.874" y2="-1.778" width="0.127" layer="21"/>
<wire x1="-7.874" y1="-1.778" x2="-7.874" y2="8.763" width="0.127" layer="21"/>
<wire x1="-7.874" y1="8.763" x2="-7.874" y2="11.811" width="0.127" layer="21"/>
<wire x1="-7.874" y1="11.811" x2="-3.1242" y2="15.8496" width="0.127" layer="21"/>
<wire x1="7.874" y1="8.763" x2="-7.874" y2="8.763" width="0.127" layer="21"/>
<wire x1="7.874" y1="8.763" x2="7.874" y2="11.811" width="0.127" layer="21"/>
<wire x1="-7.366" y1="-1.27" x2="7.366" y2="-1.27" width="0.0508" layer="21"/>
<wire x1="7.366" y1="8.255" x2="7.366" y2="-1.27" width="0.0508" layer="21"/>
<wire x1="7.366" y1="8.255" x2="-7.366" y2="8.255" width="0.0508" layer="21"/>
<wire x1="-7.366" y1="-1.27" x2="-7.366" y2="8.255" width="0.0508" layer="21"/>
<wire x1="0" y1="17.145" x2="3.1431" y2="15.8431" width="0.127" layer="21" curve="-45.000078"/>
<wire x1="-3.1431" y1="15.8431" x2="0" y2="17.145" width="0.127" layer="21" curve="-45.000078"/>
<wire x1="7.874" y1="11.811" x2="3.1242" y2="15.875" width="0.127" layer="21"/>
<circle x="0" y="12.7" radius="2.159" width="0.127" layer="21"/>
<circle x="0" y="12.7" radius="5.08" width="0" layer="42"/>
<circle x="0" y="12.7" radius="5.08" width="0" layer="43"/>
<pad name="1" x="-5.588" y="-7.62" drill="1.397" shape="long" rot="R90"/>
<pad name="2" x="0" y="-7.62" drill="1.397" shape="long" rot="R90"/>
<pad name="3" x="5.588" y="-7.62" drill="1.397" shape="long" rot="R90"/>
<text x="-5.08" y="5.08" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-7.366" y="9.144" size="0.9906" layer="21" ratio="12">A20,3mm</text>
<text x="-5.715" y="-0.635" size="1.27" layer="51" ratio="10">1</text>
<text x="-0.635" y="-0.635" size="1.27" layer="51" ratio="10">2</text>
<text x="4.445" y="-0.635" size="1.27" layer="51" ratio="10">3</text>
<rectangle x1="-6.223" y1="-3.81" x2="-3.81" y2="-1.778" layer="21"/>
<rectangle x1="-1.397" y1="-3.81" x2="1.397" y2="-1.778" layer="21"/>
<rectangle x1="3.81" y1="-3.81" x2="6.223" y2="-1.778" layer="21"/>
<rectangle x1="-6.223" y1="-5.715" x2="-4.953" y2="-3.81" layer="21"/>
<rectangle x1="-6.223" y1="-7.62" x2="-4.953" y2="-5.715" layer="51"/>
<rectangle x1="-0.635" y1="-5.715" x2="0.635" y2="-3.81" layer="21"/>
<rectangle x1="-0.635" y1="-7.62" x2="0.635" y2="-5.715" layer="51"/>
<rectangle x1="4.953" y1="-5.715" x2="6.223" y2="-3.81" layer="21"/>
<rectangle x1="4.953" y1="-7.62" x2="6.223" y2="-5.715" layer="51"/>
<hole x="0" y="12.7" drill="4.1148"/>
</package>
</packages>
<symbols>
<symbol name="IGFET-EN-GDS">
<wire x1="-2.54" y1="-2.54" x2="-1.2192" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="0.762" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-0.762" width="0.254" layer="94"/>
<wire x1="0" y1="3.683" x2="0" y2="1.397" width="0.254" layer="94"/>
<wire x1="1.905" y1="0.635" x2="0.635" y2="0" width="0.254" layer="94"/>
<wire x1="1.905" y1="-0.635" x2="0.635" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0.635" y2="0" width="0.1524" layer="94"/>
<wire x1="0.635" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-1.397" x2="0" y2="-3.683" width="0.254" layer="94"/>
<wire x1="-1.143" y1="2.54" x2="-1.143" y2="-2.54" width="0.254" layer="94"/>
<text x="-11.43" y="0" size="1.778" layer="96">&gt;VALUE</text>
<text x="-11.43" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<pin name="D" x="5.08" y="2.54" visible="off" length="middle" direction="pas" rot="R180"/>
<pin name="S" x="5.08" y="-2.54" visible="off" length="middle" direction="pas" rot="R180"/>
<pin name="G" x="-5.08" y="-2.54" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="BUZ382" prefix="Q">
<description>&lt;b&gt;N-Channel Enhancement MOSFET&lt;/b&gt; 400V; 12,5A; 0,4Ohm</description>
<gates>
<gate name="G$1" symbol="IGFET-EN-GDS" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TOP3">
<connects>
<connect gate="G$1" pin="D" pad="2"/>
<connect gate="G$1" pin="G" pad="1"/>
<connect gate="G$1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="0-roboternetz-definitionen">
<packages>
<package name="ML10">
<description>&lt;b&gt;HARTING&lt;/b&gt;</description>
<wire x1="-8.89" y1="3.175" x2="8.89" y2="3.175" width="0.1524" layer="21"/>
<wire x1="8.89" y1="-3.175" x2="8.89" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="3.175" x2="-8.89" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="4.445" x2="-8.89" y2="4.445" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-4.445" x2="5.461" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-4.445" x2="10.16" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="4.445" x2="-10.16" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="8.89" y1="-3.175" x2="4.572" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-2.413" x2="-2.032" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-3.175" x2="-2.032" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-3.175" x2="-8.89" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-3.175" x2="-2.032" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-2.413" x2="2.032" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-3.175" x2="2.032" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="8.89" y1="4.445" x2="8.89" y2="4.699" width="0.1524" layer="21"/>
<wire x1="8.89" y1="4.699" x2="7.62" y2="4.699" width="0.1524" layer="21"/>
<wire x1="7.62" y1="4.445" x2="7.62" y2="4.699" width="0.1524" layer="21"/>
<wire x1="8.89" y1="4.445" x2="10.16" y2="4.445" width="0.1524" layer="21"/>
<wire x1="0.635" y1="4.699" x2="-0.635" y2="4.699" width="0.1524" layer="21"/>
<wire x1="0.635" y1="4.699" x2="0.635" y2="4.445" width="0.1524" layer="21"/>
<wire x1="0.635" y1="4.445" x2="7.62" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="4.699" x2="-0.635" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="4.699" x2="-8.89" y2="4.699" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="4.699" x2="-8.89" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="4.699" x2="-7.62" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="4.445" x2="-0.635" y2="4.445" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-4.445" x2="2.032" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-4.445" x2="-2.032" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="3.048" y1="-3.175" x2="3.048" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="3.048" y1="-3.175" x2="2.032" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="4.572" y1="-3.175" x2="4.572" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="4.572" y1="-3.175" x2="3.048" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-4.445" x2="2.54" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-3.937" x2="5.461" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-3.937" x2="4.572" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="3.048" y1="-3.429" x2="2.032" y2="-3.429" width="0.0508" layer="21"/>
<wire x1="2.032" y1="-3.429" x2="2.032" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="4.572" y1="-3.429" x2="9.144" y2="-3.429" width="0.0508" layer="21"/>
<wire x1="9.144" y1="-3.429" x2="9.144" y2="3.429" width="0.0508" layer="21"/>
<wire x1="9.144" y1="3.429" x2="-9.144" y2="3.429" width="0.0508" layer="21"/>
<wire x1="-9.144" y1="3.429" x2="-9.144" y2="-3.429" width="0.0508" layer="21"/>
<wire x1="-9.144" y1="-3.429" x2="-2.032" y2="-3.429" width="0.0508" layer="21"/>
<wire x1="-2.032" y1="-3.429" x2="-2.032" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="3.048" y1="-3.429" x2="3.048" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="3.048" y1="-3.937" x2="2.54" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="4.572" y1="-3.429" x2="4.572" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="4.572" y1="-3.937" x2="3.048" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-4.445" x2="-4.445" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-4.318" x2="-4.445" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-4.318" x2="-5.715" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-4.445" x2="-5.715" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-4.445" x2="-10.16" y2="-4.445" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="-1.27" drill="0.9144" diameter="1.4224" shape="octagon"/>
<pad name="2" x="-5.08" y="1.27" drill="1.016" diameter="1.4224" shape="octagon"/>
<pad name="3" x="-2.54" y="-1.27" drill="0.9144" diameter="1.4224" shape="octagon"/>
<pad name="4" x="-2.54" y="1.27" drill="0.9144" diameter="1.4224" shape="octagon"/>
<pad name="5" x="0" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="6" x="0" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="7" x="2.54" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="8" x="2.54" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="9" x="5.08" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="10" x="5.08" y="1.27" drill="0.9144" shape="octagon"/>
<text x="-1.016" y="-4.064" size="1.27" layer="21" ratio="10">10</text>
<text x="-10.16" y="5.08" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="5.08" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-7.62" y="-1.905" size="1.27" layer="21" ratio="10">1</text>
<text x="-7.62" y="0.635" size="1.27" layer="21" ratio="10">2</text>
<rectangle x1="-2.794" y1="1.016" x2="-2.286" y2="1.524" layer="51"/>
<rectangle x1="-5.334" y1="1.016" x2="-4.826" y2="1.524" layer="51"/>
<rectangle x1="-0.254" y1="1.016" x2="0.254" y2="1.524" layer="51"/>
<rectangle x1="4.826" y1="1.016" x2="5.334" y2="1.524" layer="51"/>
<rectangle x1="2.286" y1="1.016" x2="2.794" y2="1.524" layer="51"/>
<rectangle x1="-2.794" y1="-1.524" x2="-2.286" y2="-1.016" layer="51"/>
<rectangle x1="-5.334" y1="-1.524" x2="-4.826" y2="-1.016" layer="51"/>
<rectangle x1="-0.254" y1="-1.524" x2="0.254" y2="-1.016" layer="51"/>
<rectangle x1="4.826" y1="-1.524" x2="5.334" y2="-1.016" layer="51"/>
<rectangle x1="2.286" y1="-1.524" x2="2.794" y2="-1.016" layer="51"/>
</package>
<package name="ML10L">
<description>&lt;b&gt;HARTING&lt;/b&gt;</description>
<wire x1="-6.35" y1="10.16" x2="-3.81" y2="10.16" width="0.254" layer="21"/>
<wire x1="-3.81" y1="10.16" x2="-5.08" y2="7.62" width="0.254" layer="21"/>
<wire x1="-5.08" y1="7.62" x2="-6.35" y2="10.16" width="0.254" layer="21"/>
<wire x1="2.794" y1="9.906" x2="2.794" y2="10.922" width="0.1524" layer="21"/>
<wire x1="2.794" y1="9.906" x2="4.826" y2="9.906" width="0.1524" layer="21"/>
<wire x1="4.826" y1="10.922" x2="4.826" y2="9.906" width="0.1524" layer="21"/>
<wire x1="2.159" y1="3.683" x2="3.048" y2="3.683" width="0.1524" layer="21"/>
<wire x1="3.048" y1="5.969" x2="4.572" y2="5.969" width="0.1524" layer="21" curve="-180"/>
<wire x1="4.572" y1="5.969" x2="4.572" y2="4.445" width="0.1524" layer="21"/>
<wire x1="4.572" y1="3.683" x2="5.969" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="10.922" x2="-2.159" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="10.922" x2="2.159" y2="10.922" width="0.1524" layer="21"/>
<wire x1="2.159" y1="10.922" x2="2.159" y2="4.445" width="0.1524" layer="21"/>
<wire x1="2.159" y1="4.445" x2="-2.159" y2="4.445" width="0.1524" layer="21"/>
<wire x1="2.159" y1="3.429" x2="-2.159" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="4.445" x2="-2.159" y2="3.429" width="0.1524" layer="21"/>
<wire x1="2.159" y1="4.445" x2="2.159" y2="3.683" width="0.1524" layer="21"/>
<wire x1="2.159" y1="3.683" x2="2.159" y2="3.429" width="0.1524" layer="21"/>
<wire x1="2.159" y1="3.429" x2="2.159" y2="2.159" width="0.1524" layer="21"/>
<wire x1="3.048" y1="5.969" x2="3.048" y2="4.445" width="0.1524" layer="21"/>
<wire x1="3.048" y1="4.445" x2="3.048" y2="3.683" width="0.1524" layer="21"/>
<wire x1="3.048" y1="4.445" x2="4.572" y2="4.445" width="0.1524" layer="21"/>
<wire x1="4.572" y1="4.445" x2="4.572" y2="3.683" width="0.1524" layer="21"/>
<wire x1="5.969" y1="3.683" x2="5.969" y2="10.922" width="0.1524" layer="21"/>
<wire x1="5.969" y1="3.683" x2="5.969" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.032" x2="-4.445" y2="2.032" width="0.1524" layer="51"/>
<wire x1="-4.445" y1="2.032" x2="-3.175" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.032" x2="-1.905" y2="2.032" width="0.1524" layer="51"/>
<wire x1="-1.905" y1="2.032" x2="-0.635" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.032" x2="0.635" y2="2.032" width="0.1524" layer="51"/>
<wire x1="0.635" y1="2.032" x2="1.905" y2="2.032" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.032" x2="2.159" y2="2.032" width="0.1524" layer="51"/>
<wire x1="3.175" y1="2.032" x2="4.445" y2="2.032" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.032" x2="4.445" y2="2.032" width="0.1524" layer="51"/>
<wire x1="0" y1="10.033" x2="0" y2="10.287" width="0.508" layer="21"/>
<wire x1="6.731" y1="4.445" x2="9.525" y2="4.445" width="0.1524" layer="21"/>
<wire x1="9.525" y1="4.445" x2="9.525" y2="8.255" width="0.1524" layer="21"/>
<wire x1="6.731" y1="8.255" x2="9.525" y2="8.255" width="0.1524" layer="21"/>
<wire x1="6.731" y1="8.255" x2="6.731" y2="4.445" width="0.1524" layer="21"/>
<wire x1="2.159" y1="10.922" x2="10.16" y2="10.922" width="0.1524" layer="21"/>
<wire x1="10.16" y1="10.922" x2="10.16" y2="2.032" width="0.1524" layer="21"/>
<wire x1="10.16" y1="2.032" x2="9.017" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="10.922" x2="-10.16" y2="10.922" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="2.032" x2="-10.16" y2="10.922" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="2.032" x2="-9.017" y2="2.032" width="0.1524" layer="21"/>
<wire x1="5.969" y1="2.032" x2="5.715" y2="2.032" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.159" x2="2.159" y2="2.032" width="0.1524" layer="51"/>
<wire x1="2.159" y1="2.032" x2="3.175" y2="2.032" width="0.1524" layer="51"/>
<wire x1="8.001" y1="2.032" x2="8.001" y2="1.397" width="0.1524" layer="21"/>
<wire x1="9.017" y1="1.397" x2="8.001" y2="1.397" width="0.1524" layer="21"/>
<wire x1="9.017" y1="1.397" x2="9.017" y2="2.032" width="0.1524" layer="21"/>
<wire x1="8.001" y1="2.032" x2="5.969" y2="2.032" width="0.1524" layer="21"/>
<wire x1="9.017" y1="2.032" x2="8.001" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="2.032" x2="-9.017" y2="1.397" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="2.032" x2="-8.001" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="1.397" x2="-9.017" y2="1.397" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="1.397" x2="-8.001" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="2.032" x2="-5.715" y2="2.032" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="2" x="-5.08" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="3" x="-2.54" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="4" x="-2.54" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="5" x="0" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="6" x="0" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="7" x="2.54" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="8" x="2.54" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="9" x="5.08" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="10" x="5.08" y="1.27" drill="0.9144" shape="octagon"/>
<text x="-7.1628" y="-1.6764" size="1.27" layer="21" ratio="10">1</text>
<text x="-7.1882" y="0.3556" size="1.27" layer="21" ratio="10">2</text>
<text x="-10.1854" y="11.43" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.0254" y="11.43" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="8.89" y="5.08" size="1.524" layer="21" ratio="10" rot="R90">10</text>
<rectangle x1="-0.254" y1="4.445" x2="0.254" y2="10.287" layer="21"/>
<rectangle x1="-6.223" y1="9.652" x2="-3.937" y2="10.16" layer="21"/>
<rectangle x1="-5.969" y1="9.144" x2="-4.191" y2="9.652" layer="21"/>
<rectangle x1="-5.715" y1="8.636" x2="-4.445" y2="9.144" layer="21"/>
<rectangle x1="-5.461" y1="8.128" x2="-4.699" y2="8.636" layer="21"/>
<rectangle x1="-5.207" y1="7.874" x2="-4.953" y2="8.128" layer="21"/>
<rectangle x1="-5.334" y1="-0.381" x2="-4.826" y2="0.381" layer="21"/>
<rectangle x1="-5.334" y1="0.381" x2="-4.826" y2="2.032" layer="51"/>
<rectangle x1="-5.334" y1="-1.524" x2="-4.826" y2="-0.381" layer="51"/>
<rectangle x1="-2.794" y1="0.381" x2="-2.286" y2="2.032" layer="51"/>
<rectangle x1="-2.794" y1="-0.381" x2="-2.286" y2="0.381" layer="21"/>
<rectangle x1="-2.794" y1="-1.524" x2="-2.286" y2="-0.381" layer="51"/>
<rectangle x1="-0.254" y1="0.381" x2="0.254" y2="2.032" layer="51"/>
<rectangle x1="-0.254" y1="-0.381" x2="0.254" y2="0.381" layer="21"/>
<rectangle x1="-0.254" y1="-1.524" x2="0.254" y2="-0.381" layer="51"/>
<rectangle x1="2.286" y1="0.381" x2="2.794" y2="2.032" layer="51"/>
<rectangle x1="2.286" y1="-0.381" x2="2.794" y2="0.381" layer="21"/>
<rectangle x1="2.286" y1="-1.524" x2="2.794" y2="-0.381" layer="51"/>
<rectangle x1="4.826" y1="0.381" x2="5.334" y2="2.032" layer="51"/>
<rectangle x1="4.826" y1="-0.381" x2="5.334" y2="0.381" layer="21"/>
<rectangle x1="4.826" y1="-1.524" x2="5.334" y2="-0.381" layer="51"/>
</package>
<package name="3M_10L">
<description>&lt;b&gt;3M&lt;/b&gt;</description>
<wire x1="-15.875" y1="-2.2098" x2="-13.335" y2="-2.2098" width="0.3048" layer="21"/>
<wire x1="15.875" y1="-2.2098" x2="15.875" y2="6.35" width="0.3048" layer="21"/>
<wire x1="-15.875" y1="6.35" x2="-15.875" y2="-2.2098" width="0.3048" layer="21"/>
<wire x1="-13.335" y1="-2.2098" x2="-13.335" y2="1.778" width="0.3048" layer="21"/>
<wire x1="-13.335" y1="-2.2098" x2="-8.6614" y2="-2.2098" width="0.3048" layer="21"/>
<wire x1="-13.335" y1="1.778" x2="-10.9982" y2="3.3528" width="0.3048" layer="21"/>
<wire x1="-10.9982" y1="3.3528" x2="-8.6614" y2="1.778" width="0.3048" layer="21"/>
<wire x1="-8.6614" y1="1.778" x2="-8.6614" y2="-2.2098" width="0.3048" layer="21"/>
<wire x1="-8.6614" y1="-2.2098" x2="8.6614" y2="-2.2098" width="0.3048" layer="21"/>
<wire x1="8.6614" y1="-2.2098" x2="8.6614" y2="1.7526" width="0.3048" layer="21"/>
<wire x1="8.6614" y1="1.7526" x2="10.9982" y2="3.3528" width="0.3048" layer="21"/>
<wire x1="10.9982" y1="3.3528" x2="13.335" y2="1.7526" width="0.3048" layer="21"/>
<wire x1="13.335" y1="1.7526" x2="13.335" y2="-2.2098" width="0.3048" layer="21"/>
<wire x1="8.6614" y1="-2.2098" x2="13.335" y2="-2.2098" width="0.3048" layer="21"/>
<wire x1="13.335" y1="-2.2098" x2="15.875" y2="-2.2098" width="0.3048" layer="21"/>
<wire x1="-15.875" y1="6.35" x2="-13.0048" y2="14.8082" width="0.3048" layer="21"/>
<wire x1="15.875" y1="6.35" x2="13.0048" y2="14.8082" width="0.3048" layer="21"/>
<wire x1="-8.89" y1="14.8082" x2="-13.0048" y2="14.8082" width="0.3048" layer="21"/>
<wire x1="-8.89" y1="12.7" x2="-8.89" y2="14.8082" width="0.3048" layer="21"/>
<wire x1="2.54" y1="5.08" x2="-2.54" y2="5.08" width="0.3048" layer="21"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="10.4902" width="0.3048" layer="21"/>
<wire x1="-3.81" y1="11.684" x2="-2.54" y2="10.414" width="0.3048" layer="21" curve="-90"/>
<wire x1="-8.89" y1="12.7" x2="-7.874" y2="11.684" width="0.3048" layer="21" curve="90"/>
<wire x1="2.54" y1="5.08" x2="2.54" y2="10.4902" width="0.3048" layer="21"/>
<wire x1="2.54" y1="10.414" x2="3.81" y2="11.684" width="0.3048" layer="21" curve="-90"/>
<wire x1="-8.89" y1="5.08" x2="-8.89" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="8.89" x2="-8.89" y2="11.43" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="5.08" x2="-6.35" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="5.08" x2="-2.54" y2="5.08" width="0.1524" layer="21"/>
<wire x1="8.89" y1="14.8082" x2="13.0048" y2="14.8082" width="0.3048" layer="21"/>
<wire x1="-7.874" y1="11.684" x2="7.874" y2="11.684" width="0.3048" layer="21"/>
<wire x1="8.89" y1="12.7" x2="8.89" y2="14.8082" width="0.3048" layer="21"/>
<wire x1="7.874" y1="11.684" x2="8.89" y2="12.7" width="0.3048" layer="21" curve="90"/>
<wire x1="0" y1="5.08" x2="2.54" y2="5.08" width="0.1524" layer="21"/>
<wire x1="8.89" y1="5.08" x2="8.89" y2="7.62" width="0.1524" layer="21"/>
<wire x1="8.89" y1="8.89" x2="8.89" y2="11.43" width="0.1524" layer="21"/>
<wire x1="8.89" y1="5.08" x2="6.35" y2="5.08" width="0.1524" layer="21"/>
<wire x1="5.08" y1="5.08" x2="2.54" y2="5.08" width="0.1524" layer="21"/>
<circle x="-10.9982" y="0.5334" radius="1.9304" width="0" layer="42"/>
<circle x="10.9982" y="0.5334" radius="1.9304" width="0" layer="42"/>
<circle x="-10.9982" y="0.5334" radius="1.9304" width="0" layer="41"/>
<circle x="10.9982" y="0.5334" radius="1.9304" width="0" layer="41"/>
<pad name="1" x="-5.08" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-5.08" y="1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-2.54" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="0" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="0" y="1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="9" x="5.08" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="10" x="5.08" y="1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="2.54" y="-1.27" drill="1.016" shape="octagon"/>
<text x="-15.24" y="-6.35" size="2.54" layer="25" font="vector">&gt;NAME</text>
<text x="2.54" y="-6.35" size="2.54" layer="27" font="vector">&gt;VALUE</text>
<hole x="-10.9982" y="0.5334" drill="2.54"/>
<hole x="10.9982" y="0.5334" drill="2.54"/>
</package>
<package name="2X05">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-6.35" y1="-1.905" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-1.905" x2="-6.35" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="1.905" x2="-5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.54" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.905" x2="-3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.905" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.54" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-2.54" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.905" x2="4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="2.54" x2="5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.54" x2="6.35" y2="1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="1.905" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-5.08" y="1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-2.54" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="0" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="0" y="1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="2.54" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="9" x="5.08" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="10" x="5.08" y="1.27" drill="1.016" shape="octagon"/>
<text x="-6.35" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.35" y="-4.445" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-5.334" y1="-1.524" x2="-4.826" y2="-1.016" layer="51"/>
<rectangle x1="-5.334" y1="1.016" x2="-4.826" y2="1.524" layer="51"/>
<rectangle x1="-2.794" y1="1.016" x2="-2.286" y2="1.524" layer="51"/>
<rectangle x1="-2.794" y1="-1.524" x2="-2.286" y2="-1.016" layer="51"/>
<rectangle x1="-0.254" y1="1.016" x2="0.254" y2="1.524" layer="51"/>
<rectangle x1="-0.254" y1="-1.524" x2="0.254" y2="-1.016" layer="51"/>
<rectangle x1="2.286" y1="1.016" x2="2.794" y2="1.524" layer="51"/>
<rectangle x1="2.286" y1="-1.524" x2="2.794" y2="-1.016" layer="51"/>
<rectangle x1="4.826" y1="1.016" x2="5.334" y2="1.524" layer="51"/>
<rectangle x1="4.826" y1="-1.524" x2="5.334" y2="-1.016" layer="51"/>
</package>
<package name="2X05/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-6.35" y1="3.175" x2="-3.81" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="3.175" x2="-3.81" y2="5.715" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="5.715" x2="-6.35" y2="5.715" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="5.715" x2="-6.35" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="12.065" x2="-5.08" y2="6.35" width="0.762" layer="21"/>
<wire x1="-3.81" y1="3.175" x2="-1.27" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="3.175" x2="-1.27" y2="5.715" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="5.715" x2="-3.81" y2="5.715" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="12.065" x2="-2.54" y2="6.35" width="0.762" layer="21"/>
<wire x1="-1.27" y1="3.175" x2="1.27" y2="3.175" width="0.1524" layer="21"/>
<wire x1="1.27" y1="3.175" x2="1.27" y2="5.715" width="0.1524" layer="21"/>
<wire x1="1.27" y1="5.715" x2="-1.27" y2="5.715" width="0.1524" layer="21"/>
<wire x1="0" y1="12.065" x2="0" y2="6.35" width="0.762" layer="21"/>
<wire x1="1.27" y1="3.175" x2="3.81" y2="3.175" width="0.1524" layer="21"/>
<wire x1="3.81" y1="3.175" x2="3.81" y2="5.715" width="0.1524" layer="21"/>
<wire x1="3.81" y1="5.715" x2="1.27" y2="5.715" width="0.1524" layer="21"/>
<wire x1="2.54" y1="12.065" x2="2.54" y2="6.35" width="0.762" layer="21"/>
<wire x1="3.81" y1="3.175" x2="6.35" y2="3.175" width="0.1524" layer="21"/>
<wire x1="6.35" y1="3.175" x2="6.35" y2="5.715" width="0.1524" layer="21"/>
<wire x1="6.35" y1="5.715" x2="3.81" y2="5.715" width="0.1524" layer="21"/>
<wire x1="5.08" y1="12.065" x2="5.08" y2="6.35" width="0.762" layer="21"/>
<pad name="2" x="-5.08" y="1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="0" y="1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="10" x="5.08" y="1.27" drill="1.016" shape="octagon"/>
<pad name="1" x="-5.08" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-2.54" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="0" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="2.54" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="9" x="5.08" y="-1.27" drill="1.016" shape="octagon"/>
<text x="-6.985" y="1.27" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="8.255" y="1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-5.461" y1="5.715" x2="-4.699" y2="6.223" layer="21"/>
<rectangle x1="-2.921" y1="5.715" x2="-2.159" y2="6.223" layer="21"/>
<rectangle x1="-0.381" y1="5.715" x2="0.381" y2="6.223" layer="21"/>
<rectangle x1="2.159" y1="5.715" x2="2.921" y2="6.223" layer="21"/>
<rectangle x1="4.699" y1="5.715" x2="5.461" y2="6.223" layer="21"/>
<rectangle x1="-5.461" y1="2.159" x2="-4.699" y2="3.175" layer="21"/>
<rectangle x1="-2.921" y1="2.159" x2="-2.159" y2="3.175" layer="21"/>
<rectangle x1="-5.461" y1="-0.381" x2="-4.699" y2="0.381" layer="21"/>
<rectangle x1="-5.461" y1="0.381" x2="-4.699" y2="2.159" layer="51"/>
<rectangle x1="-2.921" y1="0.381" x2="-2.159" y2="2.159" layer="51"/>
<rectangle x1="-2.921" y1="-0.381" x2="-2.159" y2="0.381" layer="21"/>
<rectangle x1="-0.381" y1="2.159" x2="0.381" y2="3.175" layer="21"/>
<rectangle x1="2.159" y1="2.159" x2="2.921" y2="3.175" layer="21"/>
<rectangle x1="-0.381" y1="-0.381" x2="0.381" y2="0.381" layer="21"/>
<rectangle x1="-0.381" y1="0.381" x2="0.381" y2="2.159" layer="51"/>
<rectangle x1="2.159" y1="0.381" x2="2.921" y2="2.159" layer="51"/>
<rectangle x1="2.159" y1="-0.381" x2="2.921" y2="0.381" layer="21"/>
<rectangle x1="4.699" y1="2.159" x2="5.461" y2="3.175" layer="21"/>
<rectangle x1="4.699" y1="-0.381" x2="5.461" y2="0.381" layer="21"/>
<rectangle x1="4.699" y1="0.381" x2="5.461" y2="2.159" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="AVR_ISP">
<wire x1="-7.62" y1="10.16" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="-10.16" x2="-7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<text x="6.35" y="-6.35" size="1.6764" layer="95" font="vector" rot="R90">GND</text>
<text x="2.54" y="6.858" size="1.6764" layer="95" font="vector">+5V</text>
<text x="-6.35" y="-9.398" size="0.8128" layer="95" font="vector">( optional )</text>
<text x="-6.35" y="11.43" size="1.6764" layer="95" font="vector">&gt;Name</text>
<text x="-6.604" y="-12.7" size="1.6764" layer="95" font="vector">&gt;Value</text>
<pin name="GND@1" x="12.7" y="0" visible="pad" length="middle" direction="pwr" rot="R180"/>
<pin name="GND@2" x="12.7" y="-2.54" visible="pad" length="middle" direction="pwr" rot="R180"/>
<pin name="GND@3" x="12.7" y="-5.08" visible="pad" length="middle" direction="pwr" rot="R180"/>
<pin name="GND@4" x="12.7" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R180"/>
<pin name="MISO" x="-12.7" y="0" length="middle"/>
<pin name="SCK" x="-12.7" y="2.54" length="middle" direction="in"/>
<pin name="MOSI" x="-12.7" y="-2.54" length="middle"/>
<pin name="RESET" x="-12.7" y="7.62" length="middle" direction="in"/>
<pin name="LED" x="-12.7" y="-7.62" length="middle" direction="out"/>
<pin name="+5V" x="12.7" y="7.62" visible="pad" length="middle" direction="pwr" rot="R180"/>
</symbol>
<symbol name="PORT_ANSCHLUSS">
<wire x1="-7.62" y1="12.7" x2="-7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-10.16" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="-10.16" x2="5.08" y2="12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="12.7" x2="-7.62" y2="12.7" width="0.254" layer="94"/>
<text x="0.635" y="-1.27" size="1.4224" layer="95" rot="R90">&gt;Name</text>
<text x="3.175" y="-2.54" size="1.778" layer="96" rot="R90">&gt;Value</text>
<pin name="P7" x="-10.16" y="10.16" length="short"/>
<pin name="P6" x="-10.16" y="7.62" length="short"/>
<pin name="P5" x="-10.16" y="5.08" length="short"/>
<pin name="P4" x="-10.16" y="2.54" length="short"/>
<pin name="P3" x="-10.16" y="0" length="short"/>
<pin name="P2" x="-10.16" y="-2.54" length="short"/>
<pin name="P1" x="-10.16" y="-5.08" length="short"/>
<pin name="P0" x="-10.16" y="-7.62" length="short"/>
<pin name="VCC" x="7.62" y="10.16" length="short" direction="pwr" rot="R180"/>
<pin name="GND" x="7.62" y="-7.62" length="short" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="AVR-ISP" prefix="JP">
<description>&lt;b&gt;ISP ( In System Programming ) Stecker für AVRs&lt;/b&gt;&lt;br&gt;
Über diesen Anschluß kann ein AVR mit einem Standard ISP-Kabel direkt an einen Parallelport des PC´s
angeschlossen und programmiert werden.&lt;br&gt;
Die Belegung des ISP-Anschlusses ist zu dem weit verbreitetet STK200 Programmier Dongle kompatibel. &lt;br&gt;&lt;br&gt;Ein
entsprechender Dongle ist über zahlreiche Händler lieferbar. Es gibt aber auch viele Selbstbauanleitungen im Internet.</description>
<gates>
<gate name="G$1" symbol="AVR_ISP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ML10">
<connects>
<connect gate="G$1" pin="+5V" pad="2"/>
<connect gate="G$1" pin="GND@1" pad="4"/>
<connect gate="G$1" pin="GND@2" pad="6"/>
<connect gate="G$1" pin="GND@3" pad="8"/>
<connect gate="G$1" pin="GND@4" pad="10"/>
<connect gate="G$1" pin="LED" pad="3"/>
<connect gate="G$1" pin="MISO" pad="9"/>
<connect gate="G$1" pin="MOSI" pad="1"/>
<connect gate="G$1" pin="RESET" pad="5"/>
<connect gate="G$1" pin="SCK" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="L" package="ML10L">
<connects>
<connect gate="G$1" pin="+5V" pad="2"/>
<connect gate="G$1" pin="GND@1" pad="4"/>
<connect gate="G$1" pin="GND@2" pad="6"/>
<connect gate="G$1" pin="GND@3" pad="8"/>
<connect gate="G$1" pin="GND@4" pad="10"/>
<connect gate="G$1" pin="LED" pad="3"/>
<connect gate="G$1" pin="MISO" pad="9"/>
<connect gate="G$1" pin="MOSI" pad="1"/>
<connect gate="G$1" pin="RESET" pad="5"/>
<connect gate="G$1" pin="SCK" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PORT" prefix="JP" uservalue="yes">
<description>&lt;b&gt;Datenportstecker&lt;/b&gt;&lt;br&gt;
Kompatibel zu den Steckern des STK500</description>
<gates>
<gate name="G$1" symbol="PORT_ANSCHLUSS" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ML10">
<connects>
<connect gate="G$1" pin="GND" pad="9"/>
<connect gate="G$1" pin="P0" pad="1"/>
<connect gate="G$1" pin="P1" pad="2"/>
<connect gate="G$1" pin="P2" pad="3"/>
<connect gate="G$1" pin="P3" pad="4"/>
<connect gate="G$1" pin="P4" pad="5"/>
<connect gate="G$1" pin="P5" pad="6"/>
<connect gate="G$1" pin="P6" pad="7"/>
<connect gate="G$1" pin="P7" pad="8"/>
<connect gate="G$1" pin="VCC" pad="10"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="L" package="ML10L">
<connects>
<connect gate="G$1" pin="GND" pad="9"/>
<connect gate="G$1" pin="P0" pad="1"/>
<connect gate="G$1" pin="P1" pad="2"/>
<connect gate="G$1" pin="P2" pad="3"/>
<connect gate="G$1" pin="P3" pad="4"/>
<connect gate="G$1" pin="P4" pad="5"/>
<connect gate="G$1" pin="P5" pad="6"/>
<connect gate="G$1" pin="P6" pad="7"/>
<connect gate="G$1" pin="P7" pad="8"/>
<connect gate="G$1" pin="VCC" pad="10"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M" package="3M_10L">
<connects>
<connect gate="G$1" pin="GND" pad="9"/>
<connect gate="G$1" pin="P0" pad="1"/>
<connect gate="G$1" pin="P1" pad="2"/>
<connect gate="G$1" pin="P2" pad="3"/>
<connect gate="G$1" pin="P3" pad="4"/>
<connect gate="G$1" pin="P4" pad="5"/>
<connect gate="G$1" pin="P5" pad="6"/>
<connect gate="G$1" pin="P6" pad="7"/>
<connect gate="G$1" pin="P7" pad="8"/>
<connect gate="G$1" pin="VCC" pad="10"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S" package="2X05">
<connects>
<connect gate="G$1" pin="GND" pad="9"/>
<connect gate="G$1" pin="P0" pad="1"/>
<connect gate="G$1" pin="P1" pad="2"/>
<connect gate="G$1" pin="P2" pad="3"/>
<connect gate="G$1" pin="P3" pad="4"/>
<connect gate="G$1" pin="P4" pad="5"/>
<connect gate="G$1" pin="P5" pad="6"/>
<connect gate="G$1" pin="P6" pad="7"/>
<connect gate="G$1" pin="P7" pad="8"/>
<connect gate="G$1" pin="VCC" pad="10"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SV" package="2X05/90">
<connects>
<connect gate="G$1" pin="GND" pad="9"/>
<connect gate="G$1" pin="P0" pad="1"/>
<connect gate="G$1" pin="P1" pad="2"/>
<connect gate="G$1" pin="P2" pad="3"/>
<connect gate="G$1" pin="P3" pad="4"/>
<connect gate="G$1" pin="P4" pad="5"/>
<connect gate="G$1" pin="P5" pad="6"/>
<connect gate="G$1" pin="P6" pad="7"/>
<connect gate="G$1" pin="P7" pad="8"/>
<connect gate="G$1" pin="VCC" pad="10"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ftdichip">
<packages>
<package name="SSOP28">
<description>&lt;b&gt;Shrink Small Outline Package&lt;/b&gt; SSOP-28&lt;p&gt;
http://www.ftdichip.com/Documents/DataSheets/DS_FT232R_v104.pdf</description>
<wire x1="-5.1" y1="-2.6" x2="5.1" y2="-2.6" width="0.2032" layer="21"/>
<wire x1="5.1" y1="-2.6" x2="5.1" y2="2.6" width="0.2032" layer="21"/>
<wire x1="5.1" y1="2.6" x2="-5.1" y2="2.6" width="0.2032" layer="21"/>
<wire x1="-5.1" y1="2.6" x2="-5.1" y2="-2.6" width="0.2032" layer="21"/>
<circle x="-4.2" y="-1.625" radius="0.4422" width="0" layer="21"/>
<smd name="1" x="-4.225" y="-3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="2" x="-3.575" y="-3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="3" x="-2.925" y="-3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="4" x="-2.275" y="-3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="5" x="-1.625" y="-3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="6" x="-0.975" y="-3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="7" x="-0.325" y="-3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="8" x="0.325" y="-3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="9" x="0.975" y="-3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="10" x="1.625" y="-3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="11" x="2.275" y="-3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="12" x="2.925" y="-3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="13" x="3.575" y="-3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="14" x="4.225" y="-3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="15" x="4.225" y="3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="16" x="3.575" y="3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="17" x="2.925" y="3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="18" x="2.275" y="3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="19" x="1.625" y="3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="20" x="0.975" y="3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="21" x="0.325" y="3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="22" x="-0.325" y="3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="23" x="-0.975" y="3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="24" x="-1.625" y="3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="25" x="-2.275" y="3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="26" x="-2.925" y="3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="27" x="-3.575" y="3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="28" x="-4.225" y="3.625" dx="0.4" dy="1.5" layer="1"/>
<text x="-5.476" y="-2.6299" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="-3.8999" y="-0.68" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-4.4028" y1="-3.937" x2="-4.0472" y2="-2.6416" layer="51"/>
<rectangle x1="-3.7529" y1="-3.937" x2="-3.3973" y2="-2.6416" layer="51"/>
<rectangle x1="-3.1029" y1="-3.937" x2="-2.7473" y2="-2.6416" layer="51"/>
<rectangle x1="-2.4529" y1="-3.937" x2="-2.0973" y2="-2.6416" layer="51"/>
<rectangle x1="-1.8029" y1="-3.937" x2="-1.4473" y2="-2.6416" layer="51"/>
<rectangle x1="-1.1529" y1="-3.937" x2="-0.7973" y2="-2.6416" layer="51"/>
<rectangle x1="-0.5029" y1="-3.937" x2="-0.1473" y2="-2.6416" layer="51"/>
<rectangle x1="0.1473" y1="-3.937" x2="0.5029" y2="-2.6416" layer="51"/>
<rectangle x1="0.7973" y1="-3.937" x2="1.1529" y2="-2.6416" layer="51"/>
<rectangle x1="1.4473" y1="-3.937" x2="1.8029" y2="-2.6416" layer="51"/>
<rectangle x1="2.0973" y1="-3.937" x2="2.4529" y2="-2.6416" layer="51"/>
<rectangle x1="2.7473" y1="-3.937" x2="3.1029" y2="-2.6416" layer="51"/>
<rectangle x1="3.3973" y1="-3.937" x2="3.7529" y2="-2.6416" layer="51"/>
<rectangle x1="4.0472" y1="-3.937" x2="4.4028" y2="-2.6416" layer="51"/>
<rectangle x1="4.0472" y1="2.6416" x2="4.4028" y2="3.937" layer="51"/>
<rectangle x1="3.3973" y1="2.6416" x2="3.7529" y2="3.937" layer="51"/>
<rectangle x1="2.7473" y1="2.6416" x2="3.1029" y2="3.937" layer="51"/>
<rectangle x1="2.0973" y1="2.6416" x2="2.4529" y2="3.937" layer="51"/>
<rectangle x1="1.4473" y1="2.6416" x2="1.8029" y2="3.937" layer="51"/>
<rectangle x1="0.7973" y1="2.6416" x2="1.1529" y2="3.937" layer="51"/>
<rectangle x1="0.1473" y1="2.6416" x2="0.5029" y2="3.937" layer="51"/>
<rectangle x1="-0.5029" y1="2.6416" x2="-0.1473" y2="3.937" layer="51"/>
<rectangle x1="-1.1529" y1="2.6416" x2="-0.7973" y2="3.937" layer="51"/>
<rectangle x1="-1.8029" y1="2.6416" x2="-1.4473" y2="3.937" layer="51"/>
<rectangle x1="-2.4529" y1="2.6416" x2="-2.0973" y2="3.937" layer="51"/>
<rectangle x1="-3.1029" y1="2.6416" x2="-2.7473" y2="3.937" layer="51"/>
<rectangle x1="-3.7529" y1="2.6416" x2="-3.3973" y2="3.937" layer="51"/>
<rectangle x1="-4.4028" y1="2.6416" x2="-4.0472" y2="3.937" layer="51"/>
</package>
<package name="QFN32">
<description>&lt;b&gt;QFN 32&lt;/b&gt;&lt;p&gt;
Source: http://www.ftdichip.com/Documents/DataSheets/DS_FT232R_v104.pdf</description>
<wire x1="-2.45" y1="2.45" x2="2.45" y2="2.45" width="0.1016" layer="51"/>
<wire x1="2.45" y1="2.45" x2="2.45" y2="-2.45" width="0.1016" layer="51"/>
<wire x1="2.45" y1="-2.45" x2="-2.45" y2="-2.45" width="0.1016" layer="51"/>
<wire x1="-2.45" y1="-2.45" x2="-2.45" y2="2.45" width="0.1016" layer="51"/>
<wire x1="-2.45" y1="2.05" x2="-2.45" y2="2.45" width="0.1016" layer="21"/>
<wire x1="-2.45" y1="2.45" x2="-2.05" y2="2.45" width="0.1016" layer="21"/>
<wire x1="2.05" y1="2.45" x2="2.45" y2="2.45" width="0.1016" layer="21"/>
<wire x1="2.45" y1="2.45" x2="2.45" y2="2.05" width="0.1016" layer="21"/>
<wire x1="2.45" y1="-2.05" x2="2.45" y2="-2.45" width="0.1016" layer="21"/>
<wire x1="2.45" y1="-2.45" x2="2.05" y2="-2.45" width="0.1016" layer="21"/>
<wire x1="-2.05" y1="-2.45" x2="-2.45" y2="-2.45" width="0.1016" layer="21"/>
<wire x1="-2.45" y1="-2.45" x2="-2.45" y2="-2.05" width="0.1016" layer="21"/>
<circle x="-2.175" y="2.175" radius="0.15" width="0" layer="21"/>
<smd name="EXP" x="0" y="0" dx="3.2" dy="3.2" layer="1" roundness="20" stop="no" cream="no"/>
<smd name="1" x="-2.3" y="1.75" dx="0.6" dy="0.3" layer="1" roundness="30" stop="no" cream="no"/>
<smd name="2" x="-2.3" y="1.25" dx="0.6" dy="0.3" layer="1" roundness="30" stop="no" cream="no"/>
<smd name="3" x="-2.3" y="0.75" dx="0.6" dy="0.3" layer="1" roundness="30" stop="no" cream="no"/>
<smd name="4" x="-2.3" y="0.25" dx="0.6" dy="0.3" layer="1" roundness="30" stop="no" cream="no"/>
<smd name="5" x="-2.3" y="-0.25" dx="0.6" dy="0.3" layer="1" roundness="30" stop="no" cream="no"/>
<smd name="6" x="-2.3" y="-0.75" dx="0.6" dy="0.3" layer="1" roundness="30" stop="no" cream="no"/>
<smd name="7" x="-2.3" y="-1.25" dx="0.6" dy="0.3" layer="1" roundness="30" stop="no" cream="no"/>
<smd name="8" x="-2.3" y="-1.75" dx="0.6" dy="0.3" layer="1" roundness="30" stop="no" cream="no"/>
<smd name="9" x="-1.75" y="-2.3" dx="0.6" dy="0.3" layer="1" roundness="30" rot="R90" stop="no" cream="no"/>
<smd name="10" x="-1.25" y="-2.3" dx="0.6" dy="0.3" layer="1" roundness="30" rot="R90" stop="no" cream="no"/>
<smd name="11" x="-0.75" y="-2.3" dx="0.6" dy="0.3" layer="1" roundness="30" rot="R90" stop="no" cream="no"/>
<smd name="12" x="-0.25" y="-2.3" dx="0.6" dy="0.3" layer="1" roundness="30" rot="R90" stop="no" cream="no"/>
<smd name="13" x="0.25" y="-2.3" dx="0.6" dy="0.3" layer="1" roundness="30" rot="R90" stop="no" cream="no"/>
<smd name="14" x="0.75" y="-2.3" dx="0.6" dy="0.3" layer="1" roundness="30" rot="R90" stop="no" cream="no"/>
<smd name="15" x="1.25" y="-2.3" dx="0.6" dy="0.3" layer="1" roundness="30" rot="R90" stop="no" cream="no"/>
<smd name="16" x="1.75" y="-2.3" dx="0.6" dy="0.3" layer="1" roundness="30" rot="R90" stop="no" cream="no"/>
<smd name="17" x="2.3" y="-1.75" dx="0.6" dy="0.3" layer="1" roundness="30" rot="R180" stop="no" cream="no"/>
<smd name="18" x="2.3" y="-1.25" dx="0.6" dy="0.3" layer="1" roundness="30" rot="R180" stop="no" cream="no"/>
<smd name="19" x="2.3" y="-0.75" dx="0.6" dy="0.3" layer="1" roundness="30" rot="R180" stop="no" cream="no"/>
<smd name="20" x="2.3" y="-0.25" dx="0.6" dy="0.3" layer="1" roundness="30" rot="R180" stop="no" cream="no"/>
<smd name="21" x="2.3" y="0.25" dx="0.6" dy="0.3" layer="1" roundness="30" rot="R180" stop="no" cream="no"/>
<smd name="22" x="2.3" y="0.75" dx="0.6" dy="0.3" layer="1" roundness="30" rot="R180" stop="no" cream="no"/>
<smd name="23" x="2.3" y="1.25" dx="0.6" dy="0.3" layer="1" roundness="30" rot="R180" stop="no" cream="no"/>
<smd name="24" x="2.3" y="1.75" dx="0.6" dy="0.3" layer="1" roundness="30" rot="R180" stop="no" cream="no"/>
<smd name="25" x="1.75" y="2.3" dx="0.6" dy="0.3" layer="1" roundness="30" rot="R270" stop="no" cream="no"/>
<smd name="26" x="1.25" y="2.3" dx="0.6" dy="0.3" layer="1" roundness="30" rot="R270" stop="no" cream="no"/>
<smd name="27" x="0.75" y="2.3" dx="0.6" dy="0.3" layer="1" roundness="30" rot="R270" stop="no" cream="no"/>
<smd name="28" x="0.25" y="2.3" dx="0.6" dy="0.3" layer="1" roundness="30" rot="R270" stop="no" cream="no"/>
<smd name="29" x="-0.25" y="2.3" dx="0.6" dy="0.3" layer="1" roundness="30" rot="R270" stop="no" cream="no"/>
<smd name="30" x="-0.75" y="2.3" dx="0.6" dy="0.3" layer="1" roundness="30" rot="R270" stop="no" cream="no"/>
<smd name="31" x="-1.25" y="2.3" dx="0.6" dy="0.3" layer="1" roundness="30" rot="R270" stop="no" cream="no"/>
<smd name="32" x="-1.75" y="2.3" dx="0.6" dy="0.3" layer="1" roundness="30" rot="R270" stop="no" cream="no"/>
<text x="-4.05" y="-4.35" size="1.27" layer="27">&gt;VALUE</text>
<text x="-3.8" y="3.25" size="1.27" layer="25">&gt;NAME</text>
<rectangle x1="-0.3" y1="1.1" x2="0.3" y2="1.4" layer="31"/>
<rectangle x1="-0.3" y1="0.6" x2="0.3" y2="0.9" layer="31"/>
<rectangle x1="-0.3" y1="0.1" x2="0.3" y2="0.4" layer="31"/>
<rectangle x1="-0.3" y1="-0.4" x2="0.3" y2="-0.1" layer="31"/>
<rectangle x1="-0.3" y1="-0.9" x2="0.3" y2="-0.6" layer="31"/>
<rectangle x1="-0.3" y1="-1.4" x2="0.3" y2="-1.1" layer="31"/>
<rectangle x1="-1.3" y1="1.1" x2="-0.7" y2="1.4" layer="31"/>
<rectangle x1="-1.3" y1="0.6" x2="-0.7" y2="0.9" layer="31"/>
<rectangle x1="-1.3" y1="0.1" x2="-0.7" y2="0.4" layer="31"/>
<rectangle x1="-1.3" y1="-0.4" x2="-0.7" y2="-0.1" layer="31"/>
<rectangle x1="-1.3" y1="-0.9" x2="-0.7" y2="-0.6" layer="31"/>
<rectangle x1="-1.3" y1="-1.4" x2="-0.7" y2="-1.1" layer="31"/>
<rectangle x1="0.7" y1="1.1" x2="1.3" y2="1.4" layer="31"/>
<rectangle x1="0.7" y1="0.6" x2="1.3" y2="0.9" layer="31"/>
<rectangle x1="0.7" y1="0.1" x2="1.3" y2="0.4" layer="31"/>
<rectangle x1="0.7" y1="-0.4" x2="1.3" y2="-0.1" layer="31"/>
<rectangle x1="0.7" y1="-0.9" x2="1.3" y2="-0.6" layer="31"/>
<rectangle x1="0.7" y1="-1.4" x2="1.3" y2="-1.1" layer="31"/>
<polygon width="0.5" layer="29">
<vertex x="-1.325" y="1.325"/>
<vertex x="1.325" y="1.325"/>
<vertex x="1.325" y="-1.325"/>
<vertex x="-1.325" y="-1.325"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="-2.55" y="1.85"/>
<vertex x="-2.1" y="1.85"/>
<vertex x="-2.05" y="1.8"/>
<vertex x="-2.05" y="1.65"/>
<vertex x="-2.55" y="1.65"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="-2.525" y="1.825"/>
<vertex x="-2.125" y="1.825"/>
<vertex x="-2.075" y="1.775"/>
<vertex x="-2.075" y="1.675"/>
<vertex x="-2.525" y="1.675"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="-2.55" y="1.35"/>
<vertex x="-2.05" y="1.35"/>
<vertex x="-2.05" y="1.15"/>
<vertex x="-2.55" y="1.15"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="-2.525" y="1.325"/>
<vertex x="-2.075" y="1.325"/>
<vertex x="-2.075" y="1.175"/>
<vertex x="-2.525" y="1.175"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="-2.55" y="0.85"/>
<vertex x="-2.05" y="0.85"/>
<vertex x="-2.05" y="0.65"/>
<vertex x="-2.55" y="0.65"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="-2.525" y="0.825"/>
<vertex x="-2.075" y="0.825"/>
<vertex x="-2.075" y="0.675"/>
<vertex x="-2.525" y="0.675"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="-2.55" y="0.35"/>
<vertex x="-2.05" y="0.35"/>
<vertex x="-2.05" y="0.15"/>
<vertex x="-2.55" y="0.15"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="-2.525" y="0.325"/>
<vertex x="-2.075" y="0.325"/>
<vertex x="-2.075" y="0.175"/>
<vertex x="-2.525" y="0.175"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="-2.55" y="-0.15"/>
<vertex x="-2.05" y="-0.15"/>
<vertex x="-2.05" y="-0.35"/>
<vertex x="-2.55" y="-0.35"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="-2.525" y="-0.175"/>
<vertex x="-2.075" y="-0.175"/>
<vertex x="-2.075" y="-0.325"/>
<vertex x="-2.525" y="-0.325"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="-2.55" y="-0.65"/>
<vertex x="-2.05" y="-0.65"/>
<vertex x="-2.05" y="-0.85"/>
<vertex x="-2.55" y="-0.85"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="-2.525" y="-0.675"/>
<vertex x="-2.075" y="-0.675"/>
<vertex x="-2.075" y="-0.825"/>
<vertex x="-2.525" y="-0.825"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="-2.55" y="-1.15"/>
<vertex x="-2.05" y="-1.15"/>
<vertex x="-2.05" y="-1.35"/>
<vertex x="-2.55" y="-1.35"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="-2.525" y="-1.175"/>
<vertex x="-2.075" y="-1.175"/>
<vertex x="-2.075" y="-1.325"/>
<vertex x="-2.525" y="-1.325"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="-2.55" y="-1.85"/>
<vertex x="-2.1" y="-1.85"/>
<vertex x="-2.05" y="-1.8"/>
<vertex x="-2.05" y="-1.65"/>
<vertex x="-2.55" y="-1.65"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="-2.525" y="-1.825"/>
<vertex x="-2.125" y="-1.825"/>
<vertex x="-2.075" y="-1.775"/>
<vertex x="-2.075" y="-1.675"/>
<vertex x="-2.525" y="-1.675"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="-1.85" y="-2.55"/>
<vertex x="-1.85" y="-2.1"/>
<vertex x="-1.8" y="-2.05"/>
<vertex x="-1.65" y="-2.05"/>
<vertex x="-1.65" y="-2.55"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="-1.825" y="-2.525"/>
<vertex x="-1.825" y="-2.125"/>
<vertex x="-1.775" y="-2.075"/>
<vertex x="-1.675" y="-2.075"/>
<vertex x="-1.675" y="-2.525"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="-1.35" y="-2.55"/>
<vertex x="-1.35" y="-2.05"/>
<vertex x="-1.15" y="-2.05"/>
<vertex x="-1.15" y="-2.55"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="-1.325" y="-2.525"/>
<vertex x="-1.325" y="-2.075"/>
<vertex x="-1.175" y="-2.075"/>
<vertex x="-1.175" y="-2.525"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="-0.85" y="-2.55"/>
<vertex x="-0.85" y="-2.05"/>
<vertex x="-0.65" y="-2.05"/>
<vertex x="-0.65" y="-2.55"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="-0.825" y="-2.525"/>
<vertex x="-0.825" y="-2.075"/>
<vertex x="-0.675" y="-2.075"/>
<vertex x="-0.675" y="-2.525"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="-0.35" y="-2.55"/>
<vertex x="-0.35" y="-2.05"/>
<vertex x="-0.15" y="-2.05"/>
<vertex x="-0.15" y="-2.55"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="-0.325" y="-2.525"/>
<vertex x="-0.325" y="-2.075"/>
<vertex x="-0.175" y="-2.075"/>
<vertex x="-0.175" y="-2.525"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="0.15" y="-2.55"/>
<vertex x="0.15" y="-2.05"/>
<vertex x="0.35" y="-2.05"/>
<vertex x="0.35" y="-2.55"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="0.175" y="-2.525"/>
<vertex x="0.175" y="-2.075"/>
<vertex x="0.325" y="-2.075"/>
<vertex x="0.325" y="-2.525"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="0.65" y="-2.55"/>
<vertex x="0.65" y="-2.05"/>
<vertex x="0.85" y="-2.05"/>
<vertex x="0.85" y="-2.55"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="0.675" y="-2.525"/>
<vertex x="0.675" y="-2.075"/>
<vertex x="0.825" y="-2.075"/>
<vertex x="0.825" y="-2.525"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="1.15" y="-2.55"/>
<vertex x="1.15" y="-2.05"/>
<vertex x="1.35" y="-2.05"/>
<vertex x="1.35" y="-2.55"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="1.175" y="-2.525"/>
<vertex x="1.175" y="-2.075"/>
<vertex x="1.325" y="-2.075"/>
<vertex x="1.325" y="-2.525"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="1.85" y="-2.55"/>
<vertex x="1.85" y="-2.1"/>
<vertex x="1.8" y="-2.05"/>
<vertex x="1.65" y="-2.05"/>
<vertex x="1.65" y="-2.55"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="1.825" y="-2.525"/>
<vertex x="1.825" y="-2.125"/>
<vertex x="1.775" y="-2.075"/>
<vertex x="1.675" y="-2.075"/>
<vertex x="1.675" y="-2.525"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="2.55" y="-1.85"/>
<vertex x="2.1" y="-1.85"/>
<vertex x="2.05" y="-1.8"/>
<vertex x="2.05" y="-1.65"/>
<vertex x="2.55" y="-1.65"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="2.525" y="-1.825"/>
<vertex x="2.125" y="-1.825"/>
<vertex x="2.075" y="-1.775"/>
<vertex x="2.075" y="-1.675"/>
<vertex x="2.525" y="-1.675"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="2.55" y="-1.35"/>
<vertex x="2.05" y="-1.35"/>
<vertex x="2.05" y="-1.15"/>
<vertex x="2.55" y="-1.15"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="2.525" y="-1.325"/>
<vertex x="2.075" y="-1.325"/>
<vertex x="2.075" y="-1.175"/>
<vertex x="2.525" y="-1.175"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="2.55" y="-0.85"/>
<vertex x="2.05" y="-0.85"/>
<vertex x="2.05" y="-0.65"/>
<vertex x="2.55" y="-0.65"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="2.525" y="-0.825"/>
<vertex x="2.075" y="-0.825"/>
<vertex x="2.075" y="-0.675"/>
<vertex x="2.525" y="-0.675"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="2.55" y="-0.35"/>
<vertex x="2.05" y="-0.35"/>
<vertex x="2.05" y="-0.15"/>
<vertex x="2.55" y="-0.15"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="2.525" y="-0.325"/>
<vertex x="2.075" y="-0.325"/>
<vertex x="2.075" y="-0.175"/>
<vertex x="2.525" y="-0.175"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="2.55" y="0.15"/>
<vertex x="2.05" y="0.15"/>
<vertex x="2.05" y="0.35"/>
<vertex x="2.55" y="0.35"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="2.525" y="0.175"/>
<vertex x="2.075" y="0.175"/>
<vertex x="2.075" y="0.325"/>
<vertex x="2.525" y="0.325"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="2.55" y="0.65"/>
<vertex x="2.05" y="0.65"/>
<vertex x="2.05" y="0.85"/>
<vertex x="2.55" y="0.85"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="2.525" y="0.675"/>
<vertex x="2.075" y="0.675"/>
<vertex x="2.075" y="0.825"/>
<vertex x="2.525" y="0.825"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="2.55" y="1.15"/>
<vertex x="2.05" y="1.15"/>
<vertex x="2.05" y="1.35"/>
<vertex x="2.55" y="1.35"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="2.525" y="1.175"/>
<vertex x="2.075" y="1.175"/>
<vertex x="2.075" y="1.325"/>
<vertex x="2.525" y="1.325"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="2.55" y="1.85"/>
<vertex x="2.1" y="1.85"/>
<vertex x="2.05" y="1.8"/>
<vertex x="2.05" y="1.65"/>
<vertex x="2.55" y="1.65"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="2.525" y="1.825"/>
<vertex x="2.125" y="1.825"/>
<vertex x="2.075" y="1.775"/>
<vertex x="2.075" y="1.675"/>
<vertex x="2.525" y="1.675"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="1.85" y="2.55"/>
<vertex x="1.85" y="2.1"/>
<vertex x="1.8" y="2.05"/>
<vertex x="1.65" y="2.05"/>
<vertex x="1.65" y="2.55"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="1.825" y="2.525"/>
<vertex x="1.825" y="2.125"/>
<vertex x="1.775" y="2.075"/>
<vertex x="1.675" y="2.075"/>
<vertex x="1.675" y="2.525"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="1.35" y="2.55"/>
<vertex x="1.35" y="2.05"/>
<vertex x="1.15" y="2.05"/>
<vertex x="1.15" y="2.55"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="1.325" y="2.525"/>
<vertex x="1.325" y="2.075"/>
<vertex x="1.175" y="2.075"/>
<vertex x="1.175" y="2.525"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="0.85" y="2.55"/>
<vertex x="0.85" y="2.05"/>
<vertex x="0.65" y="2.05"/>
<vertex x="0.65" y="2.55"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="0.825" y="2.525"/>
<vertex x="0.825" y="2.075"/>
<vertex x="0.675" y="2.075"/>
<vertex x="0.675" y="2.525"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="0.35" y="2.55"/>
<vertex x="0.35" y="2.05"/>
<vertex x="0.15" y="2.05"/>
<vertex x="0.15" y="2.55"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="0.325" y="2.525"/>
<vertex x="0.325" y="2.075"/>
<vertex x="0.175" y="2.075"/>
<vertex x="0.175" y="2.525"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="-0.15" y="2.55"/>
<vertex x="-0.15" y="2.05"/>
<vertex x="-0.35" y="2.05"/>
<vertex x="-0.35" y="2.55"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="-0.175" y="2.525"/>
<vertex x="-0.175" y="2.075"/>
<vertex x="-0.325" y="2.075"/>
<vertex x="-0.325" y="2.525"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="-0.65" y="2.55"/>
<vertex x="-0.65" y="2.05"/>
<vertex x="-0.85" y="2.05"/>
<vertex x="-0.85" y="2.55"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="-0.675" y="2.525"/>
<vertex x="-0.675" y="2.075"/>
<vertex x="-0.825" y="2.075"/>
<vertex x="-0.825" y="2.525"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="-1.15" y="2.55"/>
<vertex x="-1.15" y="2.05"/>
<vertex x="-1.35" y="2.05"/>
<vertex x="-1.35" y="2.55"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="-1.175" y="2.525"/>
<vertex x="-1.175" y="2.075"/>
<vertex x="-1.325" y="2.075"/>
<vertex x="-1.325" y="2.525"/>
</polygon>
<polygon width="0.1016" layer="29">
<vertex x="-1.85" y="2.55"/>
<vertex x="-1.85" y="2.1"/>
<vertex x="-1.8" y="2.05"/>
<vertex x="-1.65" y="2.05"/>
<vertex x="-1.65" y="2.55"/>
</polygon>
<polygon width="0.1016" layer="31">
<vertex x="-1.825" y="2.525"/>
<vertex x="-1.825" y="2.125"/>
<vertex x="-1.775" y="2.075"/>
<vertex x="-1.675" y="2.075"/>
<vertex x="-1.675" y="2.525"/>
</polygon>
</package>
</packages>
<symbols>
<symbol name="FT232R">
<wire x1="-10.16" y1="25.4" x2="12.7" y2="25.4" width="0.254" layer="94"/>
<wire x1="12.7" y1="25.4" x2="12.7" y2="-27.94" width="0.254" layer="94"/>
<wire x1="12.7" y1="-27.94" x2="-10.16" y2="-27.94" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-27.94" x2="-10.16" y2="25.4" width="0.254" layer="94"/>
<text x="-10.16" y="26.67" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-30.48" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VCC" x="-12.7" y="22.86" length="short" direction="pwr"/>
<pin name="3V3OUT" x="-12.7" y="-5.08" length="short" direction="out"/>
<pin name="USBDP" x="-12.7" y="-10.16" length="short"/>
<pin name="USBDM" x="-12.7" y="-12.7" length="short"/>
<pin name="OSCO" x="-12.7" y="7.62" length="short" direction="out"/>
<pin name="OSCI" x="-12.7" y="10.16" length="short" direction="in"/>
<pin name="GND" x="15.24" y="-20.32" length="short" direction="pwr" rot="R180"/>
<pin name="TXD" x="15.24" y="22.86" length="short" direction="out" rot="R180"/>
<pin name="RXD" x="15.24" y="20.32" length="short" direction="in" rot="R180"/>
<pin name="!RTS" x="15.24" y="17.78" length="short" direction="out" rot="R180"/>
<pin name="!CTS" x="15.24" y="15.24" length="short" direction="in" rot="R180"/>
<pin name="!DTR" x="15.24" y="12.7" length="short" direction="out" rot="R180"/>
<pin name="!DSR" x="15.24" y="10.16" length="short" direction="in" rot="R180"/>
<pin name="!DCD" x="15.24" y="7.62" length="short" direction="in" rot="R180"/>
<pin name="!RI" x="15.24" y="5.08" length="short" direction="in" rot="R180"/>
<pin name="CBUS0" x="15.24" y="0" length="short" rot="R180"/>
<pin name="CBUS1" x="15.24" y="-2.54" length="short" rot="R180"/>
<pin name="CBUS2" x="15.24" y="-5.08" length="short" rot="R180"/>
<pin name="CBUS3" x="15.24" y="-7.62" length="short" rot="R180"/>
<pin name="CBUS4" x="15.24" y="-10.16" length="short" rot="R180"/>
<pin name="VCCIO" x="-12.7" y="20.32" length="short" direction="pwr"/>
<pin name="!RESET" x="-12.7" y="15.24" length="short" direction="in"/>
<pin name="GND@A" x="-12.7" y="-17.78" length="short" direction="pwr"/>
<pin name="GND@1" x="15.24" y="-22.86" length="short" direction="pwr" rot="R180"/>
<pin name="TEST" x="15.24" y="-15.24" length="short" direction="in" rot="R180"/>
<pin name="GND@2" x="15.24" y="-25.4" length="short" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FT232R" prefix="IC">
<description>Source: http://www.ftdichip.com/Documents/DataSheets/DS_FT232R_v104.pdf</description>
<gates>
<gate name="1" symbol="FT232R" x="0" y="0"/>
</gates>
<devices>
<device name="L" package="SSOP28">
<connects>
<connect gate="1" pin="!CTS" pad="11"/>
<connect gate="1" pin="!DCD" pad="10"/>
<connect gate="1" pin="!DSR" pad="9"/>
<connect gate="1" pin="!DTR" pad="2"/>
<connect gate="1" pin="!RESET" pad="19"/>
<connect gate="1" pin="!RI" pad="6"/>
<connect gate="1" pin="!RTS" pad="3"/>
<connect gate="1" pin="3V3OUT" pad="17"/>
<connect gate="1" pin="CBUS0" pad="23"/>
<connect gate="1" pin="CBUS1" pad="22"/>
<connect gate="1" pin="CBUS2" pad="13"/>
<connect gate="1" pin="CBUS3" pad="14"/>
<connect gate="1" pin="CBUS4" pad="12"/>
<connect gate="1" pin="GND" pad="7"/>
<connect gate="1" pin="GND@1" pad="18"/>
<connect gate="1" pin="GND@2" pad="21"/>
<connect gate="1" pin="GND@A" pad="25"/>
<connect gate="1" pin="OSCI" pad="27"/>
<connect gate="1" pin="OSCO" pad="28"/>
<connect gate="1" pin="RXD" pad="5"/>
<connect gate="1" pin="TEST" pad="26"/>
<connect gate="1" pin="TXD" pad="1"/>
<connect gate="1" pin="USBDM" pad="16"/>
<connect gate="1" pin="USBDP" pad="15"/>
<connect gate="1" pin="VCC" pad="20"/>
<connect gate="1" pin="VCCIO" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="FT232RL" constant="no"/>
<attribute name="OC_FARNELL" value="1146032" constant="no"/>
<attribute name="OC_NEWARK" value="91K9918" constant="no"/>
</technology>
</technologies>
</device>
<device name="Q" package="QFN32">
<connects>
<connect gate="1" pin="!CTS" pad="8"/>
<connect gate="1" pin="!DCD" pad="7"/>
<connect gate="1" pin="!DSR" pad="6"/>
<connect gate="1" pin="!DTR" pad="31"/>
<connect gate="1" pin="!RESET" pad="18"/>
<connect gate="1" pin="!RI" pad="3"/>
<connect gate="1" pin="!RTS" pad="32"/>
<connect gate="1" pin="3V3OUT" pad="16"/>
<connect gate="1" pin="CBUS0" pad="22"/>
<connect gate="1" pin="CBUS1" pad="21"/>
<connect gate="1" pin="CBUS2" pad="10"/>
<connect gate="1" pin="CBUS3" pad="11"/>
<connect gate="1" pin="CBUS4" pad="9"/>
<connect gate="1" pin="GND" pad="4"/>
<connect gate="1" pin="GND@1" pad="17"/>
<connect gate="1" pin="GND@2" pad="20"/>
<connect gate="1" pin="GND@A" pad="24"/>
<connect gate="1" pin="OSCI" pad="27"/>
<connect gate="1" pin="OSCO" pad="28"/>
<connect gate="1" pin="RXD" pad="2"/>
<connect gate="1" pin="TEST" pad="26"/>
<connect gate="1" pin="TXD" pad="30"/>
<connect gate="1" pin="USBDM" pad="15"/>
<connect gate="1" pin="USBDP" pad="14"/>
<connect gate="1" pin="VCC" pad="19"/>
<connect gate="1" pin="VCCIO" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="FT232RQ" constant="no"/>
<attribute name="OC_FARNELL" value="1146033" constant="no"/>
<attribute name="OC_NEWARK" value="91K9919" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="0-xythobuz">
<packages>
<package name="SOIC8">
<wire x1="0" y1="3.81" x2="5.08" y2="3.81" width="0.127" layer="20"/>
<wire x1="5.08" y1="3.81" x2="5.08" y2="-0.635" width="0.127" layer="20"/>
<wire x1="5.08" y1="-0.635" x2="0" y2="-0.635" width="0.127" layer="20"/>
<wire x1="0" y1="-0.635" x2="0" y2="3.81" width="0.127" layer="20"/>
<circle x="0.75" y="1" radius="0.559" width="0.127" layer="21"/>
<smd name="PH" x="0.635" y="4.2" dx="2" dy="0.65" layer="1" rot="R90"/>
<smd name="PG" x="1.905" y="4.2" dx="2" dy="0.65" layer="1" rot="R90"/>
<smd name="PF" x="3.175" y="4.2" dx="2" dy="0.65" layer="1" rot="R90"/>
<smd name="PE" x="4.445" y="4.2" dx="2" dy="0.65" layer="1" rot="R90"/>
<smd name="PA" x="0.635" y="-1" dx="2" dy="0.65" layer="1" rot="R90"/>
<smd name="PB" x="1.905" y="-1" dx="2" dy="0.65" layer="1" rot="R90"/>
<smd name="PC" x="3.175" y="-1" dx="2" dy="0.65" layer="1" rot="R90"/>
<smd name="PD" x="4.445" y="-1" dx="2" dy="0.65" layer="1" rot="R90"/>
</package>
<package name="DIP8">
<description>Dual In Line Package 8</description>
<wire x1="5.08" y1="2.921" x2="-5.08" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.921" x2="5.08" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="5.08" y1="2.921" x2="5.08" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="2.921" x2="-5.08" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.921" x2="-5.08" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.016" x2="-5.08" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-5.334" y="-2.921" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-3.556" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="KLINKEPRINT">
<wire x1="0" y1="0" x2="14.2" y2="0" width="0" layer="21"/>
<wire x1="14.2" y1="0" x2="14.2" y2="5.85" width="0" layer="21"/>
<wire x1="14.2" y1="5.85" x2="14.2" y2="11.6" width="0" layer="21"/>
<wire x1="14.2" y1="11.6" x2="0" y2="11.6" width="0" layer="21"/>
<wire x1="0" y1="11.6" x2="0" y2="8.6" width="0" layer="21"/>
<wire x1="0" y1="3.1" x2="0" y2="0" width="0" layer="21"/>
<wire x1="-3.5" y1="3.1" x2="0" y2="3.1" width="0" layer="21"/>
<wire x1="0" y1="3.1" x2="0" y2="8.6" width="0" layer="21"/>
<wire x1="0" y1="8.6" x2="-3.5" y2="8.6" width="0" layer="21"/>
<wire x1="-3.5" y1="8.6" x2="-3.5" y2="5.85" width="0" layer="21"/>
<wire x1="-3.5" y1="5.85" x2="-3.5" y2="3.1" width="0" layer="21"/>
<pad name="GND" x="1.5" y="5.85" drill="1.5" diameter="1.778" shape="long" rot="R90"/>
<pad name="CONLEFT" x="12.9" y="10.45" drill="1.5" diameter="1.778" shape="long" rot="R90"/>
<pad name="CONRIGHT" x="8.5" y="3.45" drill="1.5" diameter="1.778" shape="long"/>
<pad name="RIGHT" x="9.5" y="0.75" drill="1.5" diameter="1.778" shape="long"/>
<pad name="LEFT" x="5.9" y="10.75" drill="1.5" diameter="1.778" shape="long"/>
<text x="0" y="13" size="1.27" layer="25">&gt;NAME</text>
<text x="0" y="-1.9" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="SOT323">
<smd name="P$1" x="-0.65" y="-0.65" dx="0.6" dy="0.8" layer="1"/>
<smd name="P$2" x="0.65" y="-0.65" dx="0.6" dy="0.8" layer="1"/>
<smd name="P$3" x="0" y="0.95" dx="0.6" dy="0.8" layer="1"/>
<wire x1="-1.25" y1="0.5" x2="-1.25" y2="-0.2" width="0.127" layer="21"/>
<wire x1="-1.25" y1="-0.2" x2="1.25" y2="-0.2" width="0.127" layer="21"/>
<wire x1="1.25" y1="-0.2" x2="1.25" y2="0.5" width="0.127" layer="21"/>
<wire x1="1.25" y1="0.5" x2="-1.25" y2="0.5" width="0.127" layer="21"/>
<text x="-1.5" y="-1" size="0.6096" layer="25" rot="R90">&gt;NAME</text>
<text x="2" y="-1" size="0.6096" layer="27" rot="R90">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="FM24V10">
<wire x1="-10.16" y1="7.62" x2="10.16" y2="7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="7.62" x2="10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="-10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-7.62" x2="-10.16" y2="7.62" width="0.254" layer="94"/>
<text x="-9.906" y="8.128" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VCC" x="-15.24" y="5.08" length="middle" direction="sup"/>
<pin name="GND" x="-15.24" y="2.54" length="middle" direction="sup"/>
<pin name="WP" x="-15.24" y="-5.08" length="middle" direction="in"/>
<pin name="SCL" x="15.24" y="-5.08" length="middle" rot="R180"/>
<pin name="SDA" x="15.24" y="-2.54" length="middle" rot="R180"/>
<pin name="A1" x="15.24" y="5.08" length="middle" direction="in" rot="R180"/>
<pin name="A2" x="15.24" y="2.54" length="middle" direction="in" rot="R180"/>
</symbol>
<symbol name="MSGEQ7">
<wire x1="-12.7" y1="10.16" x2="10.16" y2="10.16" width="0.254" layer="94"/>
<wire x1="10.16" y1="10.16" x2="10.16" y2="-10.16" width="0.254" layer="94"/>
<wire x1="10.16" y1="-10.16" x2="-12.7" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-10.16" x2="-12.7" y2="10.16" width="0.254" layer="94"/>
<pin name="VDDA" x="-17.78" y="7.62" length="middle" direction="pwr"/>
<pin name="VSSA" x="-17.78" y="5.08" length="middle" direction="pwr"/>
<pin name="GND" x="-17.78" y="0" length="middle" direction="pwr"/>
<pin name="CKIN" x="-17.78" y="-5.08" length="middle" direction="in"/>
<pin name="IN" x="15.24" y="7.62" length="middle" direction="in" rot="R180"/>
<pin name="RESET" x="15.24" y="-7.62" length="middle" direction="in" rot="R180"/>
<pin name="STROBE" x="15.24" y="-5.08" length="middle" direction="in" rot="R180"/>
<pin name="OUT" x="15.24" y="0" length="middle" direction="out" rot="R180"/>
</symbol>
<symbol name="KLINKENBUCHSE">
<wire x1="-2.54" y1="7.62" x2="-2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="12.7" y2="-5.08" width="0.254" layer="94"/>
<wire x1="12.7" y1="-5.08" x2="12.7" y2="0" width="0.254" layer="94"/>
<wire x1="12.7" y1="0" x2="12.7" y2="2.54" width="0.254" layer="94"/>
<wire x1="12.7" y1="2.54" x2="12.7" y2="7.62" width="0.254" layer="94"/>
<wire x1="12.7" y1="7.62" x2="-2.54" y2="7.62" width="0.254" layer="94"/>
<wire x1="12.7" y1="0" x2="5.08" y2="0" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="12.7" y2="2.54" width="0.254" layer="94"/>
<pin name="R" x="-7.62" y="5.08" visible="pin" length="middle"/>
<pin name="L" x="-7.62" y="2.54" visible="pin" length="middle"/>
<pin name="GND" x="-7.62" y="-2.54" visible="pin" length="middle"/>
<pin name="CL" x="17.78" y="5.08" visible="pin" length="middle" rot="R180"/>
<pin name="CR" x="17.78" y="-2.54" visible="pin" length="middle" rot="R180"/>
</symbol>
<symbol name="PNP">
<wire x1="2.086" y1="1.678" x2="1.578" y2="2.594" width="0.1524" layer="94"/>
<wire x1="1.578" y1="2.594" x2="0.516" y2="1.478" width="0.1524" layer="94"/>
<wire x1="0.516" y1="1.478" x2="2.086" y2="1.678" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="1.808" y2="2.124" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="0.508" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="1.905" y1="1.778" x2="1.524" y2="2.413" width="0.254" layer="94"/>
<wire x1="1.524" y1="2.413" x2="0.762" y2="1.651" width="0.254" layer="94"/>
<wire x1="0.762" y1="1.651" x2="1.778" y2="1.778" width="0.254" layer="94"/>
<wire x1="1.778" y1="1.778" x2="1.524" y2="2.159" width="0.254" layer="94"/>
<wire x1="1.524" y1="2.159" x2="1.143" y2="1.905" width="0.254" layer="94"/>
<wire x1="1.143" y1="1.905" x2="1.524" y2="1.905" width="0.254" layer="94"/>
<text x="-10.16" y="7.62" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="5.08" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-2.54" x2="0.508" y2="2.54" layer="94"/>
<pin name="B" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="E" x="2.54" y="5.08" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="C" x="2.54" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FM24V10" prefix="IC">
<gates>
<gate name="IC1" symbol="FM24V10" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOIC8">
<connects>
<connect gate="IC1" pin="A1" pad="PB"/>
<connect gate="IC1" pin="A2" pad="PC"/>
<connect gate="IC1" pin="GND" pad="PD"/>
<connect gate="IC1" pin="SCL" pad="PF"/>
<connect gate="IC1" pin="SDA" pad="PE"/>
<connect gate="IC1" pin="VCC" pad="PH"/>
<connect gate="IC1" pin="WP" pad="PG"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MSGEQ7" prefix="IC">
<gates>
<gate name="G$1" symbol="MSGEQ7" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIP8">
<connects>
<connect gate="G$1" pin="CKIN" pad="8"/>
<connect gate="G$1" pin="GND" pad="6"/>
<connect gate="G$1" pin="IN" pad="5"/>
<connect gate="G$1" pin="OUT" pad="3"/>
<connect gate="G$1" pin="RESET" pad="7"/>
<connect gate="G$1" pin="STROBE" pad="4"/>
<connect gate="G$1" pin="VDDA" pad="1"/>
<connect gate="G$1" pin="VSSA" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="KLINKENBUCHSE">
<description>3.5mm Klinkenbuchse, print.

CL and CR are connected to left and right respectively, when no 3,5mm Klinkenstecker is inserted. If a stecker is plugged in, they have no connection.</description>
<gates>
<gate name="G$1" symbol="KLINKENBUCHSE" x="-5.08" y="-1.27"/>
</gates>
<devices>
<device name="" package="KLINKEPRINT">
<connects>
<connect gate="G$1" pin="CL" pad="CONLEFT"/>
<connect gate="G$1" pin="CR" pad="CONRIGHT"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="L" pad="LEFT"/>
<connect gate="G$1" pin="R" pad="RIGHT"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PNP">
<gates>
<gate name="G$1" symbol="PNP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT323">
<connects>
<connect gate="G$1" pin="B" pad="P$1"/>
<connect gate="G$1" pin="C" pad="P$3"/>
<connect gate="G$1" pin="E" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="74ttl-din">
<packages>
<package name="DIL14">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="8.89" y1="2.921" x2="-8.89" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-2.921" x2="8.89" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="8.89" y1="2.921" x2="8.89" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="2.921" x2="-8.89" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-2.921" x2="-8.89" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="1.016" x2="-8.89" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="0" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="0" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="-2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-9.271" y="-3.048" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-6.731" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="+UB">
<circle x="0" y="-0.635" radius="0.635" width="0.1524" layer="94"/>
<text x="1.27" y="-1.27" size="1.524" layer="95">&gt;NAME</text>
<pin name="+UB" x="0" y="2.54" visible="pad" length="short" direction="pwr" rot="R270"/>
</symbol>
<symbol name="-UB">
<wire x1="0" y1="-0.635" x2="0" y2="0.635" width="0" layer="94"/>
<wire x1="0.635" y1="0" x2="-0.635" y2="0" width="0" layer="94"/>
<circle x="0" y="0.635" radius="0.635" width="0.1524" layer="94"/>
<text x="1.27" y="0" size="1.524" layer="95">&gt;NAME</text>
<pin name="-UB" x="0" y="-2.54" visible="pad" length="short" direction="pwr" rot="R90"/>
</symbol>
<symbol name="00">
<wire x1="-0.635" y1="0" x2="0.635" y2="0" width="0" layer="94"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="1.27" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="0" x2="5.08" y2="1.27" width="0.1524" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="0" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="7.62" y2="0" width="0.1524" layer="94"/>
<wire x1="5.08" y1="0" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="2.54" x2="-5.08" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-2.54" x2="-5.08" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="2.54" width="0.254" layer="94"/>
<text x="-5.08" y="5.715" size="2.032" layer="95">&gt;NAME</text>
<text x="-5.08" y="-8.255" size="2.032" layer="96">&gt;VALUE</text>
<text x="-0.635" y="1.905" size="2.032" layer="94">&amp;</text>
<pin name="A" x="-10.16" y="2.54" visible="pad" length="short" direction="in" swaplevel="1"/>
<pin name="B" x="-10.16" y="-2.54" visible="pad" length="short" direction="in" swaplevel="1"/>
<pin name="Y" x="10.16" y="0" visible="pad" length="short" direction="out" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74*00" prefix="V">
<description>Quad 2-input &lt;b&gt;NAND&lt;/b&gt; gate</description>
<gates>
<gate name="/+UB" symbol="+UB" x="15.24" y="12.7" addlevel="request"/>
<gate name="/-UB" symbol="-UB" x="15.24" y="5.08" addlevel="request"/>
<gate name="/1" symbol="00" x="0" y="0" swaplevel="1"/>
<gate name="/2" symbol="00" x="0" y="17.78" swaplevel="1"/>
<gate name="/3" symbol="00" x="-22.86" y="0" swaplevel="1"/>
<gate name="/4" symbol="00" x="-22.86" y="17.78" swaplevel="1"/>
</gates>
<devices>
<device name="N" package="DIL14">
<connects>
<connect gate="/+UB" pin="+UB" pad="14"/>
<connect gate="/-UB" pin="-UB" pad="7"/>
<connect gate="/1" pin="A" pad="1"/>
<connect gate="/1" pin="B" pad="2"/>
<connect gate="/1" pin="Y" pad="3"/>
<connect gate="/2" pin="A" pad="4"/>
<connect gate="/2" pin="B" pad="5"/>
<connect gate="/2" pin="Y" pad="6"/>
<connect gate="/3" pin="A" pad="9"/>
<connect gate="/3" pin="B" pad="10"/>
<connect gate="/3" pin="Y" pad="8"/>
<connect gate="/4" pin="A" pad="12"/>
<connect gate="/4" pin="B" pad="13"/>
<connect gate="/4" pin="Y" pad="11"/>
</connects>
<technologies>
<technology name=""/>
<technology name="HC"/>
<technology name="HCT"/>
<technology name="LS"/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="switch">
<packages>
<package name="255SB">
<description>&lt;b&gt;SLIDING SWITCH&lt;/b&gt;&lt;p&gt;
distributor Buerklin, 11G810</description>
<wire x1="-5.588" y1="3.048" x2="5.588" y2="3.048" width="0.1524" layer="21"/>
<wire x1="5.588" y1="-3.048" x2="5.588" y2="3.048" width="0.1524" layer="21"/>
<wire x1="5.588" y1="-3.048" x2="-5.588" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-5.588" y1="3.048" x2="-5.588" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.397" x2="3.81" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="1.397" x2="-3.81" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="1.27" x2="-0.762" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0.762" x2="-1.27" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="3.81" y1="-1.524" x2="-0.762" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="1.524" x2="-1.778" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="1.524" x2="-1.27" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-1.524" x2="-2.286" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.524" x2="-2.286" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.524" x2="-1.778" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="1.016" x2="-2.794" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="1.397" x2="-3.302" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="1.524" x2="-3.302" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.524" x2="-2.794" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.524" x2="3.81" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.524" x2="3.81" y2="1.397" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-1.27" x2="-0.762" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-1.524" x2="-1.27" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.524" x2="-1.27" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.524" x2="-1.778" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="-1.016" x2="-2.794" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="-1.524" x2="-3.302" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="-1.397" x2="-3.302" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="-1.524" x2="-3.81" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.397" x2="-3.81" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.524" x2="-3.81" y2="1.397" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="1.524" x2="-3.302" y2="1.397" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="1.524" x2="-2.794" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="1.524" x2="-2.794" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="1.524" x2="-2.286" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.524" x2="-1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.524" x2="-0.762" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="1.524" x2="-0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="1.524" x2="3.81" y2="1.524" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="1.1176" shape="long" rot="R90"/>
<pad name="2" x="0" y="0" drill="1.1176" shape="long" rot="R90"/>
<pad name="3" x="3.81" y="0" drill="1.1176" shape="long" rot="R90"/>
<text x="-5.207" y="-2.794" size="1.27" layer="21" ratio="10">1</text>
<text x="4.191" y="-2.794" size="1.27" layer="21" ratio="10">2</text>
<text x="-5.588" y="3.556" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="3.556" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="SIS">
<wire x1="-3.81" y1="1.905" x2="-3.81" y2="0" width="0.254" layer="94"/>
<wire x1="-3.81" y1="0" x2="-1.905" y2="0" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="0" x2="-3.81" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-1.27" y1="0" x2="-0.762" y2="0" width="0.1524" layer="94"/>
<wire x1="0.254" y1="0" x2="0.635" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-3.175" x2="2.54" y2="-1.905" width="0.254" layer="94"/>
<wire x1="2.54" y1="-1.905" x2="0.635" y2="3.175" width="0.254" layer="94"/>
<wire x1="3.81" y1="2.54" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="3.175" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="3.175" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="1.905" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.762" y1="0" x2="-0.254" y2="-0.762" width="0.1524" layer="94"/>
<wire x1="-0.254" y1="-0.762" x2="0.254" y2="0" width="0.1524" layer="94"/>
<text x="-6.35" y="-1.905" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="-3.81" y="3.175" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="P" x="2.54" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="S" x="5.08" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="O" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="255SB" prefix="S" uservalue="yes">
<description>&lt;b&gt;SLIDING SWITCH&lt;/b&gt;&lt;p&gt;
Distributor Buerklin, 11G810</description>
<gates>
<gate name="1" symbol="SIS" x="0" y="0"/>
</gates>
<devices>
<device name="" package="255SB">
<connects>
<connect gate="1" pin="O" pad="1"/>
<connect gate="1" pin="P" pad="2"/>
<connect gate="1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-ml">
<description>&lt;b&gt;Harting  Connectors&lt;/b&gt;&lt;p&gt;
Low profile connectors, straight&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="ML64">
<description>&lt;b&gt;HARTING&lt;/b&gt;</description>
<wire x1="-43.18" y1="3.175" x2="43.18" y2="3.175" width="0.127" layer="21"/>
<wire x1="43.18" y1="-3.175" x2="43.18" y2="3.175" width="0.127" layer="21"/>
<wire x1="-43.18" y1="3.175" x2="-43.18" y2="-3.175" width="0.127" layer="21"/>
<wire x1="-44.45" y1="4.445" x2="-43.18" y2="4.445" width="0.127" layer="21"/>
<wire x1="44.45" y1="-4.445" x2="39.751" y2="-4.445" width="0.127" layer="21"/>
<wire x1="44.45" y1="-4.445" x2="44.45" y2="4.445" width="0.127" layer="21"/>
<wire x1="-44.45" y1="4.445" x2="-44.45" y2="-4.445" width="0.127" layer="21"/>
<wire x1="43.18" y1="-3.175" x2="38.862" y2="-3.175" width="0.127" layer="21"/>
<wire x1="2.032" y1="-2.413" x2="-2.032" y2="-2.413" width="0.127" layer="21"/>
<wire x1="-2.032" y1="-3.175" x2="-2.032" y2="-2.413" width="0.127" layer="21"/>
<wire x1="-2.032" y1="-3.175" x2="-34.798" y2="-3.175" width="0.127" layer="21"/>
<wire x1="2.032" y1="-2.413" x2="2.032" y2="-3.175" width="0.127" layer="21"/>
<wire x1="2.032" y1="-3.175" x2="2.032" y2="-3.429" width="0.127" layer="21"/>
<wire x1="43.18" y1="4.445" x2="43.18" y2="4.699" width="0.127" layer="21"/>
<wire x1="43.18" y1="4.699" x2="41.91" y2="4.699" width="0.127" layer="21"/>
<wire x1="41.91" y1="4.445" x2="41.91" y2="4.699" width="0.127" layer="21"/>
<wire x1="43.18" y1="4.445" x2="44.45" y2="4.445" width="0.127" layer="21"/>
<wire x1="0.635" y1="4.699" x2="-0.635" y2="4.699" width="0.127" layer="21"/>
<wire x1="0.635" y1="4.699" x2="0.635" y2="4.445" width="0.127" layer="21"/>
<wire x1="0.635" y1="4.445" x2="41.91" y2="4.445" width="0.127" layer="21"/>
<wire x1="-0.635" y1="4.699" x2="-0.635" y2="4.445" width="0.127" layer="21"/>
<wire x1="-41.91" y1="4.699" x2="-43.18" y2="4.699" width="0.127" layer="21"/>
<wire x1="-43.18" y1="4.699" x2="-43.18" y2="4.445" width="0.127" layer="21"/>
<wire x1="-41.91" y1="4.699" x2="-41.91" y2="4.445" width="0.127" layer="21"/>
<wire x1="-41.91" y1="4.445" x2="-0.635" y2="4.445" width="0.127" layer="21"/>
<wire x1="36.449" y1="-4.445" x2="2.032" y2="-4.445" width="0.127" layer="21"/>
<wire x1="2.032" y1="-4.445" x2="-2.032" y2="-4.445" width="0.127" layer="21"/>
<wire x1="37.338" y1="-3.175" x2="37.338" y2="-3.429" width="0.127" layer="21"/>
<wire x1="37.338" y1="-3.175" x2="2.032" y2="-3.175" width="0.127" layer="21"/>
<wire x1="38.862" y1="-3.175" x2="38.862" y2="-3.429" width="0.127" layer="21"/>
<wire x1="38.862" y1="-3.175" x2="37.338" y2="-3.175" width="0.127" layer="21"/>
<wire x1="36.449" y1="-4.445" x2="36.83" y2="-3.937" width="0.127" layer="21"/>
<wire x1="39.37" y1="-3.937" x2="39.751" y2="-4.445" width="0.127" layer="21"/>
<wire x1="39.37" y1="-3.937" x2="38.862" y2="-3.937" width="0.127" layer="21"/>
<wire x1="37.338" y1="-3.429" x2="2.032" y2="-3.429" width="0.0508" layer="21"/>
<wire x1="2.032" y1="-3.429" x2="2.032" y2="-4.445" width="0.127" layer="21"/>
<wire x1="38.862" y1="-3.429" x2="43.434" y2="-3.429" width="0.0508" layer="21"/>
<wire x1="43.434" y1="-3.429" x2="43.434" y2="3.429" width="0.0508" layer="21"/>
<wire x1="43.434" y1="3.429" x2="-43.434" y2="3.429" width="0.0508" layer="21"/>
<wire x1="-43.434" y1="3.429" x2="-43.434" y2="-3.429" width="0.0508" layer="21"/>
<wire x1="-43.434" y1="-3.429" x2="-36.322" y2="-3.429" width="0.0508" layer="21"/>
<wire x1="-2.032" y1="-3.175" x2="-2.032" y2="-3.429" width="0.127" layer="21"/>
<wire x1="-2.032" y1="-3.429" x2="-2.032" y2="-4.445" width="0.127" layer="21"/>
<wire x1="37.338" y1="-3.429" x2="37.338" y2="-3.937" width="0.127" layer="21"/>
<wire x1="37.338" y1="-3.937" x2="36.83" y2="-3.937" width="0.127" layer="21"/>
<wire x1="38.862" y1="-3.429" x2="38.862" y2="-3.937" width="0.127" layer="21"/>
<wire x1="38.862" y1="-3.937" x2="37.338" y2="-3.937" width="0.127" layer="21"/>
<wire x1="-44.45" y1="-4.445" x2="-40.132" y2="-4.445" width="0.127" layer="21"/>
<wire x1="-40.132" y1="-4.318" x2="-40.132" y2="-4.445" width="0.127" layer="21"/>
<wire x1="-40.132" y1="-4.318" x2="-38.608" y2="-4.318" width="0.127" layer="21"/>
<wire x1="-38.608" y1="-4.445" x2="-38.608" y2="-4.318" width="0.127" layer="21"/>
<wire x1="-38.608" y1="-4.445" x2="-37.211" y2="-4.445" width="0.127" layer="21"/>
<wire x1="-36.322" y1="-3.429" x2="-36.322" y2="-3.937" width="0.127" layer="21"/>
<wire x1="-34.798" y1="-3.429" x2="-34.798" y2="-3.937" width="0.127" layer="21"/>
<wire x1="-34.798" y1="-3.429" x2="-2.032" y2="-3.429" width="0.0508" layer="21"/>
<wire x1="-36.322" y1="-3.175" x2="-36.322" y2="-3.429" width="0.127" layer="21"/>
<wire x1="-36.322" y1="-3.175" x2="-43.18" y2="-3.175" width="0.127" layer="21"/>
<wire x1="-34.798" y1="-3.175" x2="-34.798" y2="-3.429" width="0.127" layer="21"/>
<wire x1="-34.798" y1="-3.175" x2="-36.322" y2="-3.175" width="0.127" layer="21"/>
<wire x1="-34.798" y1="-3.937" x2="-36.322" y2="-3.937" width="0.127" layer="21"/>
<wire x1="-36.322" y1="-3.937" x2="-36.83" y2="-3.937" width="0.127" layer="21"/>
<wire x1="-37.211" y1="-4.445" x2="-36.83" y2="-3.937" width="0.127" layer="21"/>
<wire x1="-34.29" y1="-3.937" x2="-33.909" y2="-4.445" width="0.127" layer="21"/>
<wire x1="-33.909" y1="-4.445" x2="-2.032" y2="-4.445" width="0.127" layer="21"/>
<wire x1="-34.29" y1="-3.937" x2="-34.798" y2="-3.937" width="0.127" layer="21"/>
<pad name="1" x="-39.37" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="2" x="-39.37" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="3" x="-36.83" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="4" x="-36.83" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="5" x="-34.29" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="6" x="-34.29" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="7" x="-31.75" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="8" x="-31.75" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="9" x="-29.21" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="10" x="-29.21" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="11" x="-26.67" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="12" x="-26.67" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="13" x="-24.13" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="14" x="-24.13" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="15" x="-21.59" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="16" x="-21.59" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="17" x="-19.05" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="18" x="-19.05" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="19" x="-16.51" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="20" x="-16.51" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="21" x="-13.97" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="22" x="-13.97" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="23" x="-11.43" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="24" x="-11.43" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="25" x="-8.89" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="26" x="-8.89" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="27" x="-6.35" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="28" x="-6.35" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="30" x="-3.81" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="29" x="-3.81" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="31" x="-1.27" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="32" x="-1.27" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="34" x="1.27" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="33" x="1.27" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="35" x="3.81" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="36" x="3.81" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="38" x="6.35" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="37" x="6.35" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="39" x="8.89" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="40" x="8.89" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="41" x="11.43" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="42" x="11.43" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="43" x="13.97" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="44" x="13.97" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="45" x="16.51" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="46" x="16.51" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="47" x="19.05" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="48" x="19.05" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="49" x="21.59" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="50" x="21.59" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="51" x="24.13" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="52" x="24.13" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="53" x="26.67" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="54" x="26.67" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="55" x="29.21" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="56" x="29.21" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="57" x="31.75" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="58" x="31.75" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="59" x="34.29" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="60" x="34.29" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="61" x="36.83" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="62" x="36.83" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="63" x="39.37" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="64" x="39.37" y="1.27" drill="0.9144" shape="octagon"/>
<text x="-44.45" y="5.08" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-25.4" y="5.08" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-41.91" y="-1.905" size="1.27" layer="21" ratio="10">1</text>
<text x="-41.91" y="0.635" size="1.27" layer="21" ratio="10">2</text>
<text x="-1.016" y="-4.064" size="1.27" layer="21" ratio="10">64</text>
<rectangle x1="-9.144" y1="1.016" x2="-8.636" y2="1.524" layer="51"/>
<rectangle x1="-9.144" y1="-1.524" x2="-8.636" y2="-1.016" layer="51"/>
<rectangle x1="-11.684" y1="1.016" x2="-11.176" y2="1.524" layer="51"/>
<rectangle x1="-21.844" y1="1.016" x2="-21.336" y2="1.524" layer="51"/>
<rectangle x1="-21.844" y1="-1.524" x2="-21.336" y2="-1.016" layer="51"/>
<rectangle x1="-11.684" y1="-1.524" x2="-11.176" y2="-1.016" layer="51"/>
<rectangle x1="-37.084" y1="1.016" x2="-36.576" y2="1.524" layer="51"/>
<rectangle x1="-39.624" y1="1.016" x2="-39.116" y2="1.524" layer="51"/>
<rectangle x1="-34.544" y1="1.016" x2="-34.036" y2="1.524" layer="51"/>
<rectangle x1="-24.384" y1="1.016" x2="-23.876" y2="1.524" layer="51"/>
<rectangle x1="-26.924" y1="1.016" x2="-26.416" y2="1.524" layer="51"/>
<rectangle x1="-37.084" y1="-1.524" x2="-36.576" y2="-1.016" layer="51"/>
<rectangle x1="-39.624" y1="-1.524" x2="-39.116" y2="-1.016" layer="51"/>
<rectangle x1="-34.544" y1="-1.524" x2="-34.036" y2="-1.016" layer="51"/>
<rectangle x1="-24.384" y1="-1.524" x2="-23.876" y2="-1.016" layer="51"/>
<rectangle x1="-26.924" y1="-1.524" x2="-26.416" y2="-1.016" layer="51"/>
<rectangle x1="-32.004" y1="-1.524" x2="-31.496" y2="-1.016" layer="51"/>
<rectangle x1="-32.004" y1="1.016" x2="-31.496" y2="1.524" layer="51"/>
<rectangle x1="-14.224" y1="1.016" x2="-13.716" y2="1.524" layer="51"/>
<rectangle x1="-14.224" y1="-1.524" x2="-13.716" y2="-1.016" layer="51"/>
<rectangle x1="-29.464" y1="1.016" x2="-28.956" y2="1.524" layer="51"/>
<rectangle x1="-29.464" y1="-1.524" x2="-28.956" y2="-1.016" layer="51"/>
<rectangle x1="-19.304" y1="1.016" x2="-18.796" y2="1.524" layer="51"/>
<rectangle x1="-16.764" y1="1.016" x2="-16.256" y2="1.524" layer="51"/>
<rectangle x1="-19.304" y1="-1.524" x2="-18.796" y2="-1.016" layer="51"/>
<rectangle x1="-16.764" y1="-1.524" x2="-16.256" y2="-1.016" layer="51"/>
<rectangle x1="-6.604" y1="1.016" x2="-6.096" y2="1.524" layer="51"/>
<rectangle x1="-4.064" y1="1.016" x2="-3.556" y2="1.524" layer="51"/>
<rectangle x1="6.096" y1="1.016" x2="6.604" y2="1.524" layer="51"/>
<rectangle x1="8.636" y1="1.016" x2="9.144" y2="1.524" layer="51"/>
<rectangle x1="-6.604" y1="-1.524" x2="-6.096" y2="-1.016" layer="51"/>
<rectangle x1="-4.064" y1="-1.524" x2="-3.556" y2="-1.016" layer="51"/>
<rectangle x1="6.096" y1="-1.524" x2="6.604" y2="-1.016" layer="51"/>
<rectangle x1="8.636" y1="-1.524" x2="9.144" y2="-1.016" layer="51"/>
<rectangle x1="-1.524" y1="1.016" x2="-1.016" y2="1.524" layer="51"/>
<rectangle x1="1.016" y1="1.016" x2="1.524" y2="1.524" layer="51"/>
<rectangle x1="3.556" y1="1.016" x2="4.064" y2="1.524" layer="51"/>
<rectangle x1="-1.524" y1="-1.524" x2="-1.016" y2="-1.016" layer="51"/>
<rectangle x1="1.016" y1="-1.524" x2="1.524" y2="-1.016" layer="51"/>
<rectangle x1="3.556" y1="-1.524" x2="4.064" y2="-1.016" layer="51"/>
<rectangle x1="11.176" y1="1.016" x2="11.684" y2="1.524" layer="51"/>
<rectangle x1="13.716" y1="1.016" x2="14.224" y2="1.524" layer="51"/>
<rectangle x1="16.256" y1="1.016" x2="16.764" y2="1.524" layer="51"/>
<rectangle x1="18.796" y1="1.016" x2="19.304" y2="1.524" layer="51"/>
<rectangle x1="21.336" y1="1.016" x2="21.844" y2="1.524" layer="51"/>
<rectangle x1="21.336" y1="-1.524" x2="21.844" y2="-1.016" layer="51"/>
<rectangle x1="11.176" y1="-1.524" x2="11.684" y2="-1.016" layer="51"/>
<rectangle x1="13.716" y1="-1.524" x2="14.224" y2="-1.016" layer="51"/>
<rectangle x1="16.256" y1="-1.524" x2="16.764" y2="-1.016" layer="51"/>
<rectangle x1="18.796" y1="-1.524" x2="19.304" y2="-1.016" layer="51"/>
<rectangle x1="23.876" y1="-1.524" x2="24.384" y2="-1.016" layer="51"/>
<rectangle x1="26.416" y1="-1.524" x2="26.924" y2="-1.016" layer="51"/>
<rectangle x1="28.956" y1="-1.524" x2="29.464" y2="-1.016" layer="51"/>
<rectangle x1="31.496" y1="-1.524" x2="32.004" y2="-1.016" layer="51"/>
<rectangle x1="23.876" y1="1.016" x2="24.384" y2="1.524" layer="51"/>
<rectangle x1="26.416" y1="1.016" x2="26.924" y2="1.524" layer="51"/>
<rectangle x1="28.956" y1="1.016" x2="29.464" y2="1.524" layer="51"/>
<rectangle x1="31.496" y1="1.016" x2="32.004" y2="1.524" layer="51"/>
<rectangle x1="34.036" y1="1.016" x2="34.544" y2="1.524" layer="51"/>
<rectangle x1="34.036" y1="-1.524" x2="34.544" y2="-1.016" layer="51"/>
<rectangle x1="36.576" y1="-1.524" x2="37.084" y2="-1.016" layer="51"/>
<rectangle x1="39.116" y1="-1.524" x2="39.624" y2="-1.016" layer="51"/>
<rectangle x1="36.576" y1="1.016" x2="37.084" y2="1.524" layer="51"/>
<rectangle x1="39.116" y1="1.016" x2="39.624" y2="1.524" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="64P">
<wire x1="3.81" y1="-40.64" x2="-3.81" y2="-40.64" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="43.18" x2="-3.81" y2="-40.64" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="43.18" x2="3.81" y2="43.18" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-40.64" x2="3.81" y2="43.18" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-27.94" x2="2.54" y2="-27.94" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-30.48" x2="2.54" y2="-30.48" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-33.02" x2="2.54" y2="-33.02" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-35.56" x2="2.54" y2="-35.56" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-38.1" x2="2.54" y2="-38.1" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-27.94" x2="-1.27" y2="-27.94" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-30.48" x2="-1.27" y2="-30.48" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-33.02" x2="-1.27" y2="-33.02" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-35.56" x2="-1.27" y2="-35.56" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-38.1" x2="-1.27" y2="-38.1" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-25.4" x2="2.54" y2="-25.4" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-22.86" x2="2.54" y2="-22.86" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-20.32" x2="2.54" y2="-20.32" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-17.78" x2="2.54" y2="-17.78" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-15.24" x2="2.54" y2="-15.24" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-25.4" x2="-1.27" y2="-25.4" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-22.86" x2="-1.27" y2="-22.86" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-20.32" x2="-1.27" y2="-20.32" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-17.78" x2="-1.27" y2="-17.78" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-15.24" x2="-1.27" y2="-15.24" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-12.7" x2="2.54" y2="-12.7" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-10.16" x2="2.54" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-12.7" x2="-1.27" y2="-12.7" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-10.16" x2="-1.27" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-7.62" x2="-1.27" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="7.62" x2="2.54" y2="7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="10.16" x2="2.54" y2="10.16" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-1.27" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-1.27" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-1.27" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="-1.27" y2="7.62" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="10.16" x2="-1.27" y2="10.16" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="12.7" x2="-1.27" y2="12.7" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="15.24" x2="-1.27" y2="15.24" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="17.78" x2="-1.27" y2="17.78" width="0.6096" layer="94"/>
<wire x1="1.27" y1="12.7" x2="2.54" y2="12.7" width="0.6096" layer="94"/>
<wire x1="1.27" y1="15.24" x2="2.54" y2="15.24" width="0.6096" layer="94"/>
<wire x1="1.27" y1="17.78" x2="2.54" y2="17.78" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="20.32" x2="-1.27" y2="20.32" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="22.86" x2="-1.27" y2="22.86" width="0.6096" layer="94"/>
<wire x1="1.27" y1="20.32" x2="2.54" y2="20.32" width="0.6096" layer="94"/>
<wire x1="1.27" y1="22.86" x2="2.54" y2="22.86" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="25.4" x2="-1.27" y2="25.4" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="27.94" x2="-1.27" y2="27.94" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="30.48" x2="-1.27" y2="30.48" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="33.02" x2="-1.27" y2="33.02" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="35.56" x2="-1.27" y2="35.56" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="38.1" x2="-1.27" y2="38.1" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="40.64" x2="-1.27" y2="40.64" width="0.6096" layer="94"/>
<wire x1="1.27" y1="25.4" x2="2.54" y2="25.4" width="0.6096" layer="94"/>
<wire x1="1.27" y1="27.94" x2="2.54" y2="27.94" width="0.6096" layer="94"/>
<wire x1="1.27" y1="30.48" x2="2.54" y2="30.48" width="0.6096" layer="94"/>
<wire x1="1.27" y1="33.02" x2="2.54" y2="33.02" width="0.6096" layer="94"/>
<wire x1="1.27" y1="35.56" x2="2.54" y2="35.56" width="0.6096" layer="94"/>
<wire x1="1.27" y1="38.1" x2="2.54" y2="38.1" width="0.6096" layer="94"/>
<wire x1="1.27" y1="40.64" x2="2.54" y2="40.64" width="0.6096" layer="94"/>
<text x="-3.81" y="-43.18" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="44.069" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-38.1" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="3" x="7.62" y="-35.56" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="5" x="7.62" y="-33.02" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="7" x="7.62" y="-30.48" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="9" x="7.62" y="-27.94" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="11" x="7.62" y="-25.4" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="13" x="7.62" y="-22.86" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="15" x="7.62" y="-20.32" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="17" x="7.62" y="-17.78" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="19" x="7.62" y="-15.24" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="21" x="7.62" y="-12.7" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="23" x="7.62" y="-10.16" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="25" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="27" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="29" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="31" x="7.62" y="0" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="33" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="35" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="37" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="39" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="2" x="-7.62" y="-38.1" visible="pad" length="middle" direction="pas"/>
<pin name="4" x="-7.62" y="-35.56" visible="pad" length="middle" direction="pas"/>
<pin name="6" x="-7.62" y="-33.02" visible="pad" length="middle" direction="pas"/>
<pin name="8" x="-7.62" y="-30.48" visible="pad" length="middle" direction="pas"/>
<pin name="10" x="-7.62" y="-27.94" visible="pad" length="middle" direction="pas"/>
<pin name="12" x="-7.62" y="-25.4" visible="pad" length="middle" direction="pas"/>
<pin name="14" x="-7.62" y="-22.86" visible="pad" length="middle" direction="pas"/>
<pin name="16" x="-7.62" y="-20.32" visible="pad" length="middle" direction="pas"/>
<pin name="18" x="-7.62" y="-17.78" visible="pad" length="middle" direction="pas"/>
<pin name="20" x="-7.62" y="-15.24" visible="pad" length="middle" direction="pas"/>
<pin name="22" x="-7.62" y="-12.7" visible="pad" length="middle" direction="pas"/>
<pin name="24" x="-7.62" y="-10.16" visible="pad" length="middle" direction="pas"/>
<pin name="26" x="-7.62" y="-7.62" visible="pad" length="middle" direction="pas"/>
<pin name="28" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas"/>
<pin name="30" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas"/>
<pin name="32" x="-7.62" y="0" visible="pad" length="middle" direction="pas"/>
<pin name="34" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas"/>
<pin name="36" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas"/>
<pin name="38" x="-7.62" y="7.62" visible="pad" length="middle" direction="pas"/>
<pin name="40" x="-7.62" y="10.16" visible="pad" length="middle" direction="pas"/>
<pin name="41" x="7.62" y="12.7" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="43" x="7.62" y="15.24" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="45" x="7.62" y="17.78" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="47" x="7.62" y="20.32" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="49" x="7.62" y="22.86" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="42" x="-7.62" y="12.7" visible="pad" length="middle" direction="pas"/>
<pin name="44" x="-7.62" y="15.24" visible="pad" length="middle" direction="pas"/>
<pin name="46" x="-7.62" y="17.78" visible="pad" length="middle" direction="pas"/>
<pin name="48" x="-7.62" y="20.32" visible="pad" length="middle" direction="pas"/>
<pin name="50" x="-7.62" y="22.86" visible="pad" length="middle" direction="pas"/>
<pin name="51" x="7.62" y="25.4" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="53" x="7.62" y="27.94" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="55" x="7.62" y="30.48" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="57" x="7.62" y="33.02" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="59" x="7.62" y="35.56" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="61" x="7.62" y="38.1" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="63" x="7.62" y="40.64" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="52" x="-7.62" y="25.4" visible="pad" length="middle" direction="pas"/>
<pin name="54" x="-7.62" y="27.94" visible="pad" length="middle" direction="pas"/>
<pin name="56" x="-7.62" y="30.48" visible="pad" length="middle" direction="pas"/>
<pin name="58" x="-7.62" y="33.02" visible="pad" length="middle" direction="pas"/>
<pin name="60" x="-7.62" y="35.56" visible="pad" length="middle" direction="pas"/>
<pin name="62" x="-7.62" y="38.1" visible="pad" length="middle" direction="pas"/>
<pin name="64" x="-7.62" y="40.64" visible="pad" length="middle" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ML64" prefix="SV" uservalue="yes">
<description>&lt;b&gt;HARTING&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="64P" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ML64">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="10" pad="10"/>
<connect gate="1" pin="11" pad="11"/>
<connect gate="1" pin="12" pad="12"/>
<connect gate="1" pin="13" pad="13"/>
<connect gate="1" pin="14" pad="14"/>
<connect gate="1" pin="15" pad="15"/>
<connect gate="1" pin="16" pad="16"/>
<connect gate="1" pin="17" pad="17"/>
<connect gate="1" pin="18" pad="18"/>
<connect gate="1" pin="19" pad="19"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="20" pad="20"/>
<connect gate="1" pin="21" pad="21"/>
<connect gate="1" pin="22" pad="22"/>
<connect gate="1" pin="23" pad="23"/>
<connect gate="1" pin="24" pad="24"/>
<connect gate="1" pin="25" pad="25"/>
<connect gate="1" pin="26" pad="26"/>
<connect gate="1" pin="27" pad="27"/>
<connect gate="1" pin="28" pad="28"/>
<connect gate="1" pin="29" pad="29"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="30" pad="30"/>
<connect gate="1" pin="31" pad="31"/>
<connect gate="1" pin="32" pad="32"/>
<connect gate="1" pin="33" pad="33"/>
<connect gate="1" pin="34" pad="34"/>
<connect gate="1" pin="35" pad="35"/>
<connect gate="1" pin="36" pad="36"/>
<connect gate="1" pin="37" pad="37"/>
<connect gate="1" pin="38" pad="38"/>
<connect gate="1" pin="39" pad="39"/>
<connect gate="1" pin="4" pad="4"/>
<connect gate="1" pin="40" pad="40"/>
<connect gate="1" pin="41" pad="41"/>
<connect gate="1" pin="42" pad="42"/>
<connect gate="1" pin="43" pad="43"/>
<connect gate="1" pin="44" pad="44"/>
<connect gate="1" pin="45" pad="45"/>
<connect gate="1" pin="46" pad="46"/>
<connect gate="1" pin="47" pad="47"/>
<connect gate="1" pin="48" pad="48"/>
<connect gate="1" pin="49" pad="49"/>
<connect gate="1" pin="5" pad="5"/>
<connect gate="1" pin="50" pad="50"/>
<connect gate="1" pin="51" pad="51"/>
<connect gate="1" pin="52" pad="52"/>
<connect gate="1" pin="53" pad="53"/>
<connect gate="1" pin="54" pad="54"/>
<connect gate="1" pin="55" pad="55"/>
<connect gate="1" pin="56" pad="56"/>
<connect gate="1" pin="57" pad="57"/>
<connect gate="1" pin="58" pad="58"/>
<connect gate="1" pin="59" pad="59"/>
<connect gate="1" pin="6" pad="6"/>
<connect gate="1" pin="60" pad="60"/>
<connect gate="1" pin="61" pad="61"/>
<connect gate="1" pin="62" pad="62"/>
<connect gate="1" pin="63" pad="63"/>
<connect gate="1" pin="64" pad="64"/>
<connect gate="1" pin="7" pad="7"/>
<connect gate="1" pin="8" pad="8"/>
<connect gate="1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="atmel">
<description>&lt;b&gt;AVR Devices&lt;/b&gt;&lt;p&gt;
Configurable logic, microcontrollers, nonvolatile memories&lt;p&gt;
Based on the following sources:&lt;p&gt;
&lt;ul&gt;
&lt;li&gt;www.atmel.com
&lt;li&gt;CD-ROM : Configurable Logic Microcontroller Nonvolatile Memory
&lt;li&gt;CadSoft download site, www.cadsoft.de or www.cadsoftusa.com , file at90smcu_v400.zip
&lt;li&gt;avr.lbr
&lt;/ul&gt;
&lt;author&gt;Revised by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MLF44">
<description>&lt;b&gt;44M1&lt;/b&gt; Micro Lead Frame package (MLF)</description>
<wire x1="-3.4" y1="2.8" x2="-2.8" y2="3.4" width="0.254" layer="21"/>
<wire x1="-2.8" y1="3.4" x2="2.8" y2="3.4" width="0.254" layer="51"/>
<wire x1="2.8" y1="3.4" x2="3.4" y2="2.8" width="0.254" layer="21"/>
<wire x1="3.4" y1="2.8" x2="3.4" y2="-2.8" width="0.254" layer="51"/>
<wire x1="3.4" y1="-2.8" x2="2.8" y2="-3.4" width="0.254" layer="21"/>
<wire x1="2.8" y1="-3.4" x2="-2.8" y2="-3.4" width="0.254" layer="51"/>
<wire x1="-2.8" y1="-3.4" x2="-3.4" y2="-2.8" width="0.254" layer="21"/>
<wire x1="-3.4" y1="-2.8" x2="-3.4" y2="2.8" width="0.254" layer="51"/>
<circle x="-2.25" y="2.25" radius="0.1581" width="0.254" layer="21"/>
<smd name="1" x="-3.325" y="2.5" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="2" x="-3.325" y="2" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="3" x="-3.325" y="1.5" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="4" x="-3.325" y="1" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="5" x="-3.325" y="0.5" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="6" x="-3.325" y="0" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="7" x="-3.325" y="-0.5" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="8" x="-3.325" y="-1" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="9" x="-3.325" y="-1.5" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="10" x="-3.325" y="-2" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="11" x="-3.325" y="-2.5" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="12" x="-2.5" y="-3.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="13" x="-2" y="-3.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="14" x="-1.5" y="-3.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="15" x="-1" y="-3.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="16" x="-0.5" y="-3.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="17" x="0" y="-3.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="18" x="0.5" y="-3.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="19" x="1" y="-3.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="20" x="1.5" y="-3.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="21" x="2" y="-3.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="22" x="2.5" y="-3.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="23" x="3.325" y="-2.5" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="24" x="3.325" y="-2" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="25" x="3.325" y="-1.5" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="26" x="3.325" y="-1" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="27" x="3.325" y="-0.5" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="28" x="3.325" y="0" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="29" x="3.325" y="0.5" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="30" x="3.325" y="1" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="31" x="3.325" y="1.5" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="32" x="3.325" y="2" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="33" x="3.325" y="2.5" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="34" x="2.5" y="3.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="35" x="2" y="3.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="36" x="1.5" y="3.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="37" x="1" y="3.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="38" x="0.5" y="3.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="39" x="0" y="3.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="40" x="-0.5" y="3.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="41" x="-1" y="3.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="42" x="-1.5" y="3.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="43" x="-2" y="3.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="44" x="-2.5" y="3.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<text x="-2.552" y="0.558" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.302" y="-1.855" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.5" y1="2.375" x2="-3" y2="2.625" layer="51"/>
<rectangle x1="-3.5" y1="1.875" x2="-3" y2="2.125" layer="51"/>
<rectangle x1="-3.5" y1="1.375" x2="-3" y2="1.625" layer="51"/>
<rectangle x1="-3.5" y1="0.875" x2="-3" y2="1.125" layer="51"/>
<rectangle x1="-3.5" y1="0.375" x2="-3" y2="0.625" layer="51"/>
<rectangle x1="-3.5" y1="-0.125" x2="-3" y2="0.125" layer="51"/>
<rectangle x1="-3.5" y1="-0.625" x2="-3" y2="-0.375" layer="51"/>
<rectangle x1="-3.5" y1="-1.125" x2="-3" y2="-0.875" layer="51"/>
<rectangle x1="-3.5" y1="-1.625" x2="-3" y2="-1.375" layer="51"/>
<rectangle x1="-3.5" y1="-2.125" x2="-3" y2="-1.875" layer="51"/>
<rectangle x1="-3.5" y1="-2.625" x2="-3" y2="-2.375" layer="51"/>
<rectangle x1="-2.625" y1="-3.5" x2="-2.375" y2="-3" layer="51"/>
<rectangle x1="-2.125" y1="-3.5" x2="-1.875" y2="-3" layer="51"/>
<rectangle x1="-1.625" y1="-3.5" x2="-1.375" y2="-3" layer="51"/>
<rectangle x1="-1.125" y1="-3.5" x2="-0.875" y2="-3" layer="51"/>
<rectangle x1="-0.625" y1="-3.5" x2="-0.375" y2="-3" layer="51"/>
<rectangle x1="-0.125" y1="-3.5" x2="0.125" y2="-3" layer="51"/>
<rectangle x1="0.375" y1="-3.5" x2="0.625" y2="-3" layer="51"/>
<rectangle x1="0.875" y1="-3.5" x2="1.125" y2="-3" layer="51"/>
<rectangle x1="1.375" y1="-3.5" x2="1.625" y2="-3" layer="51"/>
<rectangle x1="1.875" y1="-3.5" x2="2.125" y2="-3" layer="51"/>
<rectangle x1="2.375" y1="-3.5" x2="2.625" y2="-3" layer="51"/>
<rectangle x1="3" y1="-2.625" x2="3.5" y2="-2.375" layer="51"/>
<rectangle x1="3" y1="-2.125" x2="3.5" y2="-1.875" layer="51"/>
<rectangle x1="3" y1="-1.625" x2="3.5" y2="-1.375" layer="51"/>
<rectangle x1="3" y1="-1.125" x2="3.5" y2="-0.875" layer="51"/>
<rectangle x1="3" y1="-0.625" x2="3.5" y2="-0.375" layer="51"/>
<rectangle x1="3" y1="-0.125" x2="3.5" y2="0.125" layer="51"/>
<rectangle x1="3" y1="0.375" x2="3.5" y2="0.625" layer="51"/>
<rectangle x1="3" y1="0.875" x2="3.5" y2="1.125" layer="51"/>
<rectangle x1="3" y1="1.375" x2="3.5" y2="1.625" layer="51"/>
<rectangle x1="3" y1="1.875" x2="3.5" y2="2.125" layer="51"/>
<rectangle x1="3" y1="2.375" x2="3.5" y2="2.625" layer="51"/>
<rectangle x1="2.375" y1="3" x2="2.625" y2="3.5" layer="51"/>
<rectangle x1="1.875" y1="3" x2="2.125" y2="3.5" layer="51"/>
<rectangle x1="1.375" y1="3" x2="1.625" y2="3.5" layer="51"/>
<rectangle x1="0.875" y1="3" x2="1.125" y2="3.5" layer="51"/>
<rectangle x1="0.375" y1="3" x2="0.625" y2="3.5" layer="51"/>
<rectangle x1="-0.125" y1="3" x2="0.125" y2="3.5" layer="51"/>
<rectangle x1="-0.625" y1="3" x2="-0.375" y2="3.5" layer="51"/>
<rectangle x1="-1.125" y1="3" x2="-0.875" y2="3.5" layer="51"/>
<rectangle x1="-1.625" y1="3" x2="-1.375" y2="3.5" layer="51"/>
<rectangle x1="-2.125" y1="3" x2="-1.875" y2="3.5" layer="51"/>
<rectangle x1="-2.625" y1="3" x2="-2.375" y2="3.5" layer="51"/>
</package>
<package name="TQFP44">
<description>&lt;b&gt;44-lead Thin Quad Flat Package&lt;/b&gt;</description>
<wire x1="-4.8" y1="4.4" x2="-4.4" y2="4.8" width="0.2032" layer="21"/>
<wire x1="-4.4" y1="4.8" x2="4.4" y2="4.8" width="0.2032" layer="21"/>
<wire x1="4.4" y1="4.8" x2="4.8" y2="4.4" width="0.2032" layer="21"/>
<wire x1="4.8" y1="4.4" x2="4.8" y2="-4.4" width="0.2032" layer="21"/>
<wire x1="4.8" y1="-4.4" x2="4.4" y2="-4.8" width="0.2032" layer="21"/>
<wire x1="4.4" y1="-4.8" x2="-4.4" y2="-4.8" width="0.2032" layer="21"/>
<wire x1="-4.4" y1="-4.8" x2="-4.8" y2="-4.4" width="0.2032" layer="21"/>
<wire x1="-4.8" y1="-4.4" x2="-4.8" y2="4.4" width="0.2032" layer="21"/>
<circle x="-4" y="4" radius="0.2827" width="0.254" layer="21"/>
<smd name="1" x="-5.8" y="4" dx="1.5" dy="0.5" layer="1"/>
<smd name="2" x="-5.8" y="3.2" dx="1.5" dy="0.5" layer="1"/>
<smd name="3" x="-5.8" y="2.4" dx="1.5" dy="0.5" layer="1"/>
<smd name="4" x="-5.8" y="1.6" dx="1.5" dy="0.5" layer="1"/>
<smd name="5" x="-5.8" y="0.8" dx="1.5" dy="0.5" layer="1"/>
<smd name="6" x="-5.8" y="0" dx="1.5" dy="0.5" layer="1"/>
<smd name="7" x="-5.8" y="-0.8" dx="1.5" dy="0.5" layer="1"/>
<smd name="8" x="-5.8" y="-1.6" dx="1.5" dy="0.5" layer="1"/>
<smd name="9" x="-5.8" y="-2.4" dx="1.5" dy="0.5" layer="1"/>
<smd name="10" x="-5.8" y="-3.2" dx="1.5" dy="0.5" layer="1"/>
<smd name="11" x="-5.8" y="-4" dx="1.5" dy="0.5" layer="1"/>
<smd name="12" x="-4" y="-5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="13" x="-3.2" y="-5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="14" x="-2.4" y="-5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="15" x="-1.6" y="-5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="16" x="-0.8" y="-5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="17" x="0" y="-5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="18" x="0.8" y="-5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="19" x="1.6" y="-5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="20" x="2.4" y="-5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="21" x="3.2" y="-5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="22" x="4" y="-5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="23" x="5.8" y="-4" dx="1.5" dy="0.5" layer="1"/>
<smd name="24" x="5.8" y="-3.2" dx="1.5" dy="0.5" layer="1"/>
<smd name="25" x="5.8" y="-2.4" dx="1.5" dy="0.5" layer="1"/>
<smd name="26" x="5.8" y="-1.6" dx="1.5" dy="0.5" layer="1"/>
<smd name="27" x="5.8" y="-0.8" dx="1.5" dy="0.5" layer="1"/>
<smd name="28" x="5.8" y="0" dx="1.5" dy="0.5" layer="1"/>
<smd name="29" x="5.8" y="0.8" dx="1.5" dy="0.5" layer="1"/>
<smd name="30" x="5.8" y="1.6" dx="1.5" dy="0.5" layer="1"/>
<smd name="31" x="5.8" y="2.4" dx="1.5" dy="0.5" layer="1"/>
<smd name="32" x="5.8" y="3.2" dx="1.5" dy="0.5" layer="1"/>
<smd name="33" x="5.8" y="4" dx="1.5" dy="0.5" layer="1"/>
<smd name="34" x="4" y="5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="35" x="3.2" y="5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="36" x="2.4" y="5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="37" x="1.6" y="5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="38" x="0.8" y="5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="39" x="0" y="5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="40" x="-0.8" y="5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="41" x="-1.6" y="5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="42" x="-2.4" y="5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="43" x="-3.2" y="5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="44" x="-4" y="5.8" dx="0.5" dy="1.5" layer="1"/>
<text x="-3.81" y="6.985" size="1.778" layer="25">&gt;NAME</text>
<text x="-4.445" y="-8.7551" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-6.1001" y1="3.8001" x2="-4.95" y2="4.1999" layer="51"/>
<rectangle x1="-6.1001" y1="3" x2="-4.95" y2="3.4" layer="51"/>
<rectangle x1="-6.1001" y1="2.1999" x2="-4.95" y2="2.5999" layer="51"/>
<rectangle x1="-6.1001" y1="1.4" x2="-4.95" y2="1.8001" layer="51"/>
<rectangle x1="-6.1001" y1="0.5999" x2="-4.95" y2="1" layer="51"/>
<rectangle x1="-6.1001" y1="-0.1999" x2="-4.95" y2="0.1999" layer="51"/>
<rectangle x1="-6.1001" y1="-1" x2="-4.95" y2="-0.5999" layer="51"/>
<rectangle x1="-6.1001" y1="-1.8001" x2="-4.95" y2="-1.4" layer="51"/>
<rectangle x1="-6.1001" y1="-2.5999" x2="-4.95" y2="-2.1999" layer="51"/>
<rectangle x1="-6.1001" y1="-3.4" x2="-4.95" y2="-3" layer="51"/>
<rectangle x1="-6.1001" y1="-4.1999" x2="-4.95" y2="-3.8001" layer="51"/>
<rectangle x1="-4.1999" y1="-6.1001" x2="-3.8001" y2="-4.95" layer="51"/>
<rectangle x1="-3.4" y1="-6.1001" x2="-3" y2="-4.95" layer="51"/>
<rectangle x1="-2.5999" y1="-6.1001" x2="-2.1999" y2="-4.95" layer="51"/>
<rectangle x1="-1.8001" y1="-6.1001" x2="-1.4" y2="-4.95" layer="51"/>
<rectangle x1="-1" y1="-6.1001" x2="-0.5999" y2="-4.95" layer="51"/>
<rectangle x1="-0.1999" y1="-6.1001" x2="0.1999" y2="-4.95" layer="51"/>
<rectangle x1="0.5999" y1="-6.1001" x2="1" y2="-4.95" layer="51"/>
<rectangle x1="1.4" y1="-6.1001" x2="1.8001" y2="-4.95" layer="51"/>
<rectangle x1="2.1999" y1="-6.1001" x2="2.5999" y2="-4.95" layer="51"/>
<rectangle x1="3" y1="-6.1001" x2="3.4" y2="-4.95" layer="51"/>
<rectangle x1="3.8001" y1="-6.1001" x2="4.1999" y2="-4.95" layer="51"/>
<rectangle x1="4.95" y1="-4.1999" x2="6.1001" y2="-3.8001" layer="51"/>
<rectangle x1="4.95" y1="-3.4" x2="6.1001" y2="-3" layer="51"/>
<rectangle x1="4.95" y1="-2.5999" x2="6.1001" y2="-2.1999" layer="51"/>
<rectangle x1="4.95" y1="-1.8001" x2="6.1001" y2="-1.4" layer="51"/>
<rectangle x1="4.95" y1="-1" x2="6.1001" y2="-0.5999" layer="51"/>
<rectangle x1="4.95" y1="-0.1999" x2="6.1001" y2="0.1999" layer="51"/>
<rectangle x1="4.95" y1="0.5999" x2="6.1001" y2="1" layer="51"/>
<rectangle x1="4.95" y1="1.4" x2="6.1001" y2="1.8001" layer="51"/>
<rectangle x1="4.95" y1="2.1999" x2="6.1001" y2="2.5999" layer="51"/>
<rectangle x1="4.95" y1="3" x2="6.1001" y2="3.4" layer="51"/>
<rectangle x1="4.95" y1="3.8001" x2="6.1001" y2="4.1999" layer="51"/>
<rectangle x1="3.8001" y1="4.95" x2="4.1999" y2="6.1001" layer="51"/>
<rectangle x1="3" y1="4.95" x2="3.4" y2="6.1001" layer="51"/>
<rectangle x1="2.1999" y1="4.95" x2="2.5999" y2="6.1001" layer="51"/>
<rectangle x1="1.4" y1="4.95" x2="1.8001" y2="6.1001" layer="51"/>
<rectangle x1="0.5999" y1="4.95" x2="1" y2="6.1001" layer="51"/>
<rectangle x1="-0.1999" y1="4.95" x2="0.1999" y2="6.1001" layer="51"/>
<rectangle x1="-1" y1="4.95" x2="-0.5999" y2="6.1001" layer="51"/>
<rectangle x1="-1.8001" y1="4.95" x2="-1.4" y2="6.1001" layer="51"/>
<rectangle x1="-2.5999" y1="4.95" x2="-2.1999" y2="6.1001" layer="51"/>
<rectangle x1="-3.4" y1="4.95" x2="-3" y2="6.1001" layer="51"/>
<rectangle x1="-4.1999" y1="4.95" x2="-3.8001" y2="6.1001" layer="51"/>
</package>
<package name="MLF32">
<description>&lt;b&gt;32M1-A&lt;/b&gt; Micro Lead Frame package (MLF)</description>
<wire x1="-2.35" y1="2.05" x2="-2.05" y2="2.35" width="0.254" layer="21"/>
<wire x1="-2.05" y1="2.35" x2="2.05" y2="2.35" width="0.254" layer="51"/>
<wire x1="2.05" y1="2.35" x2="2.35" y2="2.05" width="0.254" layer="21"/>
<wire x1="2.35" y1="2.05" x2="2.35" y2="-2.05" width="0.254" layer="51"/>
<wire x1="2.35" y1="-2.05" x2="2.05" y2="-2.35" width="0.254" layer="21"/>
<wire x1="2.05" y1="-2.35" x2="-2.05" y2="-2.35" width="0.254" layer="51"/>
<wire x1="-2.05" y1="-2.35" x2="-2.35" y2="-2.05" width="0.254" layer="21"/>
<wire x1="-2.35" y1="-2.05" x2="-2.35" y2="2.05" width="0.254" layer="51"/>
<circle x="-1.55" y="1.55" radius="0.15" width="0.254" layer="21"/>
<smd name="1" x="-2.35" y="1.75" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="2" x="-2.35" y="1.25" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="3" x="-2.35" y="0.75" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="4" x="-2.35" y="0.25" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="5" x="-2.35" y="-0.25" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="6" x="-2.35" y="-0.75" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="7" x="-2.35" y="-1.25" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="8" x="-2.35" y="-1.75" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="9" x="-1.75" y="-2.35" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="10" x="-1.25" y="-2.35" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="11" x="-0.75" y="-2.35" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="12" x="-0.25" y="-2.35" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="13" x="0.25" y="-2.35" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="14" x="0.75" y="-2.35" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="15" x="1.25" y="-2.35" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="16" x="1.75" y="-2.35" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="17" x="2.35" y="-1.75" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="18" x="2.35" y="-1.25" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="19" x="2.35" y="-0.75" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="20" x="2.35" y="-0.25" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="21" x="2.35" y="0.25" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="22" x="2.35" y="0.75" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="23" x="2.35" y="1.25" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="24" x="2.35" y="1.75" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="25" x="1.75" y="2.35" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="26" x="1.25" y="2.35" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="27" x="0.75" y="2.35" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="28" x="0.25" y="2.35" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="29" x="-0.25" y="2.35" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="30" x="-0.75" y="2.35" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="31" x="-1.25" y="2.35" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="32" x="-1.75" y="2.35" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<text x="-2.54" y="3.175" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-4.445" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.5" y1="1.6" x2="-2.05" y2="1.9" layer="51"/>
<rectangle x1="-2.5" y1="1.1" x2="-2.05" y2="1.4" layer="51"/>
<rectangle x1="-2.5" y1="0.6" x2="-2.05" y2="0.9" layer="51"/>
<rectangle x1="-2.5" y1="0.1" x2="-2.05" y2="0.4" layer="51"/>
<rectangle x1="-2.5" y1="-0.4" x2="-2.05" y2="-0.1" layer="51"/>
<rectangle x1="-2.5" y1="-0.9" x2="-2.05" y2="-0.6" layer="51"/>
<rectangle x1="-2.5" y1="-1.4" x2="-2.05" y2="-1.1" layer="51"/>
<rectangle x1="-2.5" y1="-1.9" x2="-2.05" y2="-1.6" layer="51"/>
<rectangle x1="-1.9" y1="-2.5" x2="-1.6" y2="-2.05" layer="51"/>
<rectangle x1="-1.4" y1="-2.5" x2="-1.1" y2="-2.05" layer="51"/>
<rectangle x1="-0.9" y1="-2.5" x2="-0.6" y2="-2.05" layer="51"/>
<rectangle x1="-0.4" y1="-2.5" x2="-0.1" y2="-2.05" layer="51"/>
<rectangle x1="0.1" y1="-2.5" x2="0.4" y2="-2.05" layer="51"/>
<rectangle x1="0.6" y1="-2.5" x2="0.9" y2="-2.05" layer="51"/>
<rectangle x1="1.1" y1="-2.5" x2="1.4" y2="-2.05" layer="51"/>
<rectangle x1="1.6" y1="-2.5" x2="1.9" y2="-2.05" layer="51"/>
<rectangle x1="2.05" y1="-1.9" x2="2.5" y2="-1.6" layer="51"/>
<rectangle x1="2.05" y1="-1.4" x2="2.5" y2="-1.1" layer="51"/>
<rectangle x1="2.05" y1="-0.9" x2="2.5" y2="-0.6" layer="51"/>
<rectangle x1="2.05" y1="-0.4" x2="2.5" y2="-0.1" layer="51"/>
<rectangle x1="2.05" y1="0.1" x2="2.5" y2="0.4" layer="51"/>
<rectangle x1="2.05" y1="0.6" x2="2.5" y2="0.9" layer="51"/>
<rectangle x1="2.05" y1="1.1" x2="2.5" y2="1.4" layer="51"/>
<rectangle x1="2.05" y1="1.6" x2="2.5" y2="1.9" layer="51"/>
<rectangle x1="1.6" y1="2.05" x2="1.9" y2="2.5" layer="51"/>
<rectangle x1="1.1" y1="2.05" x2="1.4" y2="2.5" layer="51"/>
<rectangle x1="0.6" y1="2.05" x2="0.9" y2="2.5" layer="51"/>
<rectangle x1="0.1" y1="2.05" x2="0.4" y2="2.5" layer="51"/>
<rectangle x1="-0.4" y1="2.05" x2="-0.1" y2="2.5" layer="51"/>
<rectangle x1="-0.9" y1="2.05" x2="-0.6" y2="2.5" layer="51"/>
<rectangle x1="-1.4" y1="2.05" x2="-1.1" y2="2.5" layer="51"/>
<rectangle x1="-1.9" y1="2.05" x2="-1.6" y2="2.5" layer="51"/>
</package>
<package name="TQFP32-08">
<description>&lt;B&gt;Thin Plasic Quad Flat Package&lt;/B&gt; Grid 0.8 mm</description>
<wire x1="3.505" y1="3.505" x2="3.505" y2="-3.505" width="0.1524" layer="21"/>
<wire x1="3.505" y1="-3.505" x2="-3.505" y2="-3.505" width="0.1524" layer="21"/>
<wire x1="-3.505" y1="-3.505" x2="-3.505" y2="3.15" width="0.1524" layer="21"/>
<wire x1="-3.15" y1="3.505" x2="3.505" y2="3.505" width="0.1524" layer="21"/>
<wire x1="-3.15" y1="3.505" x2="-3.505" y2="3.15" width="0.1524" layer="21"/>
<circle x="-2.7432" y="2.7432" radius="0.3592" width="0.1524" layer="21"/>
<smd name="1" x="-4.2926" y="2.8" dx="1.27" dy="0.5588" layer="1"/>
<smd name="2" x="-4.2926" y="2" dx="1.27" dy="0.5588" layer="1"/>
<smd name="3" x="-4.2926" y="1.2" dx="1.27" dy="0.5588" layer="1"/>
<smd name="4" x="-4.2926" y="0.4" dx="1.27" dy="0.5588" layer="1"/>
<smd name="5" x="-4.2926" y="-0.4" dx="1.27" dy="0.5588" layer="1"/>
<smd name="6" x="-4.2926" y="-1.2" dx="1.27" dy="0.5588" layer="1"/>
<smd name="7" x="-4.2926" y="-2" dx="1.27" dy="0.5588" layer="1"/>
<smd name="8" x="-4.2926" y="-2.8" dx="1.27" dy="0.5588" layer="1"/>
<smd name="9" x="-2.8" y="-4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="10" x="-2" y="-4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="11" x="-1.2" y="-4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="12" x="-0.4" y="-4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="13" x="0.4" y="-4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="14" x="1.2" y="-4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="15" x="2" y="-4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="16" x="2.8" y="-4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="17" x="4.2926" y="-2.8" dx="1.27" dy="0.5588" layer="1"/>
<smd name="18" x="4.2926" y="-2" dx="1.27" dy="0.5588" layer="1"/>
<smd name="19" x="4.2926" y="-1.2" dx="1.27" dy="0.5588" layer="1"/>
<smd name="20" x="4.2926" y="-0.4" dx="1.27" dy="0.5588" layer="1"/>
<smd name="21" x="4.2926" y="0.4" dx="1.27" dy="0.5588" layer="1"/>
<smd name="22" x="4.2926" y="1.2" dx="1.27" dy="0.5588" layer="1"/>
<smd name="23" x="4.2926" y="2" dx="1.27" dy="0.5588" layer="1"/>
<smd name="24" x="4.2926" y="2.8" dx="1.27" dy="0.5588" layer="1"/>
<smd name="25" x="2.8" y="4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="26" x="2" y="4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="27" x="1.2" y="4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="28" x="0.4" y="4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="29" x="-0.4" y="4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="30" x="-1.2" y="4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="31" x="-2" y="4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="32" x="-2.8" y="4.2926" dx="0.5588" dy="1.27" layer="1"/>
<text x="-2.7686" y="5.08" size="0.8128" layer="25">&gt;NAME</text>
<text x="-3.0226" y="-1.27" size="0.8128" layer="27">&gt;VALUE</text>
<rectangle x1="-4.5466" y1="2.5714" x2="-3.556" y2="3.0286" layer="51"/>
<rectangle x1="-4.5466" y1="1.7714" x2="-3.556" y2="2.2286" layer="51"/>
<rectangle x1="-4.5466" y1="0.9714" x2="-3.556" y2="1.4286" layer="51"/>
<rectangle x1="-4.5466" y1="0.1714" x2="-3.556" y2="0.6286" layer="51"/>
<rectangle x1="-4.5466" y1="-0.6286" x2="-3.556" y2="-0.1714" layer="51"/>
<rectangle x1="-4.5466" y1="-1.4286" x2="-3.556" y2="-0.9714" layer="51"/>
<rectangle x1="-4.5466" y1="-2.2286" x2="-3.556" y2="-1.7714" layer="51"/>
<rectangle x1="-4.5466" y1="-3.0286" x2="-3.556" y2="-2.5714" layer="51"/>
<rectangle x1="-3.0286" y1="-4.5466" x2="-2.5714" y2="-3.556" layer="51"/>
<rectangle x1="-2.2286" y1="-4.5466" x2="-1.7714" y2="-3.556" layer="51"/>
<rectangle x1="-1.4286" y1="-4.5466" x2="-0.9714" y2="-3.556" layer="51"/>
<rectangle x1="-0.6286" y1="-4.5466" x2="-0.1714" y2="-3.556" layer="51"/>
<rectangle x1="0.1714" y1="-4.5466" x2="0.6286" y2="-3.556" layer="51"/>
<rectangle x1="0.9714" y1="-4.5466" x2="1.4286" y2="-3.556" layer="51"/>
<rectangle x1="1.7714" y1="-4.5466" x2="2.2286" y2="-3.556" layer="51"/>
<rectangle x1="2.5714" y1="-4.5466" x2="3.0286" y2="-3.556" layer="51"/>
<rectangle x1="3.556" y1="-3.0286" x2="4.5466" y2="-2.5714" layer="51"/>
<rectangle x1="3.556" y1="-2.2286" x2="4.5466" y2="-1.7714" layer="51"/>
<rectangle x1="3.556" y1="-1.4286" x2="4.5466" y2="-0.9714" layer="51"/>
<rectangle x1="3.556" y1="-0.6286" x2="4.5466" y2="-0.1714" layer="51"/>
<rectangle x1="3.556" y1="0.1714" x2="4.5466" y2="0.6286" layer="51"/>
<rectangle x1="3.556" y1="0.9714" x2="4.5466" y2="1.4286" layer="51"/>
<rectangle x1="3.556" y1="1.7714" x2="4.5466" y2="2.2286" layer="51"/>
<rectangle x1="3.556" y1="2.5714" x2="4.5466" y2="3.0286" layer="51"/>
<rectangle x1="2.5714" y1="3.556" x2="3.0286" y2="4.5466" layer="51"/>
<rectangle x1="1.7714" y1="3.556" x2="2.2286" y2="4.5466" layer="51"/>
<rectangle x1="0.9714" y1="3.556" x2="1.4286" y2="4.5466" layer="51"/>
<rectangle x1="0.1714" y1="3.556" x2="0.6286" y2="4.5466" layer="51"/>
<rectangle x1="-0.6286" y1="3.556" x2="-0.1714" y2="4.5466" layer="51"/>
<rectangle x1="-1.4286" y1="3.556" x2="-0.9714" y2="4.5466" layer="51"/>
<rectangle x1="-2.2286" y1="3.556" x2="-1.7714" y2="4.5466" layer="51"/>
<rectangle x1="-3.0286" y1="3.556" x2="-2.5714" y2="4.5466" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="32-I/O-M32-A">
<wire x1="-15.24" y1="45.72" x2="15.24" y2="45.72" width="0.254" layer="94"/>
<wire x1="15.24" y1="45.72" x2="15.24" y2="-45.72" width="0.254" layer="94"/>
<wire x1="15.24" y1="-45.72" x2="-15.24" y2="-45.72" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-45.72" x2="-15.24" y2="45.72" width="0.254" layer="94"/>
<text x="-15.24" y="46.482" size="1.778" layer="95">&gt;NAME</text>
<text x="-15.24" y="-48.26" size="1.778" layer="96">&gt;VALUE</text>
<pin name="(ADC7)PA7" x="20.32" y="43.18" length="middle" rot="R180"/>
<pin name="(ADC6)PA6" x="20.32" y="40.64" length="middle" rot="R180"/>
<pin name="(ADC5)PA5" x="20.32" y="38.1" length="middle" rot="R180"/>
<pin name="(ADC4)PA4" x="20.32" y="35.56" length="middle" rot="R180"/>
<pin name="(ADC3)PA3" x="20.32" y="33.02" length="middle" rot="R180"/>
<pin name="(ADC2)PA2" x="20.32" y="30.48" length="middle" rot="R180"/>
<pin name="(ADC1)PA1" x="20.32" y="27.94" length="middle" rot="R180"/>
<pin name="(ADC0)PA0" x="20.32" y="25.4" length="middle" rot="R180"/>
<pin name="(SCK)PB7" x="20.32" y="20.32" length="middle" rot="R180"/>
<pin name="(MISO)PB6" x="20.32" y="17.78" length="middle" rot="R180"/>
<pin name="(MOSI)PB5" x="20.32" y="15.24" length="middle" rot="R180"/>
<pin name="(SS)PB4" x="20.32" y="12.7" length="middle" rot="R180"/>
<pin name="(AIN1/OC0)PB3" x="20.32" y="10.16" length="middle" rot="R180"/>
<pin name="(AIN0/INT2)PB2" x="20.32" y="7.62" length="middle" rot="R180"/>
<pin name="(T1)PB1" x="20.32" y="5.08" length="middle" rot="R180"/>
<pin name="(T0/XCK)PB0" x="20.32" y="2.54" length="middle" rot="R180"/>
<pin name="(TOSC2)PC7" x="20.32" y="-2.54" length="middle" rot="R180"/>
<pin name="(TOSC1)PC6" x="20.32" y="-5.08" length="middle" rot="R180"/>
<pin name="(TDI)PC5" x="20.32" y="-7.62" length="middle" rot="R180"/>
<pin name="(TDO)PC4" x="20.32" y="-10.16" length="middle" rot="R180"/>
<pin name="(TMS)PC3" x="20.32" y="-12.7" length="middle" rot="R180"/>
<pin name="(TCK)PC2" x="20.32" y="-15.24" length="middle" rot="R180"/>
<pin name="PC1(SDA)" x="20.32" y="-17.78" length="middle" rot="R180"/>
<pin name="PC0(SCL)" x="20.32" y="-20.32" length="middle" rot="R180"/>
<pin name="GND@1" x="-20.32" y="20.32" length="middle" direction="pwr"/>
<pin name="AVCC" x="-20.32" y="22.86" length="middle" direction="pwr"/>
<pin name="AREF" x="-20.32" y="25.4" length="middle" direction="pas"/>
<pin name="XTAL1" x="-20.32" y="30.48" length="middle"/>
<pin name="XTAL2" x="-20.32" y="35.56" length="middle"/>
<pin name="GND1" x="-20.32" y="5.08" visible="pad" length="middle" direction="pwr"/>
<pin name="GND2" x="-20.32" y="0" visible="pad" length="middle" direction="pwr"/>
<pin name="RESET" x="-20.32" y="43.18" length="middle" direction="in" function="dot"/>
<pin name="(RXD)PD0" x="20.32" y="-43.18" length="middle" rot="R180"/>
<pin name="(TXD)PD1" x="20.32" y="-40.64" length="middle" rot="R180"/>
<pin name="(INT0)PD2" x="20.32" y="-38.1" length="middle" rot="R180"/>
<pin name="(INT1)PD3" x="20.32" y="-35.56" length="middle" rot="R180"/>
<pin name="(OC1B)PD4" x="20.32" y="-33.02" length="middle" rot="R180"/>
<pin name="(OC1A)PD5" x="20.32" y="-30.48" length="middle" rot="R180"/>
<pin name="(ICP)PD6" x="20.32" y="-27.94" length="middle" rot="R180"/>
<pin name="(OC2)PD7" x="20.32" y="-25.4" length="middle" rot="R180"/>
<pin name="VCC1" x="-20.32" y="15.24" visible="pad" length="middle" direction="pwr"/>
<pin name="VCC" x="-20.32" y="12.7" length="middle" direction="pwr"/>
<pin name="VCC2" x="-20.32" y="10.16" visible="pad" length="middle" direction="pwr"/>
<pin name="GND" x="-20.32" y="2.54" length="middle" direction="pwr"/>
</symbol>
<symbol name="23-I/O">
<wire x1="-17.78" y1="27.94" x2="20.32" y2="27.94" width="0.254" layer="94"/>
<wire x1="20.32" y1="27.94" x2="20.32" y2="-35.56" width="0.254" layer="94"/>
<wire x1="20.32" y1="-35.56" x2="-17.78" y2="-35.56" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-35.56" x2="-17.78" y2="27.94" width="0.254" layer="94"/>
<text x="-17.78" y="-38.1" size="1.778" layer="95">&gt;NAME</text>
<text x="-17.78" y="29.21" size="1.778" layer="96">&gt;VALUE</text>
<pin name="PB5(SCK)" x="25.4" y="-33.02" length="middle" rot="R180"/>
<pin name="PB7(XTAL2/TOSC2)" x="-22.86" y="2.54" length="middle"/>
<pin name="PB6(XTAL1/TOSC1)" x="-22.86" y="7.62" length="middle"/>
<pin name="GND@1" x="-22.86" y="-5.08" length="middle" direction="pwr"/>
<pin name="GND@2" x="-22.86" y="-7.62" length="middle" direction="pwr"/>
<pin name="VCC@1" x="-22.86" y="-10.16" length="middle" direction="pwr"/>
<pin name="VCC@2" x="-22.86" y="-12.7" length="middle" direction="pwr"/>
<pin name="GND" x="-22.86" y="20.32" length="middle" direction="pwr"/>
<pin name="AREF" x="-22.86" y="17.78" length="middle" direction="pas"/>
<pin name="AVCC" x="-22.86" y="15.24" length="middle" direction="pwr"/>
<pin name="PB4(MISO)" x="25.4" y="-30.48" length="middle" rot="R180"/>
<pin name="PB3(MOSI/OC2)" x="25.4" y="-27.94" length="middle" rot="R180"/>
<pin name="PB2(SS/OC1B)" x="25.4" y="-25.4" length="middle" rot="R180"/>
<pin name="PB1(OC1A)" x="25.4" y="-22.86" length="middle" rot="R180"/>
<pin name="PB0(ICP)" x="25.4" y="-20.32" length="middle" rot="R180"/>
<pin name="PD7(AIN1)" x="25.4" y="-15.24" length="middle" rot="R180"/>
<pin name="PD6(AIN0)" x="25.4" y="-12.7" length="middle" rot="R180"/>
<pin name="PD5(T1)" x="25.4" y="-10.16" length="middle" rot="R180"/>
<pin name="PD4(XCK/T0)" x="25.4" y="-7.62" length="middle" rot="R180"/>
<pin name="PD3(INT1)" x="25.4" y="-5.08" length="middle" rot="R180"/>
<pin name="PD2(INT0)" x="25.4" y="-2.54" length="middle" rot="R180"/>
<pin name="PD1(TXD)" x="25.4" y="0" length="middle" rot="R180"/>
<pin name="PD0(RXD)" x="25.4" y="2.54" length="middle" rot="R180"/>
<pin name="ADC7" x="25.4" y="7.62" length="middle" rot="R180"/>
<pin name="ADC6" x="25.4" y="10.16" length="middle" rot="R180"/>
<pin name="PC5(ADC5/SCL)" x="25.4" y="12.7" length="middle" rot="R180"/>
<pin name="PC4(ADC4/SDA)" x="25.4" y="15.24" length="middle" rot="R180"/>
<pin name="PC3(ADC3)" x="25.4" y="17.78" length="middle" rot="R180"/>
<pin name="PC2(ADC2)" x="25.4" y="20.32" length="middle" rot="R180"/>
<pin name="PC1(ADC1)" x="25.4" y="22.86" length="middle" rot="R180"/>
<pin name="PC0(ADC0)" x="25.4" y="25.4" length="middle" rot="R180"/>
<pin name="PC6(/RESET)" x="-22.86" y="25.4" length="middle" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MEGA32" prefix="IC">
<description>&lt;b&gt;MICROCONTROLLER&lt;/b&gt;&lt;p&gt;
32 Kbytes FLASH&lt;br&gt;
2 Kbytes SRAM&lt;br&gt;
1 Kbytes EEPROM&lt;br&gt;
USART&lt;br&gt;
8-channel 10 bit ADC&lt;br&gt;
Source: www.atmel.com .. doc2503.pdf</description>
<gates>
<gate name="G$1" symbol="32-I/O-M32-A" x="0" y="0"/>
</gates>
<devices>
<device name="-M" package="MLF44">
<connects>
<connect gate="G$1" pin="(ADC0)PA0" pad="37"/>
<connect gate="G$1" pin="(ADC1)PA1" pad="36"/>
<connect gate="G$1" pin="(ADC2)PA2" pad="35"/>
<connect gate="G$1" pin="(ADC3)PA3" pad="34"/>
<connect gate="G$1" pin="(ADC4)PA4" pad="33"/>
<connect gate="G$1" pin="(ADC5)PA5" pad="32"/>
<connect gate="G$1" pin="(ADC6)PA6" pad="31"/>
<connect gate="G$1" pin="(ADC7)PA7" pad="30"/>
<connect gate="G$1" pin="(AIN0/INT2)PB2" pad="42"/>
<connect gate="G$1" pin="(AIN1/OC0)PB3" pad="43"/>
<connect gate="G$1" pin="(ICP)PD6" pad="15"/>
<connect gate="G$1" pin="(INT0)PD2" pad="11"/>
<connect gate="G$1" pin="(INT1)PD3" pad="12"/>
<connect gate="G$1" pin="(MISO)PB6" pad="2"/>
<connect gate="G$1" pin="(MOSI)PB5" pad="1"/>
<connect gate="G$1" pin="(OC1A)PD5" pad="14"/>
<connect gate="G$1" pin="(OC1B)PD4" pad="13"/>
<connect gate="G$1" pin="(OC2)PD7" pad="16"/>
<connect gate="G$1" pin="(RXD)PD0" pad="9"/>
<connect gate="G$1" pin="(SCK)PB7" pad="3"/>
<connect gate="G$1" pin="(SS)PB4" pad="44"/>
<connect gate="G$1" pin="(T0/XCK)PB0" pad="40"/>
<connect gate="G$1" pin="(T1)PB1" pad="41"/>
<connect gate="G$1" pin="(TCK)PC2" pad="21"/>
<connect gate="G$1" pin="(TDI)PC5" pad="24"/>
<connect gate="G$1" pin="(TDO)PC4" pad="23"/>
<connect gate="G$1" pin="(TMS)PC3" pad="22"/>
<connect gate="G$1" pin="(TOSC1)PC6" pad="25"/>
<connect gate="G$1" pin="(TOSC2)PC7" pad="26"/>
<connect gate="G$1" pin="(TXD)PD1" pad="10"/>
<connect gate="G$1" pin="AREF" pad="29"/>
<connect gate="G$1" pin="AVCC" pad="27"/>
<connect gate="G$1" pin="GND" pad="6"/>
<connect gate="G$1" pin="GND1" pad="18"/>
<connect gate="G$1" pin="GND2" pad="39"/>
<connect gate="G$1" pin="GND@1" pad="28"/>
<connect gate="G$1" pin="PC0(SCL)" pad="19"/>
<connect gate="G$1" pin="PC1(SDA)" pad="20"/>
<connect gate="G$1" pin="RESET" pad="4"/>
<connect gate="G$1" pin="VCC" pad="5"/>
<connect gate="G$1" pin="VCC1" pad="17"/>
<connect gate="G$1" pin="VCC2" pad="38"/>
<connect gate="G$1" pin="XTAL1" pad="8"/>
<connect gate="G$1" pin="XTAL2" pad="7"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="ATMEGA32-16MU" constant="no"/>
<attribute name="OC_FARNELL" value="1455108" constant="no"/>
<attribute name="OC_NEWARK" value="58M3733" constant="no"/>
</technology>
</technologies>
</device>
<device name="-A" package="TQFP44">
<connects>
<connect gate="G$1" pin="(ADC0)PA0" pad="37"/>
<connect gate="G$1" pin="(ADC1)PA1" pad="36"/>
<connect gate="G$1" pin="(ADC2)PA2" pad="35"/>
<connect gate="G$1" pin="(ADC3)PA3" pad="34"/>
<connect gate="G$1" pin="(ADC4)PA4" pad="33"/>
<connect gate="G$1" pin="(ADC5)PA5" pad="32"/>
<connect gate="G$1" pin="(ADC6)PA6" pad="31"/>
<connect gate="G$1" pin="(ADC7)PA7" pad="30"/>
<connect gate="G$1" pin="(AIN0/INT2)PB2" pad="42"/>
<connect gate="G$1" pin="(AIN1/OC0)PB3" pad="43"/>
<connect gate="G$1" pin="(ICP)PD6" pad="15"/>
<connect gate="G$1" pin="(INT0)PD2" pad="11"/>
<connect gate="G$1" pin="(INT1)PD3" pad="12"/>
<connect gate="G$1" pin="(MISO)PB6" pad="2"/>
<connect gate="G$1" pin="(MOSI)PB5" pad="1"/>
<connect gate="G$1" pin="(OC1A)PD5" pad="14"/>
<connect gate="G$1" pin="(OC1B)PD4" pad="13"/>
<connect gate="G$1" pin="(OC2)PD7" pad="16"/>
<connect gate="G$1" pin="(RXD)PD0" pad="9"/>
<connect gate="G$1" pin="(SCK)PB7" pad="3"/>
<connect gate="G$1" pin="(SS)PB4" pad="44"/>
<connect gate="G$1" pin="(T0/XCK)PB0" pad="40"/>
<connect gate="G$1" pin="(T1)PB1" pad="41"/>
<connect gate="G$1" pin="(TCK)PC2" pad="21"/>
<connect gate="G$1" pin="(TDI)PC5" pad="24"/>
<connect gate="G$1" pin="(TDO)PC4" pad="23"/>
<connect gate="G$1" pin="(TMS)PC3" pad="22"/>
<connect gate="G$1" pin="(TOSC1)PC6" pad="25"/>
<connect gate="G$1" pin="(TOSC2)PC7" pad="26"/>
<connect gate="G$1" pin="(TXD)PD1" pad="10"/>
<connect gate="G$1" pin="AREF" pad="29"/>
<connect gate="G$1" pin="AVCC" pad="27"/>
<connect gate="G$1" pin="GND" pad="6"/>
<connect gate="G$1" pin="GND1" pad="18"/>
<connect gate="G$1" pin="GND2" pad="39"/>
<connect gate="G$1" pin="GND@1" pad="28"/>
<connect gate="G$1" pin="PC0(SCL)" pad="19"/>
<connect gate="G$1" pin="PC1(SDA)" pad="20"/>
<connect gate="G$1" pin="RESET" pad="4"/>
<connect gate="G$1" pin="VCC" pad="5"/>
<connect gate="G$1" pin="VCC1" pad="17"/>
<connect gate="G$1" pin="VCC2" pad="38"/>
<connect gate="G$1" pin="XTAL1" pad="8"/>
<connect gate="G$1" pin="XTAL2" pad="7"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="ATMEGA32-16AU" constant="no"/>
<attribute name="OC_FARNELL" value="9171274" constant="no"/>
<attribute name="OC_NEWARK" value="69K6677" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MEGA8" prefix="IC">
<description>&lt;b&gt;MICROCONTROLLER&lt;/b&gt;&lt;p&gt;
8 Kbytes FLASH, 1 kbytes SRAM, 512 bytes EEPROM, USART, 6-channel 10 bit ADC, 2-channel 8 bit ADC&lt;br&gt;
Pin compatible with Atmega48, ATMega88, ATMega168&lt;br&gt;
Source: avr.lbr</description>
<gates>
<gate name="G$1" symbol="23-I/O" x="0" y="2.54"/>
</gates>
<devices>
<device name="-MI" package="MLF32">
<connects>
<connect gate="G$1" pin="ADC6" pad="19"/>
<connect gate="G$1" pin="ADC7" pad="22"/>
<connect gate="G$1" pin="AREF" pad="20"/>
<connect gate="G$1" pin="AVCC" pad="18"/>
<connect gate="G$1" pin="GND" pad="21"/>
<connect gate="G$1" pin="GND@1" pad="3"/>
<connect gate="G$1" pin="GND@2" pad="5"/>
<connect gate="G$1" pin="PB0(ICP)" pad="12"/>
<connect gate="G$1" pin="PB1(OC1A)" pad="13"/>
<connect gate="G$1" pin="PB2(SS/OC1B)" pad="14"/>
<connect gate="G$1" pin="PB3(MOSI/OC2)" pad="15"/>
<connect gate="G$1" pin="PB4(MISO)" pad="16"/>
<connect gate="G$1" pin="PB5(SCK)" pad="17"/>
<connect gate="G$1" pin="PB6(XTAL1/TOSC1)" pad="7"/>
<connect gate="G$1" pin="PB7(XTAL2/TOSC2)" pad="8"/>
<connect gate="G$1" pin="PC0(ADC0)" pad="23"/>
<connect gate="G$1" pin="PC1(ADC1)" pad="24"/>
<connect gate="G$1" pin="PC2(ADC2)" pad="25"/>
<connect gate="G$1" pin="PC3(ADC3)" pad="26"/>
<connect gate="G$1" pin="PC4(ADC4/SDA)" pad="27"/>
<connect gate="G$1" pin="PC5(ADC5/SCL)" pad="28"/>
<connect gate="G$1" pin="PC6(/RESET)" pad="29"/>
<connect gate="G$1" pin="PD0(RXD)" pad="30"/>
<connect gate="G$1" pin="PD1(TXD)" pad="31"/>
<connect gate="G$1" pin="PD2(INT0)" pad="32"/>
<connect gate="G$1" pin="PD3(INT1)" pad="1"/>
<connect gate="G$1" pin="PD4(XCK/T0)" pad="2"/>
<connect gate="G$1" pin="PD5(T1)" pad="9"/>
<connect gate="G$1" pin="PD6(AIN0)" pad="10"/>
<connect gate="G$1" pin="PD7(AIN1)" pad="11"/>
<connect gate="G$1" pin="VCC@1" pad="4"/>
<connect gate="G$1" pin="VCC@2" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="ATMEGA88PA-MU" constant="no"/>
<attribute name="OC_FARNELL" value="1715491" constant="no"/>
<attribute name="OC_NEWARK" value="15R0272" constant="no"/>
</technology>
</technologies>
</device>
<device name="-AI" package="TQFP32-08">
<connects>
<connect gate="G$1" pin="ADC6" pad="19"/>
<connect gate="G$1" pin="ADC7" pad="22"/>
<connect gate="G$1" pin="AREF" pad="20"/>
<connect gate="G$1" pin="AVCC" pad="18"/>
<connect gate="G$1" pin="GND" pad="21"/>
<connect gate="G$1" pin="GND@1" pad="3"/>
<connect gate="G$1" pin="GND@2" pad="5"/>
<connect gate="G$1" pin="PB0(ICP)" pad="12"/>
<connect gate="G$1" pin="PB1(OC1A)" pad="13"/>
<connect gate="G$1" pin="PB2(SS/OC1B)" pad="14"/>
<connect gate="G$1" pin="PB3(MOSI/OC2)" pad="15"/>
<connect gate="G$1" pin="PB4(MISO)" pad="16"/>
<connect gate="G$1" pin="PB5(SCK)" pad="17"/>
<connect gate="G$1" pin="PB6(XTAL1/TOSC1)" pad="7"/>
<connect gate="G$1" pin="PB7(XTAL2/TOSC2)" pad="8"/>
<connect gate="G$1" pin="PC0(ADC0)" pad="23"/>
<connect gate="G$1" pin="PC1(ADC1)" pad="24"/>
<connect gate="G$1" pin="PC2(ADC2)" pad="25"/>
<connect gate="G$1" pin="PC3(ADC3)" pad="26"/>
<connect gate="G$1" pin="PC4(ADC4/SDA)" pad="27"/>
<connect gate="G$1" pin="PC5(ADC5/SCL)" pad="28"/>
<connect gate="G$1" pin="PC6(/RESET)" pad="29"/>
<connect gate="G$1" pin="PD0(RXD)" pad="30"/>
<connect gate="G$1" pin="PD1(TXD)" pad="31"/>
<connect gate="G$1" pin="PD2(INT0)" pad="32"/>
<connect gate="G$1" pin="PD3(INT1)" pad="1"/>
<connect gate="G$1" pin="PD4(XCK/T0)" pad="2"/>
<connect gate="G$1" pin="PD5(T1)" pad="9"/>
<connect gate="G$1" pin="PD6(AIN0)" pad="10"/>
<connect gate="G$1" pin="PD7(AIN1)" pad="11"/>
<connect gate="G$1" pin="VCC@1" pad="4"/>
<connect gate="G$1" pin="VCC@2" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="ATMEGA8-16AU" constant="no"/>
<attribute name="OC_FARNELL" value="9171371" constant="no"/>
<attribute name="OC_NEWARK" value="73M8863" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="1_USER">
<packages>
<package name="USB-B-MINI-SMD">
<wire x1="-5.7009" y1="3.8059" x2="3.2011" y2="3.8059" width="0.1016" layer="21"/>
<wire x1="3.2011" y1="3.8059" x2="3.2011" y2="2.5442" width="0.1016" layer="21"/>
<wire x1="3.2011" y1="2.5442" x2="2.8366" y2="2.1797" width="0.1016" layer="21" curve="-90.031447"/>
<wire x1="2.8366" y1="2.1797" x2="2.3039" y2="2.1797" width="0.1016" layer="21"/>
<wire x1="2.3039" y1="2.1797" x2="1.9394" y2="1.8152" width="0.1016" layer="51" curve="90"/>
<wire x1="1.9394" y1="1.8152" x2="1.9394" y2="-1.8578" width="0.1016" layer="51"/>
<wire x1="1.9394" y1="-1.8578" x2="2.2618" y2="-2.1802" width="0.1016" layer="51" curve="90"/>
<wire x1="2.2618" y1="-2.1802" x2="2.8506" y2="-2.1802" width="0.1016" layer="21"/>
<wire x1="2.8506" y1="-2.1802" x2="3.2011" y2="-2.5307" width="0.1016" layer="21" curve="-90.032703"/>
<wire x1="3.2011" y1="-2.5307" x2="3.2011" y2="-3.8064" width="0.1016" layer="21"/>
<wire x1="3.2011" y1="-3.8064" x2="-5.7009" y2="-3.8064" width="0.1016" layer="21"/>
<wire x1="-5.7009" y1="-3.8064" x2="-5.7009" y2="3.8059" width="0.1016" layer="21"/>
<wire x1="3.2011" y1="-3.8064" x2="3.2011" y2="-4.7457" width="0.1016" layer="21"/>
<wire x1="3.2011" y1="-4.7457" x2="3.0468" y2="-4.8999" width="0.1016" layer="21" curve="-90.409919"/>
<wire x1="3.0468" y1="-4.8999" x2="3.0469" y2="-4.8999" width="0.1016" layer="21"/>
<wire x1="3.0469" y1="-4.8999" x2="2.8787" y2="-4.7317" width="0.1016" layer="21" curve="-90"/>
<wire x1="2.8787" y1="-4.7317" x2="2.8787" y2="-4.5775" width="0.1016" layer="21"/>
<wire x1="2.8787" y1="-4.5775" x2="2.6544" y2="-4.3532" width="0.1016" layer="21" curve="90.153471"/>
<wire x1="2.6544" y1="-4.3532" x2="2.6263" y2="-4.3532" width="0.1016" layer="21"/>
<wire x1="2.6263" y1="-4.3532" x2="2.402" y2="-4.5775" width="0.1016" layer="21" curve="90"/>
<wire x1="2.402" y1="-4.5775" x2="2.402" y2="-4.7457" width="0.1016" layer="21"/>
<wire x1="2.402" y1="-4.7457" x2="2.2478" y2="-4.8999" width="0.1016" layer="21" curve="-90"/>
<wire x1="2.2478" y1="-4.8999" x2="2.0796" y2="-4.7317" width="0.1016" layer="21" curve="-90"/>
<wire x1="2.0796" y1="-4.7317" x2="2.0796" y2="-3.8625" width="0.1016" layer="21"/>
<wire x1="-2.0841" y1="-3.8064" x2="-2.0841" y2="-4.7457" width="0.1016" layer="21"/>
<wire x1="-2.0841" y1="-4.7457" x2="-2.2384" y2="-4.8999" width="0.1016" layer="21" curve="-90.409919"/>
<wire x1="-2.2384" y1="-4.8999" x2="-2.2383" y2="-4.8999" width="0.1016" layer="21"/>
<wire x1="-2.2383" y1="-4.8999" x2="-2.4065" y2="-4.7317" width="0.1016" layer="21" curve="-90"/>
<wire x1="-2.4065" y1="-4.7317" x2="-2.4065" y2="-4.5775" width="0.1016" layer="21"/>
<wire x1="-2.4065" y1="-4.5775" x2="-2.6308" y2="-4.3532" width="0.1016" layer="21" curve="90.102268"/>
<wire x1="-2.6308" y1="-4.3532" x2="-2.6589" y2="-4.3532" width="0.1016" layer="21"/>
<wire x1="-2.6589" y1="-4.3532" x2="-2.8832" y2="-4.5775" width="0.1016" layer="21" curve="90"/>
<wire x1="-2.8832" y1="-4.5775" x2="-2.8832" y2="-4.7457" width="0.1016" layer="21"/>
<wire x1="-2.8832" y1="-4.7457" x2="-3.0374" y2="-4.8999" width="0.1016" layer="21" curve="-90"/>
<wire x1="-3.0374" y1="-4.8999" x2="-3.2056" y2="-4.7317" width="0.1016" layer="21" curve="-90"/>
<wire x1="-3.2056" y1="-4.7317" x2="-3.2056" y2="-3.8625" width="0.1016" layer="21"/>
<wire x1="-3.2055" y1="3.8058" x2="-3.2055" y2="4.7451" width="0.1016" layer="21"/>
<wire x1="-3.2055" y1="4.7451" x2="-3.0512" y2="4.8993" width="0.1016" layer="21" curve="-90.409919"/>
<wire x1="-3.0512" y1="4.8993" x2="-3.0513" y2="4.8993" width="0.1016" layer="21"/>
<wire x1="-3.0513" y1="4.8993" x2="-2.8831" y2="4.7311" width="0.1016" layer="21" curve="-90"/>
<wire x1="-2.8831" y1="4.7311" x2="-2.8831" y2="4.5769" width="0.1016" layer="21"/>
<wire x1="-2.8831" y1="4.5769" x2="-2.6588" y2="4.3526" width="0.1016" layer="21" curve="90.051111"/>
<wire x1="-2.6588" y1="4.3526" x2="-2.6307" y2="4.3526" width="0.1016" layer="21"/>
<wire x1="-2.6307" y1="4.3526" x2="-2.4064" y2="4.5769" width="0.1016" layer="21" curve="90.102268"/>
<wire x1="-2.4064" y1="4.5769" x2="-2.4064" y2="4.7451" width="0.1016" layer="21"/>
<wire x1="-2.4064" y1="4.7451" x2="-2.2522" y2="4.8993" width="0.1016" layer="21" curve="-90"/>
<wire x1="-2.2522" y1="4.8993" x2="-2.084" y2="4.7311" width="0.1016" layer="21" curve="-90"/>
<wire x1="-2.084" y1="4.7311" x2="-2.084" y2="3.8619" width="0.1016" layer="21"/>
<wire x1="2.0797" y1="3.8058" x2="2.0797" y2="4.7451" width="0.1016" layer="21"/>
<wire x1="2.0797" y1="4.7451" x2="2.234" y2="4.8993" width="0.1016" layer="21" curve="-90.335171"/>
<wire x1="2.234" y1="4.8993" x2="2.2339" y2="4.8993" width="0.1016" layer="21"/>
<wire x1="2.2339" y1="4.8993" x2="2.4021" y2="4.7311" width="0.1016" layer="21" curve="-90"/>
<wire x1="2.4021" y1="4.7311" x2="2.4021" y2="4.5769" width="0.1016" layer="21"/>
<wire x1="2.4021" y1="4.5769" x2="2.6264" y2="4.3526" width="0.1016" layer="21" curve="90"/>
<wire x1="2.6264" y1="4.3526" x2="2.6545" y2="4.3526" width="0.1016" layer="21"/>
<wire x1="2.6545" y1="4.3526" x2="2.8788" y2="4.5769" width="0.1016" layer="21" curve="90.051111"/>
<wire x1="2.8788" y1="4.5769" x2="2.8788" y2="4.7451" width="0.1016" layer="21"/>
<wire x1="2.8788" y1="4.7451" x2="3.033" y2="4.8993" width="0.1016" layer="21" curve="-90"/>
<wire x1="3.033" y1="4.8993" x2="3.2012" y2="4.7311" width="0.1016" layer="21" curve="-90"/>
<wire x1="3.2012" y1="4.7311" x2="3.2012" y2="3.7918" width="0.1016" layer="21"/>
<wire x1="-4.5093" y1="3.7498" x2="-4.5093" y2="2.2077" width="0.1016" layer="21"/>
<wire x1="-4.5093" y1="2.2077" x2="-4.1588" y2="1.8572" width="0.1016" layer="21" curve="90.032703"/>
<wire x1="-4.1588" y1="1.8572" x2="-4.1168" y2="1.8572" width="0.1016" layer="21"/>
<wire x1="-4.1168" y1="1.8572" x2="-0.4438" y2="1.689" width="0.1016" layer="21"/>
<wire x1="-0.4438" y1="1.689" x2="-0.4298" y2="1.9834" width="0.1016" layer="21" curve="179.766458"/>
<wire x1="-0.4298" y1="1.9834" x2="-3.8224" y2="2.2077" width="0.1016" layer="21"/>
<wire x1="-3.8224" y1="2.2077" x2="-3.8084" y2="2.6984" width="0.1016" layer="21" curve="-175.705121"/>
<wire x1="-3.8084" y1="2.6984" x2="-0.4018" y2="2.9227" width="0.1016" layer="21"/>
<wire x1="-0.4018" y1="2.9227" x2="-0.2896" y2="3.0488" width="0.1016" layer="21" curve="89.143172"/>
<wire x1="-0.2896" y1="3.0488" x2="-0.2896" y2="3.7498" width="0.1016" layer="21"/>
<wire x1="0.0048" y1="0.7497" x2="-0.3317" y2="1.0862" width="0.1016" layer="21" curve="89.931933"/>
<wire x1="-0.3317" y1="1.0862" x2="-4.3551" y2="1.2965" width="0.1016" layer="21"/>
<wire x1="-4.3551" y1="1.2965" x2="-4.3691" y2="1.0301" width="0.1016" layer="21" curve="180"/>
<wire x1="-4.3691" y1="1.0301" x2="-1.2569" y2="0.8619" width="0.1016" layer="21"/>
<wire x1="-1.2569" y1="0.8619" x2="-0.8223" y2="0.4273" width="0.1016" layer="21" curve="-90"/>
<wire x1="-0.8223" y1="0.4273" x2="-0.8223" y2="-0.4559" width="0.1016" layer="21"/>
<wire x1="-0.8223" y1="-0.4559" x2="-1.2429" y2="-0.8765" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.2429" y1="-0.8765" x2="-1.313" y2="-0.8765" width="0.1016" layer="21"/>
<wire x1="-1.313" y1="-0.8765" x2="-4.3551" y2="-1.0167" width="0.1016" layer="21"/>
<wire x1="-4.3551" y1="-1.0167" x2="-4.3551" y2="-1.297" width="0.1016" layer="21" curve="174.689178"/>
<wire x1="-4.3551" y1="-1.297" x2="-0.3597" y2="-1.0868" width="0.1016" layer="21"/>
<wire x1="-0.3597" y1="-1.0868" x2="0.0048" y2="-0.7223" width="0.1016" layer="21" curve="90"/>
<wire x1="0.0048" y1="-0.7223" x2="0.0048" y2="0.7497" width="0.1016" layer="21"/>
<wire x1="-4.5092" y1="-3.7504" x2="-4.5092" y2="-2.2083" width="0.1016" layer="21"/>
<wire x1="-4.5092" y1="-2.2083" x2="-4.1587" y2="-1.8578" width="0.1016" layer="21" curve="-89.967316"/>
<wire x1="-4.1587" y1="-1.8578" x2="-4.1167" y2="-1.8578" width="0.1016" layer="21"/>
<wire x1="-4.1167" y1="-1.8578" x2="-0.4437" y2="-1.6896" width="0.1016" layer="21"/>
<wire x1="-0.4437" y1="-1.6896" x2="-0.4297" y2="-1.984" width="0.1016" layer="21" curve="-179.766458"/>
<wire x1="-0.4297" y1="-1.984" x2="-3.8223" y2="-2.2083" width="0.1016" layer="21"/>
<wire x1="-3.8223" y1="-2.2083" x2="-3.8083" y2="-2.699" width="0.1016" layer="21" curve="175.705121"/>
<wire x1="-3.8083" y1="-2.699" x2="-0.4017" y2="-2.9233" width="0.1016" layer="21"/>
<wire x1="-0.4017" y1="-2.9233" x2="-0.2895" y2="-3.0494" width="0.1016" layer="21" curve="-89.143172"/>
<wire x1="-0.2895" y1="-3.0494" x2="-0.2895" y2="-3.7504" width="0.1016" layer="21"/>
<smd name="M3" x="2.65" y="4.2" dx="2.2" dy="2.5" layer="1"/>
<smd name="M4" x="2.65" y="-4.2" dx="2.2" dy="2.5" layer="1"/>
<smd name="M2" x="-2.65" y="4.2" dx="2.2" dy="2.5" layer="1"/>
<smd name="M1" x="-2.65" y="-4.2" dx="2.2" dy="2.5" layer="1"/>
<smd name="1" x="2.9" y="1.6" dx="2" dy="0.5" layer="1"/>
<smd name="2" x="2.9" y="0.8" dx="2" dy="0.5" layer="1"/>
<smd name="3" x="2.9" y="0" dx="2" dy="0.5" layer="1"/>
<smd name="4" x="2.9" y="-0.8" dx="2" dy="0.5" layer="1"/>
<smd name="5" x="2.9" y="-1.6" dx="2" dy="0.5" layer="1"/>
<text x="5.73" y="-3.81" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="-3.795" y="-6.985" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="1.9534" y1="1.4367" x2="3.2572" y2="1.7731" layer="51"/>
<rectangle x1="1.9534" y1="0.6376" x2="3.2572" y2="0.974" layer="51"/>
<rectangle x1="1.9534" y1="-0.1615" x2="3.2572" y2="0.1749" layer="51"/>
<rectangle x1="1.9534" y1="-0.9606" x2="3.2572" y2="-0.6242" layer="51"/>
<rectangle x1="1.9534" y1="-1.7596" x2="3.2572" y2="-1.4232" layer="51"/>
<rectangle x1="-5.75" y1="-3.85" x2="-3.775" y2="3.85" layer="41"/>
<hole x="0" y="2.2" drill="0.9"/>
<hole x="0" y="-2.2" drill="0.9"/>
</package>
</packages>
<symbols>
<symbol name="USB-B-MINI">
<wire x1="-5.08" y1="6.35" x2="-5.08" y2="-6.35" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-6.35" x2="-3.81" y2="-7.62" width="0.254" layer="94" curve="90"/>
<wire x1="-3.81" y1="-7.62" x2="-2.54" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-7.62" x2="-1.524" y2="-8.128" width="0.254" layer="94" curve="-53.130102"/>
<wire x1="-1.524" y1="-8.128" x2="0" y2="-8.89" width="0.254" layer="94" curve="53.130102"/>
<wire x1="0" y1="-8.89" x2="2.54" y2="-8.89" width="0.254" layer="94"/>
<wire x1="2.54" y1="-8.89" x2="3.81" y2="-7.62" width="0.254" layer="94" curve="90"/>
<wire x1="3.81" y1="-7.62" x2="3.81" y2="7.62" width="0.254" layer="94"/>
<wire x1="-5.08" y1="6.35" x2="-3.81" y2="7.62" width="0.254" layer="94" curve="-90"/>
<wire x1="-3.81" y1="7.62" x2="-2.54" y2="7.62" width="0.254" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="-1.524" y2="8.128" width="0.254" layer="94" curve="53.130102"/>
<wire x1="-1.524" y1="8.128" x2="0" y2="8.89" width="0.254" layer="94" curve="-53.130102"/>
<wire x1="0" y1="8.89" x2="2.54" y2="8.89" width="0.254" layer="94"/>
<wire x1="2.54" y1="8.89" x2="3.81" y2="7.62" width="0.254" layer="94" curve="-90"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-1.27" y2="-6.35" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-6.35" x2="1.27" y2="-6.35" width="0.254" layer="94"/>
<wire x1="1.27" y1="-6.35" x2="1.27" y2="6.35" width="0.254" layer="94"/>
<wire x1="1.27" y1="6.35" x2="-1.27" y2="6.35" width="0.254" layer="94"/>
<wire x1="-1.27" y1="6.35" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<text x="7.62" y="-7.62" size="1.778" layer="96" font="vector" rot="R90">&gt;VALUE</text>
<text x="-6.35" y="11.43" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-7.62" y="5.08" visible="pin" direction="in"/>
<pin name="2" x="-7.62" y="2.54" visible="pin" direction="in"/>
<pin name="3" x="-7.62" y="0" visible="pin" direction="in"/>
<pin name="4" x="-7.62" y="-2.54" visible="pin" direction="in"/>
<pin name="5" x="-7.62" y="-5.08" visible="pin" direction="in"/>
</symbol>
<symbol name="USB-B-MINI-SHIELD">
<wire x1="-7.62" y1="0" x2="1.27" y2="0" width="0.254" layer="94" style="shortdash"/>
<wire x1="1.27" y1="0" x2="2.54" y2="1.27" width="0.254" layer="94" style="shortdash" curve="90"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="19.05" width="0.254" layer="94" style="shortdash"/>
<wire x1="-7.62" y1="20.32" x2="1.27" y2="20.32" width="0.254" layer="94" style="shortdash"/>
<wire x1="1.27" y1="20.32" x2="2.54" y2="19.05" width="0.254" layer="94" style="shortdash" curve="-90"/>
<text x="3.81" y="-2.54" size="1.778" layer="95" font="vector">&gt;NAME</text>
<pin name="S1" x="-7.62" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="S2" x="-5.08" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="S3" x="-2.54" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="S4" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="USB-B-MINI-SMD" prefix="X">
<gates>
<gate name="-CON" symbol="USB-B-MINI" x="0" y="0" addlevel="always"/>
<gate name="-SHIELD" symbol="USB-B-MINI-SHIELD" x="2.54" y="-10.16" addlevel="always"/>
</gates>
<devices>
<device name="" package="USB-B-MINI-SMD">
<connects>
<connect gate="-CON" pin="1" pad="1"/>
<connect gate="-CON" pin="2" pad="2"/>
<connect gate="-CON" pin="3" pad="3"/>
<connect gate="-CON" pin="4" pad="4"/>
<connect gate="-CON" pin="5" pad="5"/>
<connect gate="-SHIELD" pin="S1" pad="M1"/>
<connect gate="-SHIELD" pin="S2" pad="M2"/>
<connect gate="-SHIELD" pin="S3" pad="M3"/>
<connect gate="-SHIELD" pin="S4" pad="M4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="Q1" library="crystal" deviceset="CRYSTAL" device="HC49S"/>
<part name="R1" library="resistor" deviceset="R-EU_" device="R0603" value="10k"/>
<part name="C1" library="resistor" deviceset="C-EU" device="C0603" value="100n"/>
<part name="C2" library="resistor" deviceset="C-EU" device="C0603" value="100n"/>
<part name="C3" library="resistor" deviceset="C-EU" device="C0603" value="100n"/>
<part name="C4" library="resistor" deviceset="C-EU" device="C0603" value="22p"/>
<part name="C5" library="resistor" deviceset="C-EU" device="C0603" value="22p"/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="P+1" library="supply1" deviceset="VCC" device=""/>
<part name="P+2" library="supply1" deviceset="VCC" device=""/>
<part name="P+3" library="supply1" deviceset="VCC" device=""/>
<part name="IC2" library="74xx-eu" deviceset="74*573" device="D" technology="HC"/>
<part name="IC3" library="74xx-eu" deviceset="74*573" device="D" technology="HC"/>
<part name="IC4" library="74xx-eu" deviceset="74*573" device="D" technology="HC"/>
<part name="IC5" library="74xx-eu" deviceset="74*573" device="D" technology="HC"/>
<part name="IC6" library="74xx-eu" deviceset="74*573" device="D" technology="HC"/>
<part name="IC7" library="74xx-eu" deviceset="74*573" device="D" technology="HC"/>
<part name="IC8" library="74xx-eu" deviceset="74*573" device="D" technology="HC"/>
<part name="IC9" library="74xx-eu" deviceset="74*573" device="D" technology="HC"/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="GND6" library="supply1" deviceset="GND" device=""/>
<part name="GND7" library="supply1" deviceset="GND" device=""/>
<part name="GND8" library="supply1" deviceset="GND" device=""/>
<part name="GND9" library="supply1" deviceset="GND" device=""/>
<part name="GND10" library="supply1" deviceset="GND" device=""/>
<part name="GND11" library="supply1" deviceset="GND" device=""/>
<part name="Q2" library="transistor-fet" deviceset="BUZ382" device="" value=""/>
<part name="Q3" library="transistor-fet" deviceset="BUZ382" device="" value=""/>
<part name="Q4" library="transistor-fet" deviceset="BUZ382" device="" value=""/>
<part name="Q5" library="transistor-fet" deviceset="BUZ382" device="" value=""/>
<part name="Q6" library="transistor-fet" deviceset="BUZ382" device="" value=""/>
<part name="Q7" library="transistor-fet" deviceset="BUZ382" device="" value=""/>
<part name="Q8" library="transistor-fet" deviceset="BUZ382" device="" value=""/>
<part name="Q9" library="transistor-fet" deviceset="BUZ382" device="" value=""/>
<part name="R2" library="resistor" deviceset="R-EU_" device="R0603" value="15"/>
<part name="R3" library="resistor" deviceset="R-EU_" device="R0603" value="15"/>
<part name="R4" library="resistor" deviceset="R-EU_" device="R0603" value="15"/>
<part name="R5" library="resistor" deviceset="R-EU_" device="R0603" value="15"/>
<part name="R6" library="resistor" deviceset="R-EU_" device="R0603" value="15"/>
<part name="R7" library="resistor" deviceset="R-EU_" device="R0603" value="15"/>
<part name="R8" library="resistor" deviceset="R-EU_" device="R0603" value="15"/>
<part name="R9" library="resistor" deviceset="R-EU_" device="R0603" value="15"/>
<part name="GND12" library="supply1" deviceset="GND" device=""/>
<part name="GND13" library="supply1" deviceset="GND" device=""/>
<part name="GND14" library="supply1" deviceset="GND" device=""/>
<part name="GND15" library="supply1" deviceset="GND" device=""/>
<part name="GND16" library="supply1" deviceset="GND" device=""/>
<part name="GND17" library="supply1" deviceset="GND" device=""/>
<part name="GND18" library="supply1" deviceset="GND" device=""/>
<part name="GND19" library="supply1" deviceset="GND" device=""/>
<part name="JP3" library="0-roboternetz-definitionen" deviceset="AVR-ISP" device=""/>
<part name="P+4" library="supply1" deviceset="VCC" device=""/>
<part name="GND20" library="supply1" deviceset="GND" device=""/>
<part name="IC10" library="ftdichip" deviceset="FT232R" device="L"/>
<part name="GND21" library="supply1" deviceset="GND" device=""/>
<part name="GND22" library="supply1" deviceset="GND" device=""/>
<part name="GND23" library="supply1" deviceset="GND" device=""/>
<part name="P+5" library="supply1" deviceset="VCC" device=""/>
<part name="GND24" library="supply1" deviceset="GND" device=""/>
<part name="R10" library="resistor" deviceset="R-EU_" device="R0603" value="10k"/>
<part name="R11" library="resistor" deviceset="R-EU_" device="R0603" value="4k7"/>
<part name="C6" library="resistor" deviceset="C-EU" device="C0603" value="100n"/>
<part name="C7" library="resistor" deviceset="C-EU" device="C0603" value="100n"/>
<part name="C8" library="resistor" deviceset="C-EU" device="C0603" value="100n"/>
<part name="C9" library="resistor" deviceset="C-EU" device="C0603" value="4u7"/>
<part name="GND25" library="supply1" deviceset="GND" device=""/>
<part name="IC11" library="0-xythobuz" deviceset="FM24V10" device=""/>
<part name="GND26" library="supply1" deviceset="GND" device=""/>
<part name="P+6" library="supply1" deviceset="VCC" device=""/>
<part name="R12" library="resistor" deviceset="R-EU_" device="R0603" value="2k"/>
<part name="R13" library="resistor" deviceset="R-EU_" device="R0603" value="2k"/>
<part name="GND27" library="supply1" deviceset="GND" device=""/>
<part name="R14" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="IC12" library="0-xythobuz" deviceset="MSGEQ7" device=""/>
<part name="GND28" library="supply1" deviceset="GND" device=""/>
<part name="P+7" library="supply1" deviceset="VCC" device=""/>
<part name="C10" library="resistor" deviceset="C-EU" device="C0603" value="100n"/>
<part name="C11" library="resistor" deviceset="C-EU" device="C0603" value="100n"/>
<part name="C12" library="resistor" deviceset="C-EU" device="C0603" value="33p"/>
<part name="R15" library="resistor" deviceset="R-EU_" device="R0603" value="200k"/>
<part name="P+8" library="supply1" deviceset="VCC" device=""/>
<part name="C13" library="resistor" deviceset="C-EU" device="C0603" value="10n"/>
<part name="R16" library="resistor" deviceset="R-EU_" device="R0603" value="200k"/>
<part name="R17" library="resistor" deviceset="R-EU_" device="R0603" value="200k"/>
<part name="GND29" library="supply1" deviceset="GND" device=""/>
<part name="V1" library="74ttl-din" deviceset="74*00" device="N"/>
<part name="R18" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="R20" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="S1" library="switch" deviceset="255SB" device=""/>
<part name="P+10" library="supply1" deviceset="VCC" device=""/>
<part name="P+11" library="supply1" deviceset="VCC" device=""/>
<part name="GND31" library="supply1" deviceset="GND" device=""/>
<part name="R19" library="resistor" deviceset="R-EU_" device="R0603" value="10k"/>
<part name="Q10" library="crystal" deviceset="CRYSTAL" device="HC49S"/>
<part name="C14" library="resistor" deviceset="C-EU" device="C0603" value="12p"/>
<part name="C15" library="resistor" deviceset="C-EU" device="C0603" value="12p"/>
<part name="GND30" library="supply1" deviceset="GND" device=""/>
<part name="C16" library="resistor" deviceset="C-EU" device="C0603" value="100n"/>
<part name="GND32" library="supply1" deviceset="GND" device=""/>
<part name="P+9" library="supply1" deviceset="VCC" device=""/>
<part name="C17" library="resistor" deviceset="C-EU" device="C0603" value="100n"/>
<part name="P+12" library="supply1" deviceset="VCC" device=""/>
<part name="GND33" library="supply1" deviceset="GND" device=""/>
<part name="C18" library="resistor" deviceset="C-EU" device="C0603" value="100n"/>
<part name="GND34" library="supply1" deviceset="GND" device=""/>
<part name="JP6" library="0-roboternetz-definitionen" deviceset="AVR-ISP" device=""/>
<part name="GND35" library="supply1" deviceset="GND" device=""/>
<part name="P+13" library="supply1" deviceset="VCC" device=""/>
<part name="LED65" library="led" deviceset="LED" device="CHIPLED_0603"/>
<part name="R21" library="resistor" deviceset="R-EU_" device="0204/7" value="1k"/>
<part name="GND36" library="supply1" deviceset="GND" device=""/>
<part name="R22" library="resistor" deviceset="R-TRIMM" device="3296W"/>
<part name="GND37" library="supply1" deviceset="GND" device=""/>
<part name="P+14" library="supply1" deviceset="VCC" device=""/>
<part name="R23" library="resistor" deviceset="R-EU_" device="R0603" value="100k"/>
<part name="R24" library="resistor" deviceset="R-EU_" device="R0603" value="100k"/>
<part name="R25" library="resistor" deviceset="R-EU_" device="R0603" value="100k"/>
<part name="R26" library="resistor" deviceset="R-EU_" device="R0603" value="100k"/>
<part name="R27" library="resistor" deviceset="R-EU_" device="R0603" value="100k"/>
<part name="R28" library="resistor" deviceset="R-EU_" device="R0603" value="100k"/>
<part name="R29" library="resistor" deviceset="R-EU_" device="R0603" value="100k"/>
<part name="R30" library="resistor" deviceset="R-EU_" device="R0603" value="100k"/>
<part name="R31" library="resistor" deviceset="R-EU_" device="0204/7" value="1k"/>
<part name="LED67" library="led" deviceset="LED" device="CHIPLED_0603"/>
<part name="LED68" library="led" deviceset="LED" device="CHIPLED_0603"/>
<part name="LED69" library="led" deviceset="LED" device="CHIPLED_0603"/>
<part name="LED70" library="led" deviceset="LED" device="CHIPLED_0603"/>
<part name="LED71" library="led" deviceset="LED" device="CHIPLED_0603"/>
<part name="LED72" library="led" deviceset="LED" device="CHIPLED_0603"/>
<part name="LED73" library="led" deviceset="LED" device="CHIPLED_0603"/>
<part name="R32" library="resistor" deviceset="R-EU_" device="0204/7" value="1k"/>
<part name="R33" library="resistor" deviceset="R-EU_" device="0204/7" value="1k"/>
<part name="R34" library="resistor" deviceset="R-EU_" device="0204/7" value="1k"/>
<part name="R35" library="resistor" deviceset="R-EU_" device="0204/7" value="1k"/>
<part name="R36" library="resistor" deviceset="R-EU_" device="0204/7" value="1k"/>
<part name="R37" library="resistor" deviceset="R-EU_" device="0204/7" value="1k"/>
<part name="R38" library="resistor" deviceset="R-EU_" device="0204/7" value="1k"/>
<part name="GND38" library="supply1" deviceset="GND" device=""/>
<part name="SV1" library="con-ml" deviceset="ML64" device=""/>
<part name="IC14" library="atmel" deviceset="MEGA32" device="-A"/>
<part name="IC1" library="atmel" deviceset="MEGA8" device="-AI"/>
<part name="X2" library="1_USER" deviceset="USB-B-MINI-SMD" device="" value=""/>
<part name="U$1" library="0-xythobuz" deviceset="KLINKENBUCHSE" device=""/>
<part name="LED1" library="led" deviceset="LED" device="CHIPLED_0603"/>
<part name="U$2" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R39" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+15" library="supply1" deviceset="VCC" device=""/>
<part name="U$3" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R40" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+16" library="supply1" deviceset="VCC" device=""/>
<part name="U$4" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R41" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+17" library="supply1" deviceset="VCC" device=""/>
<part name="U$5" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R42" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+18" library="supply1" deviceset="VCC" device=""/>
<part name="U$6" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R43" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+19" library="supply1" deviceset="VCC" device=""/>
<part name="U$7" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R44" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+20" library="supply1" deviceset="VCC" device=""/>
<part name="U$8" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R45" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+21" library="supply1" deviceset="VCC" device=""/>
<part name="U$9" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R46" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+22" library="supply1" deviceset="VCC" device=""/>
<part name="U$10" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R47" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+23" library="supply1" deviceset="VCC" device=""/>
<part name="U$11" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R48" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+24" library="supply1" deviceset="VCC" device=""/>
<part name="U$12" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R49" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+25" library="supply1" deviceset="VCC" device=""/>
<part name="U$13" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R50" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+26" library="supply1" deviceset="VCC" device=""/>
<part name="U$14" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R51" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+27" library="supply1" deviceset="VCC" device=""/>
<part name="U$15" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R52" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+28" library="supply1" deviceset="VCC" device=""/>
<part name="U$16" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R53" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+29" library="supply1" deviceset="VCC" device=""/>
<part name="U$17" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R54" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+30" library="supply1" deviceset="VCC" device=""/>
<part name="U$18" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R55" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+31" library="supply1" deviceset="VCC" device=""/>
<part name="U$19" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R56" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+32" library="supply1" deviceset="VCC" device=""/>
<part name="U$20" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R57" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+33" library="supply1" deviceset="VCC" device=""/>
<part name="U$21" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R58" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+34" library="supply1" deviceset="VCC" device=""/>
<part name="U$22" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R59" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+35" library="supply1" deviceset="VCC" device=""/>
<part name="U$23" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R60" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+36" library="supply1" deviceset="VCC" device=""/>
<part name="U$24" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R61" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+37" library="supply1" deviceset="VCC" device=""/>
<part name="U$25" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R62" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+38" library="supply1" deviceset="VCC" device=""/>
<part name="U$26" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R63" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+39" library="supply1" deviceset="VCC" device=""/>
<part name="U$27" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R64" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+40" library="supply1" deviceset="VCC" device=""/>
<part name="U$28" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R65" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+41" library="supply1" deviceset="VCC" device=""/>
<part name="U$29" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R66" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+42" library="supply1" deviceset="VCC" device=""/>
<part name="U$30" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R67" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+43" library="supply1" deviceset="VCC" device=""/>
<part name="U$31" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R68" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+44" library="supply1" deviceset="VCC" device=""/>
<part name="U$32" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R69" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+45" library="supply1" deviceset="VCC" device=""/>
<part name="U$33" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R70" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+46" library="supply1" deviceset="VCC" device=""/>
<part name="U$34" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R71" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+47" library="supply1" deviceset="VCC" device=""/>
<part name="U$35" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R72" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+48" library="supply1" deviceset="VCC" device=""/>
<part name="U$36" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R73" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+49" library="supply1" deviceset="VCC" device=""/>
<part name="U$37" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R74" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+50" library="supply1" deviceset="VCC" device=""/>
<part name="U$38" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R75" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+51" library="supply1" deviceset="VCC" device=""/>
<part name="U$39" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R76" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+52" library="supply1" deviceset="VCC" device=""/>
<part name="U$40" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R77" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+53" library="supply1" deviceset="VCC" device=""/>
<part name="U$41" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R78" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+54" library="supply1" deviceset="VCC" device=""/>
<part name="U$42" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R79" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+55" library="supply1" deviceset="VCC" device=""/>
<part name="U$43" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R80" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+56" library="supply1" deviceset="VCC" device=""/>
<part name="U$44" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R81" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+57" library="supply1" deviceset="VCC" device=""/>
<part name="U$45" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R82" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+58" library="supply1" deviceset="VCC" device=""/>
<part name="U$46" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R83" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+59" library="supply1" deviceset="VCC" device=""/>
<part name="U$47" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R84" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+60" library="supply1" deviceset="VCC" device=""/>
<part name="U$48" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R85" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+61" library="supply1" deviceset="VCC" device=""/>
<part name="U$49" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R86" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+62" library="supply1" deviceset="VCC" device=""/>
<part name="U$50" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R87" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+63" library="supply1" deviceset="VCC" device=""/>
<part name="U$51" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R88" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+64" library="supply1" deviceset="VCC" device=""/>
<part name="U$52" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R89" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+65" library="supply1" deviceset="VCC" device=""/>
<part name="U$53" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R90" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+66" library="supply1" deviceset="VCC" device=""/>
<part name="U$54" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R91" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+67" library="supply1" deviceset="VCC" device=""/>
<part name="U$55" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R92" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+68" library="supply1" deviceset="VCC" device=""/>
<part name="U$56" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R93" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+69" library="supply1" deviceset="VCC" device=""/>
<part name="U$57" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R94" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+70" library="supply1" deviceset="VCC" device=""/>
<part name="U$58" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R95" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+71" library="supply1" deviceset="VCC" device=""/>
<part name="U$59" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R96" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+72" library="supply1" deviceset="VCC" device=""/>
<part name="U$60" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R97" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+73" library="supply1" deviceset="VCC" device=""/>
<part name="U$61" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R98" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+74" library="supply1" deviceset="VCC" device=""/>
<part name="U$62" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R99" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+75" library="supply1" deviceset="VCC" device=""/>
<part name="U$63" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R100" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+76" library="supply1" deviceset="VCC" device=""/>
<part name="U$64" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R101" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+77" library="supply1" deviceset="VCC" device=""/>
<part name="U$65" library="0-xythobuz" deviceset="PNP" device=""/>
<part name="R102" library="resistor" deviceset="R-EU_" device="R0603" value="1k"/>
<part name="P+78" library="supply1" deviceset="VCC" device=""/>
<part name="JP1" library="0-roboternetz-definitionen" deviceset="PORT" device=""/>
<part name="GND39" library="supply1" deviceset="GND" device=""/>
<part name="P+79" library="supply1" deviceset="VCC" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="322.58" y="167.64" size="1.778" layer="97">1</text>
<text x="322.58" y="165.1" size="1.778" layer="97">2</text>
<text x="322.58" y="162.56" size="1.778" layer="97">3</text>
<text x="322.58" y="160.02" size="1.778" layer="97">4</text>
<text x="322.58" y="157.48" size="1.778" layer="97">5</text>
<text x="322.58" y="154.94" size="1.778" layer="97">6</text>
<text x="322.58" y="152.4" size="1.778" layer="97">7</text>
<text x="322.58" y="149.86" size="1.778" layer="97">8</text>
<text x="322.58" y="129.54" size="1.778" layer="97">1</text>
<text x="322.58" y="127" size="1.778" layer="97">2</text>
<text x="322.58" y="124.46" size="1.778" layer="97">3</text>
<text x="322.58" y="121.92" size="1.778" layer="97">4</text>
<text x="322.58" y="119.38" size="1.778" layer="97">5</text>
<text x="322.58" y="116.84" size="1.778" layer="97">6</text>
<text x="322.58" y="114.3" size="1.778" layer="97">7</text>
<text x="322.58" y="111.76" size="1.778" layer="97">8</text>
<text x="322.58" y="88.9" size="1.778" layer="97">1</text>
<text x="322.58" y="86.36" size="1.778" layer="97">2</text>
<text x="322.58" y="83.82" size="1.778" layer="97">3</text>
<text x="322.58" y="81.28" size="1.778" layer="97">4</text>
<text x="322.58" y="78.74" size="1.778" layer="97">5</text>
<text x="322.58" y="76.2" size="1.778" layer="97">6</text>
<text x="322.58" y="73.66" size="1.778" layer="97">7</text>
<text x="322.58" y="71.12" size="1.778" layer="97">8</text>
<text x="322.58" y="50.8" size="1.778" layer="97">1</text>
<text x="322.58" y="48.26" size="1.778" layer="97">2</text>
<text x="322.58" y="45.72" size="1.778" layer="97">3</text>
<text x="322.58" y="43.18" size="1.778" layer="97">4</text>
<text x="322.58" y="40.64" size="1.778" layer="97">5</text>
<text x="322.58" y="38.1" size="1.778" layer="97">6</text>
<text x="322.58" y="35.56" size="1.778" layer="97">7</text>
<text x="322.58" y="33.02" size="1.778" layer="97">8</text>
<text x="322.58" y="12.7" size="1.778" layer="97">1</text>
<text x="322.58" y="10.16" size="1.778" layer="97">2</text>
<text x="322.58" y="7.62" size="1.778" layer="97">3</text>
<text x="322.58" y="5.08" size="1.778" layer="97">4</text>
<text x="322.58" y="2.54" size="1.778" layer="97">5</text>
<text x="322.58" y="0" size="1.778" layer="97">6</text>
<text x="322.58" y="-2.54" size="1.778" layer="97">7</text>
<text x="322.58" y="-5.08" size="1.778" layer="97">8</text>
<text x="322.58" y="-25.4" size="1.778" layer="97">1</text>
<text x="322.58" y="-27.94" size="1.778" layer="97">2</text>
<text x="322.58" y="-30.48" size="1.778" layer="97">3</text>
<text x="322.58" y="-33.02" size="1.778" layer="97">4</text>
<text x="322.58" y="-35.56" size="1.778" layer="97">5</text>
<text x="322.58" y="-38.1" size="1.778" layer="97">6</text>
<text x="322.58" y="-40.64" size="1.778" layer="97">7</text>
<text x="322.58" y="-43.18" size="1.778" layer="97">8</text>
<text x="322.58" y="-63.5" size="1.778" layer="97">1</text>
<text x="322.58" y="-66.04" size="1.778" layer="97">2</text>
<text x="322.58" y="-68.58" size="1.778" layer="97">3</text>
<text x="322.58" y="-71.12" size="1.778" layer="97">4</text>
<text x="322.58" y="-73.66" size="1.778" layer="97">5</text>
<text x="322.58" y="-76.2" size="1.778" layer="97">6</text>
<text x="322.58" y="-78.74" size="1.778" layer="97">7</text>
<text x="322.58" y="-81.28" size="1.778" layer="97">8</text>
<text x="322.58" y="-101.6" size="1.778" layer="97">1</text>
<text x="322.58" y="-104.14" size="1.778" layer="97">2</text>
<text x="322.58" y="-106.68" size="1.778" layer="97">3</text>
<text x="322.58" y="-109.22" size="1.778" layer="97">4</text>
<text x="322.58" y="-111.76" size="1.778" layer="97">5</text>
<text x="322.58" y="-114.3" size="1.778" layer="97">6</text>
<text x="322.58" y="-116.84" size="1.778" layer="97">7</text>
<text x="322.58" y="-119.38" size="1.778" layer="97">8</text>
</plain>
<instances>
<instance part="Q1" gate="G$1" x="-7.62" y="86.36" rot="R90"/>
<instance part="R1" gate="G$1" x="-12.7" y="96.52"/>
<instance part="C1" gate="G$1" x="-10.16" y="63.5" rot="R180"/>
<instance part="C2" gate="G$1" x="-10.16" y="78.74" rot="R270"/>
<instance part="C3" gate="G$1" x="-22.86" y="76.2"/>
<instance part="C4" gate="G$1" x="-17.78" y="83.82" rot="R90"/>
<instance part="C5" gate="G$1" x="-17.78" y="88.9" rot="R90"/>
<instance part="GND1" gate="1" x="-20.32" y="66.04" rot="R270"/>
<instance part="GND2" gate="1" x="-30.48" y="68.58" rot="R270"/>
<instance part="GND3" gate="1" x="-27.94" y="86.36" rot="R270"/>
<instance part="P+1" gate="VCC" x="-17.78" y="68.58" rot="R90"/>
<instance part="P+2" gate="VCC" x="-30.48" y="78.74" rot="R90"/>
<instance part="P+3" gate="VCC" x="-25.4" y="96.52" rot="R90"/>
<instance part="IC2" gate="A" x="187.96" y="114.3"/>
<instance part="IC3" gate="A" x="187.96" y="76.2"/>
<instance part="IC4" gate="A" x="187.96" y="38.1"/>
<instance part="IC5" gate="A" x="187.96" y="0"/>
<instance part="IC6" gate="A" x="187.96" y="-38.1"/>
<instance part="IC7" gate="A" x="187.96" y="152.4"/>
<instance part="IC8" gate="A" x="187.96" y="-76.2"/>
<instance part="IC9" gate="A" x="187.96" y="-114.3"/>
<instance part="GND4" gate="1" x="147.32" y="63.5" rot="R270"/>
<instance part="GND5" gate="1" x="147.32" y="101.6" rot="R270"/>
<instance part="GND6" gate="1" x="147.32" y="139.7" rot="R270"/>
<instance part="GND7" gate="1" x="147.32" y="25.4" rot="R270"/>
<instance part="GND8" gate="1" x="147.32" y="-12.7" rot="R270"/>
<instance part="GND9" gate="1" x="147.32" y="-50.8" rot="R270"/>
<instance part="GND10" gate="1" x="147.32" y="-88.9" rot="R270"/>
<instance part="GND11" gate="1" x="147.32" y="-127" rot="R270"/>
<instance part="Q2" gate="G$1" x="91.44" y="22.86"/>
<instance part="Q3" gate="G$1" x="91.44" y="12.7"/>
<instance part="Q4" gate="G$1" x="91.44" y="2.54"/>
<instance part="Q5" gate="G$1" x="91.44" y="-7.62"/>
<instance part="Q6" gate="G$1" x="91.44" y="-17.78"/>
<instance part="Q7" gate="G$1" x="91.44" y="-27.94"/>
<instance part="Q8" gate="G$1" x="91.44" y="-38.1"/>
<instance part="Q9" gate="G$1" x="91.44" y="-48.26"/>
<instance part="R2" gate="G$1" x="76.2" y="20.32"/>
<instance part="R3" gate="G$1" x="76.2" y="10.16"/>
<instance part="R4" gate="G$1" x="76.2" y="0"/>
<instance part="R5" gate="G$1" x="76.2" y="-10.16"/>
<instance part="R6" gate="G$1" x="76.2" y="-20.32"/>
<instance part="R7" gate="G$1" x="76.2" y="-30.48"/>
<instance part="R8" gate="G$1" x="76.2" y="-40.64"/>
<instance part="R9" gate="G$1" x="76.2" y="-50.8"/>
<instance part="GND12" gate="1" x="104.14" y="20.32" rot="R90"/>
<instance part="GND13" gate="1" x="104.14" y="10.16" rot="R90"/>
<instance part="GND14" gate="1" x="104.14" y="0" rot="R90"/>
<instance part="GND15" gate="1" x="104.14" y="-10.16" rot="R90"/>
<instance part="GND16" gate="1" x="104.14" y="-20.32" rot="R90"/>
<instance part="GND17" gate="1" x="104.14" y="-30.48" rot="R90"/>
<instance part="GND18" gate="1" x="104.14" y="-40.64" rot="R90"/>
<instance part="GND19" gate="1" x="104.14" y="-50.8" rot="R90"/>
<instance part="JP3" gate="G$1" x="73.66" y="63.5"/>
<instance part="P+4" gate="VCC" x="93.98" y="71.12" rot="R270"/>
<instance part="GND20" gate="1" x="96.52" y="55.88" rot="R90"/>
<instance part="IC10" gate="1" x="-45.72" y="27.94"/>
<instance part="GND21" gate="1" x="-71.12" y="10.16" rot="R270"/>
<instance part="GND22" gate="1" x="-73.66" y="22.86" rot="R270"/>
<instance part="GND23" gate="1" x="-96.52" y="35.56" rot="R270"/>
<instance part="P+5" gate="VCC" x="-99.06" y="50.8" rot="R90"/>
<instance part="GND24" gate="1" x="-22.86" y="10.16" rot="R90"/>
<instance part="R10" gate="G$1" x="-68.58" y="45.72" rot="R180"/>
<instance part="R11" gate="G$1" x="-68.58" y="40.64" rot="R180"/>
<instance part="C6" gate="G$1" x="-66.04" y="22.86" rot="R90"/>
<instance part="C7" gate="G$1" x="-91.44" y="43.18" rot="R180"/>
<instance part="C8" gate="G$1" x="-86.36" y="43.18" rot="R180"/>
<instance part="C9" gate="G$1" x="-81.28" y="43.18" rot="R180"/>
<instance part="GND25" gate="1" x="-101.6" y="33.02" rot="R90"/>
<instance part="IC11" gate="IC1" x="12.7" y="-20.32"/>
<instance part="GND26" gate="1" x="-25.4" y="-17.78" rot="R270"/>
<instance part="P+6" gate="VCC" x="-22.86" y="-15.24" rot="R90"/>
<instance part="R12" gate="G$1" x="30.48" y="-5.08" rot="R180"/>
<instance part="R13" gate="G$1" x="30.48" y="-7.62" rot="R180"/>
<instance part="GND27" gate="1" x="35.56" y="-17.78" rot="R90"/>
<instance part="R14" gate="G$1" x="-10.16" y="-25.4"/>
<instance part="IC12" gate="G$1" x="-73.66" y="-55.88"/>
<instance part="GND28" gate="1" x="-111.76" y="-50.8" rot="R270"/>
<instance part="P+7" gate="VCC" x="-106.68" y="-43.18" rot="R90"/>
<instance part="C10" gate="G$1" x="-96.52" y="-48.26" rot="R180"/>
<instance part="C11" gate="G$1" x="-96.52" y="-55.88" rot="R270"/>
<instance part="C12" gate="G$1" x="-99.06" y="-60.96" rot="R270"/>
<instance part="R15" gate="G$1" x="-93.98" y="-68.58" rot="R90"/>
<instance part="P+8" gate="VCC" x="-93.98" y="-81.28" rot="R180"/>
<instance part="C13" gate="G$1" x="-50.8" y="-48.26" rot="R270"/>
<instance part="R16" gate="G$1" x="-38.1" y="-45.72" rot="R180"/>
<instance part="R17" gate="G$1" x="-38.1" y="-50.8" rot="R180"/>
<instance part="GND29" gate="1" x="-30.48" y="-53.34" rot="R270"/>
<instance part="V1" gate="/1" x="86.36" y="-73.66" rot="MR0"/>
<instance part="V1" gate="/2" x="86.36" y="-96.52" rot="MR0"/>
<instance part="R18" gate="G$1" x="99.06" y="-104.14" rot="R270"/>
<instance part="R20" gate="G$1" x="99.06" y="-66.04" rot="R270"/>
<instance part="S1" gate="1" x="114.3" y="-83.82" rot="MR270"/>
<instance part="P+10" gate="VCC" x="99.06" y="-114.3" rot="R180"/>
<instance part="P+11" gate="VCC" x="99.06" y="-55.88"/>
<instance part="GND31" gate="1" x="124.46" y="-86.36" rot="R90"/>
<instance part="R19" gate="G$1" x="-83.82" y="-76.2" rot="R180"/>
<instance part="Q10" gate="G$1" x="-78.74" y="-96.52" rot="R90"/>
<instance part="C14" gate="G$1" x="-86.36" y="-99.06" rot="R270"/>
<instance part="C15" gate="G$1" x="-86.36" y="-93.98" rot="R270"/>
<instance part="GND30" gate="1" x="-99.06" y="-96.52" rot="R270"/>
<instance part="C16" gate="G$1" x="-81.28" y="-111.76" rot="R180"/>
<instance part="GND32" gate="1" x="-96.52" y="-106.68" rot="R270"/>
<instance part="P+9" gate="VCC" x="-96.52" y="-114.3" rot="R90"/>
<instance part="C17" gate="G$1" x="-83.82" y="-86.36" rot="R180"/>
<instance part="P+12" gate="VCC" x="-96.52" y="-88.9" rot="R90"/>
<instance part="GND33" gate="1" x="-96.52" y="-83.82" rot="R270"/>
<instance part="C18" gate="G$1" x="-106.68" y="-93.98"/>
<instance part="GND34" gate="1" x="-106.68" y="-104.14"/>
<instance part="JP6" gate="G$1" x="25.4" y="-132.08"/>
<instance part="GND35" gate="1" x="48.26" y="-139.7" rot="R90"/>
<instance part="P+13" gate="VCC" x="48.26" y="-124.46" rot="R270"/>
<instance part="LED65" gate="G$1" x="-15.24" y="-127" rot="R90"/>
<instance part="R21" gate="G$1" x="-2.54" y="-127" rot="R180"/>
<instance part="GND36" gate="1" x="7.62" y="-127" rot="R90"/>
<instance part="R22" gate="G$1" x="-7.62" y="-76.2" rot="R180"/>
<instance part="GND37" gate="1" x="-2.54" y="-83.82" rot="R90"/>
<instance part="P+14" gate="VCC" x="-2.54" y="-68.58" rot="R270"/>
<instance part="R23" gate="G$1" x="88.9" y="17.78"/>
<instance part="R24" gate="G$1" x="88.9" y="7.62"/>
<instance part="R25" gate="G$1" x="88.9" y="-2.54"/>
<instance part="R26" gate="G$1" x="88.9" y="-12.7"/>
<instance part="R27" gate="G$1" x="88.9" y="-22.86"/>
<instance part="R28" gate="G$1" x="88.9" y="-33.02"/>
<instance part="R29" gate="G$1" x="88.9" y="-43.18"/>
<instance part="R30" gate="G$1" x="88.9" y="-53.34"/>
<instance part="R31" gate="G$1" x="-5.08" y="-124.46" rot="R180"/>
<instance part="LED67" gate="G$1" x="-12.7" y="-119.38" rot="R90"/>
<instance part="LED68" gate="G$1" x="-15.24" y="-116.84" rot="R90"/>
<instance part="LED69" gate="G$1" x="-12.7" y="-114.3" rot="R90"/>
<instance part="LED70" gate="G$1" x="-15.24" y="-111.76" rot="R90"/>
<instance part="LED71" gate="G$1" x="-12.7" y="-109.22" rot="R90"/>
<instance part="LED72" gate="G$1" x="-15.24" y="-106.68" rot="R90"/>
<instance part="LED73" gate="G$1" x="-12.7" y="-104.14" rot="R90"/>
<instance part="R32" gate="G$1" x="-2.54" y="-119.38" rot="R180"/>
<instance part="R33" gate="G$1" x="-5.08" y="-116.84" rot="R180"/>
<instance part="R34" gate="G$1" x="-2.54" y="-114.3" rot="R180"/>
<instance part="R35" gate="G$1" x="-5.08" y="-111.76" rot="R180"/>
<instance part="R36" gate="G$1" x="-2.54" y="-109.22" rot="R180"/>
<instance part="R37" gate="G$1" x="-5.08" y="-106.68" rot="R180"/>
<instance part="R38" gate="G$1" x="-2.54" y="-104.14" rot="R180"/>
<instance part="GND38" gate="1" x="10.16" y="-106.68" rot="R90"/>
<instance part="SV1" gate="1" x="378.46" y="20.32" rot="R180"/>
<instance part="IC14" gate="G$1" x="17.78" y="53.34"/>
<instance part="IC1" gate="G$1" x="-50.8" y="-101.6"/>
<instance part="X2" gate="-CON" x="-114.3" y="27.94" rot="R180"/>
<instance part="U$1" gate="G$1" x="-15.24" y="-50.8"/>
<instance part="LED1" gate="G$1" x="-17.78" y="-124.46" rot="R90"/>
<instance part="U$2" gate="G$1" x="226.06" y="165.1"/>
<instance part="R39" gate="G$1" x="218.44" y="165.1"/>
<instance part="P+15" gate="VCC" x="233.68" y="170.18" rot="R270"/>
<instance part="U$3" gate="G$1" x="233.68" y="157.48"/>
<instance part="R40" gate="G$1" x="226.06" y="157.48"/>
<instance part="P+16" gate="VCC" x="241.3" y="162.56" rot="R270"/>
<instance part="U$4" gate="G$1" x="241.3" y="149.86"/>
<instance part="R41" gate="G$1" x="233.68" y="149.86"/>
<instance part="P+17" gate="VCC" x="248.92" y="154.94" rot="R270"/>
<instance part="U$5" gate="G$1" x="254" y="170.18"/>
<instance part="R42" gate="G$1" x="246.38" y="170.18"/>
<instance part="P+18" gate="VCC" x="261.62" y="175.26" rot="R270"/>
<instance part="U$6" gate="G$1" x="276.86" y="167.64"/>
<instance part="R43" gate="G$1" x="269.24" y="167.64"/>
<instance part="P+19" gate="VCC" x="284.48" y="172.72" rot="R270"/>
<instance part="U$7" gate="G$1" x="266.7" y="149.86"/>
<instance part="R44" gate="G$1" x="259.08" y="149.86"/>
<instance part="P+20" gate="VCC" x="274.32" y="154.94" rot="R270"/>
<instance part="U$8" gate="G$1" x="287.02" y="147.32"/>
<instance part="R45" gate="G$1" x="279.4" y="147.32"/>
<instance part="P+21" gate="VCC" x="294.64" y="152.4" rot="R270"/>
<instance part="U$9" gate="G$1" x="309.88" y="144.78"/>
<instance part="R46" gate="G$1" x="302.26" y="144.78"/>
<instance part="P+22" gate="VCC" x="317.5" y="149.86" rot="R270"/>
<instance part="U$10" gate="G$1" x="226.06" y="127"/>
<instance part="R47" gate="G$1" x="218.44" y="127"/>
<instance part="P+23" gate="VCC" x="233.68" y="132.08" rot="R270"/>
<instance part="U$11" gate="G$1" x="233.68" y="119.38"/>
<instance part="R48" gate="G$1" x="226.06" y="119.38"/>
<instance part="P+24" gate="VCC" x="241.3" y="124.46" rot="R270"/>
<instance part="U$12" gate="G$1" x="241.3" y="111.76"/>
<instance part="R49" gate="G$1" x="233.68" y="111.76"/>
<instance part="P+25" gate="VCC" x="248.92" y="116.84" rot="R270"/>
<instance part="U$13" gate="G$1" x="254" y="132.08"/>
<instance part="R50" gate="G$1" x="246.38" y="132.08"/>
<instance part="P+26" gate="VCC" x="261.62" y="137.16" rot="R270"/>
<instance part="U$14" gate="G$1" x="276.86" y="129.54"/>
<instance part="R51" gate="G$1" x="269.24" y="129.54"/>
<instance part="P+27" gate="VCC" x="284.48" y="134.62" rot="R270"/>
<instance part="U$15" gate="G$1" x="266.7" y="111.76"/>
<instance part="R52" gate="G$1" x="259.08" y="111.76"/>
<instance part="P+28" gate="VCC" x="274.32" y="116.84" rot="R270"/>
<instance part="U$16" gate="G$1" x="287.02" y="109.22"/>
<instance part="R53" gate="G$1" x="279.4" y="109.22"/>
<instance part="P+29" gate="VCC" x="294.64" y="114.3" rot="R270"/>
<instance part="U$17" gate="G$1" x="297.18" y="104.14"/>
<instance part="R54" gate="G$1" x="279.4" y="101.6"/>
<instance part="P+30" gate="VCC" x="302.26" y="111.76" rot="R270"/>
<instance part="U$18" gate="G$1" x="226.06" y="88.9"/>
<instance part="R55" gate="G$1" x="218.44" y="88.9"/>
<instance part="P+31" gate="VCC" x="233.68" y="93.98" rot="R270"/>
<instance part="U$19" gate="G$1" x="233.68" y="81.28"/>
<instance part="R56" gate="G$1" x="226.06" y="81.28"/>
<instance part="P+32" gate="VCC" x="241.3" y="86.36" rot="R270"/>
<instance part="U$20" gate="G$1" x="241.3" y="73.66"/>
<instance part="R57" gate="G$1" x="233.68" y="73.66"/>
<instance part="P+33" gate="VCC" x="248.92" y="78.74" rot="R270"/>
<instance part="U$21" gate="G$1" x="254" y="93.98"/>
<instance part="R58" gate="G$1" x="246.38" y="93.98"/>
<instance part="P+34" gate="VCC" x="261.62" y="99.06" rot="R270"/>
<instance part="U$22" gate="G$1" x="276.86" y="91.44"/>
<instance part="R59" gate="G$1" x="269.24" y="91.44"/>
<instance part="P+35" gate="VCC" x="284.48" y="96.52" rot="R270"/>
<instance part="U$23" gate="G$1" x="266.7" y="73.66"/>
<instance part="R60" gate="G$1" x="259.08" y="73.66"/>
<instance part="P+36" gate="VCC" x="274.32" y="78.74" rot="R270"/>
<instance part="U$24" gate="G$1" x="287.02" y="71.12"/>
<instance part="R61" gate="G$1" x="279.4" y="71.12"/>
<instance part="P+37" gate="VCC" x="294.64" y="76.2" rot="R270"/>
<instance part="U$25" gate="G$1" x="297.18" y="66.04"/>
<instance part="R62" gate="G$1" x="279.4" y="63.5"/>
<instance part="P+38" gate="VCC" x="302.26" y="73.66" rot="R270"/>
<instance part="U$26" gate="G$1" x="226.06" y="50.8"/>
<instance part="R63" gate="G$1" x="218.44" y="50.8"/>
<instance part="P+39" gate="VCC" x="233.68" y="55.88" rot="R270"/>
<instance part="U$27" gate="G$1" x="233.68" y="43.18"/>
<instance part="R64" gate="G$1" x="226.06" y="43.18"/>
<instance part="P+40" gate="VCC" x="241.3" y="48.26" rot="R270"/>
<instance part="U$28" gate="G$1" x="241.3" y="35.56"/>
<instance part="R65" gate="G$1" x="233.68" y="35.56"/>
<instance part="P+41" gate="VCC" x="248.92" y="40.64" rot="R270"/>
<instance part="U$29" gate="G$1" x="254" y="55.88"/>
<instance part="R66" gate="G$1" x="246.38" y="55.88"/>
<instance part="P+42" gate="VCC" x="261.62" y="60.96" rot="R270"/>
<instance part="U$30" gate="G$1" x="276.86" y="53.34"/>
<instance part="R67" gate="G$1" x="269.24" y="53.34"/>
<instance part="P+43" gate="VCC" x="284.48" y="58.42" rot="R270"/>
<instance part="U$31" gate="G$1" x="266.7" y="35.56"/>
<instance part="R68" gate="G$1" x="259.08" y="35.56"/>
<instance part="P+44" gate="VCC" x="274.32" y="40.64" rot="R270"/>
<instance part="U$32" gate="G$1" x="287.02" y="33.02"/>
<instance part="R69" gate="G$1" x="279.4" y="33.02"/>
<instance part="P+45" gate="VCC" x="294.64" y="38.1" rot="R270"/>
<instance part="U$33" gate="G$1" x="297.18" y="27.94"/>
<instance part="R70" gate="G$1" x="279.4" y="25.4"/>
<instance part="P+46" gate="VCC" x="302.26" y="35.56" rot="R270"/>
<instance part="U$34" gate="G$1" x="226.06" y="12.7"/>
<instance part="R71" gate="G$1" x="218.44" y="12.7"/>
<instance part="P+47" gate="VCC" x="233.68" y="17.78" rot="R270"/>
<instance part="U$35" gate="G$1" x="233.68" y="5.08"/>
<instance part="R72" gate="G$1" x="226.06" y="5.08"/>
<instance part="P+48" gate="VCC" x="241.3" y="10.16" rot="R270"/>
<instance part="U$36" gate="G$1" x="241.3" y="-2.54"/>
<instance part="R73" gate="G$1" x="233.68" y="-2.54"/>
<instance part="P+49" gate="VCC" x="248.92" y="2.54" rot="R270"/>
<instance part="U$37" gate="G$1" x="254" y="17.78"/>
<instance part="R74" gate="G$1" x="246.38" y="17.78"/>
<instance part="P+50" gate="VCC" x="261.62" y="22.86" rot="R270"/>
<instance part="U$38" gate="G$1" x="276.86" y="15.24"/>
<instance part="R75" gate="G$1" x="269.24" y="15.24"/>
<instance part="P+51" gate="VCC" x="284.48" y="20.32" rot="R270"/>
<instance part="U$39" gate="G$1" x="266.7" y="-2.54"/>
<instance part="R76" gate="G$1" x="259.08" y="-2.54"/>
<instance part="P+52" gate="VCC" x="274.32" y="2.54" rot="R270"/>
<instance part="U$40" gate="G$1" x="287.02" y="-5.08"/>
<instance part="R77" gate="G$1" x="279.4" y="-5.08"/>
<instance part="P+53" gate="VCC" x="294.64" y="0" rot="R270"/>
<instance part="U$41" gate="G$1" x="297.18" y="-10.16"/>
<instance part="R78" gate="G$1" x="279.4" y="-12.7"/>
<instance part="P+54" gate="VCC" x="302.26" y="-2.54" rot="R270"/>
<instance part="U$42" gate="G$1" x="226.06" y="-25.4"/>
<instance part="R79" gate="G$1" x="218.44" y="-25.4"/>
<instance part="P+55" gate="VCC" x="233.68" y="-20.32" rot="R270"/>
<instance part="U$43" gate="G$1" x="233.68" y="-33.02"/>
<instance part="R80" gate="G$1" x="226.06" y="-33.02"/>
<instance part="P+56" gate="VCC" x="241.3" y="-27.94" rot="R270"/>
<instance part="U$44" gate="G$1" x="241.3" y="-40.64"/>
<instance part="R81" gate="G$1" x="233.68" y="-40.64"/>
<instance part="P+57" gate="VCC" x="248.92" y="-35.56" rot="R270"/>
<instance part="U$45" gate="G$1" x="254" y="-20.32"/>
<instance part="R82" gate="G$1" x="246.38" y="-20.32"/>
<instance part="P+58" gate="VCC" x="261.62" y="-15.24" rot="R270"/>
<instance part="U$46" gate="G$1" x="276.86" y="-22.86"/>
<instance part="R83" gate="G$1" x="269.24" y="-22.86"/>
<instance part="P+59" gate="VCC" x="284.48" y="-17.78" rot="R270"/>
<instance part="U$47" gate="G$1" x="266.7" y="-40.64"/>
<instance part="R84" gate="G$1" x="259.08" y="-40.64"/>
<instance part="P+60" gate="VCC" x="274.32" y="-35.56" rot="R270"/>
<instance part="U$48" gate="G$1" x="287.02" y="-43.18"/>
<instance part="R85" gate="G$1" x="279.4" y="-43.18"/>
<instance part="P+61" gate="VCC" x="294.64" y="-38.1" rot="R270"/>
<instance part="U$49" gate="G$1" x="297.18" y="-48.26"/>
<instance part="R86" gate="G$1" x="279.4" y="-50.8"/>
<instance part="P+62" gate="VCC" x="302.26" y="-40.64" rot="R270"/>
<instance part="U$50" gate="G$1" x="226.06" y="-63.5"/>
<instance part="R87" gate="G$1" x="218.44" y="-63.5"/>
<instance part="P+63" gate="VCC" x="233.68" y="-58.42" rot="R270"/>
<instance part="U$51" gate="G$1" x="233.68" y="-71.12"/>
<instance part="R88" gate="G$1" x="226.06" y="-71.12"/>
<instance part="P+64" gate="VCC" x="241.3" y="-66.04" rot="R270"/>
<instance part="U$52" gate="G$1" x="241.3" y="-78.74"/>
<instance part="R89" gate="G$1" x="233.68" y="-78.74"/>
<instance part="P+65" gate="VCC" x="248.92" y="-73.66" rot="R270"/>
<instance part="U$53" gate="G$1" x="254" y="-58.42"/>
<instance part="R90" gate="G$1" x="246.38" y="-58.42"/>
<instance part="P+66" gate="VCC" x="261.62" y="-53.34" rot="R270"/>
<instance part="U$54" gate="G$1" x="276.86" y="-60.96"/>
<instance part="R91" gate="G$1" x="269.24" y="-60.96"/>
<instance part="P+67" gate="VCC" x="284.48" y="-55.88" rot="R270"/>
<instance part="U$55" gate="G$1" x="266.7" y="-78.74"/>
<instance part="R92" gate="G$1" x="259.08" y="-78.74"/>
<instance part="P+68" gate="VCC" x="274.32" y="-73.66" rot="R270"/>
<instance part="U$56" gate="G$1" x="287.02" y="-81.28"/>
<instance part="R93" gate="G$1" x="279.4" y="-81.28"/>
<instance part="P+69" gate="VCC" x="294.64" y="-76.2" rot="R270"/>
<instance part="U$57" gate="G$1" x="297.18" y="-86.36"/>
<instance part="R94" gate="G$1" x="279.4" y="-88.9"/>
<instance part="P+70" gate="VCC" x="302.26" y="-78.74" rot="R270"/>
<instance part="U$58" gate="G$1" x="226.06" y="-101.6"/>
<instance part="R95" gate="G$1" x="218.44" y="-101.6"/>
<instance part="P+71" gate="VCC" x="233.68" y="-96.52" rot="R270"/>
<instance part="U$59" gate="G$1" x="233.68" y="-109.22"/>
<instance part="R96" gate="G$1" x="226.06" y="-109.22"/>
<instance part="P+72" gate="VCC" x="241.3" y="-104.14" rot="R270"/>
<instance part="U$60" gate="G$1" x="241.3" y="-116.84"/>
<instance part="R97" gate="G$1" x="233.68" y="-116.84"/>
<instance part="P+73" gate="VCC" x="248.92" y="-111.76" rot="R270"/>
<instance part="U$61" gate="G$1" x="254" y="-96.52"/>
<instance part="R98" gate="G$1" x="246.38" y="-96.52"/>
<instance part="P+74" gate="VCC" x="261.62" y="-91.44" rot="R270"/>
<instance part="U$62" gate="G$1" x="276.86" y="-99.06"/>
<instance part="R99" gate="G$1" x="269.24" y="-99.06"/>
<instance part="P+75" gate="VCC" x="284.48" y="-93.98" rot="R270"/>
<instance part="U$63" gate="G$1" x="266.7" y="-116.84"/>
<instance part="R100" gate="G$1" x="259.08" y="-116.84"/>
<instance part="P+76" gate="VCC" x="274.32" y="-111.76" rot="R270"/>
<instance part="U$64" gate="G$1" x="287.02" y="-119.38"/>
<instance part="R101" gate="G$1" x="279.4" y="-119.38"/>
<instance part="P+77" gate="VCC" x="294.64" y="-114.3" rot="R270"/>
<instance part="U$65" gate="G$1" x="297.18" y="-124.46"/>
<instance part="R102" gate="G$1" x="279.4" y="-127"/>
<instance part="P+78" gate="VCC" x="302.26" y="-116.84" rot="R270"/>
<instance part="JP1" gate="G$1" x="121.92" y="-60.96" rot="R270"/>
<instance part="GND39" gate="1" x="114.3" y="-73.66"/>
<instance part="P+79" gate="VCC" x="132.08" y="-73.66" rot="R180"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$2" class="0">
<segment>
<wire x1="-2.54" y1="96.52" x2="-5.08" y2="96.52" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="96.52" x2="-7.62" y2="96.52" width="0.1524" layer="91"/>
<wire x1="60.96" y1="71.12" x2="60.96" y2="104.14" width="0.1524" layer="91"/>
<wire x1="60.96" y1="104.14" x2="-5.08" y2="104.14" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="104.14" x2="-5.08" y2="96.52" width="0.1524" layer="91"/>
<junction x="-5.08" y="96.52"/>
<pinref part="R1" gate="G$1" pin="2"/>
<pinref part="JP3" gate="G$1" pin="RESET"/>
<pinref part="IC14" gate="G$1" pin="RESET"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<wire x1="-20.32" y1="88.9" x2="-22.86" y2="88.9" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="88.9" x2="-22.86" y2="86.36" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="86.36" x2="-22.86" y2="83.82" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="83.82" x2="-20.32" y2="83.82" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="86.36" x2="-22.86" y2="86.36" width="0.1524" layer="91"/>
<junction x="-22.86" y="86.36"/>
<pinref part="C5" gate="G$1" pin="1"/>
<pinref part="C4" gate="G$1" pin="1"/>
<pinref part="GND3" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="-2.54" y1="73.66" x2="-17.78" y2="73.66" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="73.66" x2="-17.78" y2="71.12" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="71.12" x2="-22.86" y2="71.12" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="68.58" x2="-22.86" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="68.58" x2="-22.86" y2="71.12" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="78.74" x2="-17.78" y2="78.74" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="78.74" x2="-17.78" y2="73.66" width="0.1524" layer="91"/>
<junction x="-22.86" y="71.12"/>
<junction x="-17.78" y="73.66"/>
<pinref part="C3" gate="G$1" pin="2"/>
<pinref part="GND2" gate="1" pin="GND"/>
<pinref part="C2" gate="G$1" pin="2"/>
<pinref part="IC14" gate="G$1" pin="GND@1"/>
</segment>
<segment>
<wire x1="-17.78" y1="66.04" x2="-15.24" y2="66.04" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="66.04" x2="-15.24" y2="60.96" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="60.96" x2="-10.16" y2="60.96" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="-10.16" y1="60.96" x2="-7.62" y2="60.96" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="60.96" x2="-7.62" y2="58.42" width="0.1524" layer="91"/>
<junction x="-10.16" y="60.96"/>
<pinref part="IC14" gate="G$1" pin="GND1"/>
<wire x1="-7.62" y1="58.42" x2="-5.08" y2="58.42" width="0.1524" layer="91"/>
<pinref part="IC14" gate="G$1" pin="GND"/>
<wire x1="-5.08" y1="58.42" x2="-2.54" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="55.88" x2="-5.08" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="55.88" x2="-5.08" y2="58.42" width="0.1524" layer="91"/>
<junction x="-5.08" y="58.42"/>
<pinref part="IC14" gate="G$1" pin="GND2"/>
<wire x1="-2.54" y1="53.34" x2="-5.08" y2="53.34" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="53.34" x2="-5.08" y2="55.88" width="0.1524" layer="91"/>
<junction x="-5.08" y="55.88"/>
</segment>
<segment>
<wire x1="175.26" y1="-127" x2="149.86" y2="-127" width="0.1524" layer="91"/>
<pinref part="IC9" gate="A" pin="OC"/>
<pinref part="GND11" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="175.26" y1="-88.9" x2="149.86" y2="-88.9" width="0.1524" layer="91"/>
<pinref part="IC8" gate="A" pin="OC"/>
<pinref part="GND10" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="175.26" y1="-50.8" x2="149.86" y2="-50.8" width="0.1524" layer="91"/>
<pinref part="IC6" gate="A" pin="OC"/>
<pinref part="GND9" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="175.26" y1="-12.7" x2="149.86" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="IC5" gate="A" pin="OC"/>
<pinref part="GND8" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="175.26" y1="25.4" x2="149.86" y2="25.4" width="0.1524" layer="91"/>
<pinref part="IC4" gate="A" pin="OC"/>
<pinref part="GND7" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="175.26" y1="63.5" x2="149.86" y2="63.5" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="OC"/>
<pinref part="GND4" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="175.26" y1="101.6" x2="149.86" y2="101.6" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="OC"/>
<pinref part="GND5" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="149.86" y1="139.7" x2="175.26" y2="139.7" width="0.1524" layer="91"/>
<pinref part="GND6" gate="1" pin="GND"/>
<pinref part="IC7" gate="A" pin="OC"/>
</segment>
<segment>
<wire x1="101.6" y1="-50.8" x2="99.06" y2="-50.8" width="0.1524" layer="91"/>
<pinref part="GND19" gate="1" pin="GND"/>
<pinref part="Q9" gate="G$1" pin="S"/>
<pinref part="R30" gate="G$1" pin="2"/>
<wire x1="99.06" y1="-50.8" x2="96.52" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-53.34" x2="99.06" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-53.34" x2="99.06" y2="-50.8" width="0.1524" layer="91"/>
<junction x="99.06" y="-50.8"/>
</segment>
<segment>
<wire x1="101.6" y1="-40.64" x2="99.06" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="GND18" gate="1" pin="GND"/>
<pinref part="Q8" gate="G$1" pin="S"/>
<pinref part="R29" gate="G$1" pin="2"/>
<wire x1="99.06" y1="-40.64" x2="96.52" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-43.18" x2="99.06" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-43.18" x2="99.06" y2="-40.64" width="0.1524" layer="91"/>
<junction x="99.06" y="-40.64"/>
</segment>
<segment>
<wire x1="101.6" y1="-30.48" x2="99.06" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="GND17" gate="1" pin="GND"/>
<pinref part="Q7" gate="G$1" pin="S"/>
<pinref part="R28" gate="G$1" pin="2"/>
<wire x1="99.06" y1="-30.48" x2="96.52" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-33.02" x2="99.06" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-33.02" x2="99.06" y2="-30.48" width="0.1524" layer="91"/>
<junction x="99.06" y="-30.48"/>
</segment>
<segment>
<wire x1="101.6" y1="-20.32" x2="99.06" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="GND16" gate="1" pin="GND"/>
<pinref part="Q6" gate="G$1" pin="S"/>
<pinref part="R27" gate="G$1" pin="2"/>
<wire x1="99.06" y1="-20.32" x2="96.52" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-22.86" x2="99.06" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-22.86" x2="99.06" y2="-20.32" width="0.1524" layer="91"/>
<junction x="99.06" y="-20.32"/>
</segment>
<segment>
<wire x1="101.6" y1="-10.16" x2="99.06" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="GND15" gate="1" pin="GND"/>
<pinref part="Q5" gate="G$1" pin="S"/>
<pinref part="R26" gate="G$1" pin="2"/>
<wire x1="99.06" y1="-10.16" x2="96.52" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-12.7" x2="99.06" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-12.7" x2="99.06" y2="-10.16" width="0.1524" layer="91"/>
<junction x="99.06" y="-10.16"/>
</segment>
<segment>
<wire x1="101.6" y1="0" x2="99.06" y2="0" width="0.1524" layer="91"/>
<pinref part="GND14" gate="1" pin="GND"/>
<pinref part="Q4" gate="G$1" pin="S"/>
<pinref part="R25" gate="G$1" pin="2"/>
<wire x1="99.06" y1="0" x2="96.52" y2="0" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-2.54" x2="99.06" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-2.54" x2="99.06" y2="0" width="0.1524" layer="91"/>
<junction x="99.06" y="0"/>
</segment>
<segment>
<wire x1="101.6" y1="10.16" x2="99.06" y2="10.16" width="0.1524" layer="91"/>
<pinref part="GND13" gate="1" pin="GND"/>
<pinref part="Q3" gate="G$1" pin="S"/>
<pinref part="R24" gate="G$1" pin="2"/>
<wire x1="99.06" y1="10.16" x2="96.52" y2="10.16" width="0.1524" layer="91"/>
<wire x1="93.98" y1="7.62" x2="99.06" y2="7.62" width="0.1524" layer="91"/>
<wire x1="99.06" y1="7.62" x2="99.06" y2="10.16" width="0.1524" layer="91"/>
<junction x="99.06" y="10.16"/>
</segment>
<segment>
<wire x1="101.6" y1="20.32" x2="99.06" y2="20.32" width="0.1524" layer="91"/>
<pinref part="GND12" gate="1" pin="GND"/>
<pinref part="Q2" gate="G$1" pin="S"/>
<pinref part="R23" gate="G$1" pin="2"/>
<wire x1="99.06" y1="20.32" x2="96.52" y2="20.32" width="0.1524" layer="91"/>
<wire x1="93.98" y1="17.78" x2="99.06" y2="17.78" width="0.1524" layer="91"/>
<wire x1="99.06" y1="17.78" x2="99.06" y2="20.32" width="0.1524" layer="91"/>
<junction x="99.06" y="20.32"/>
</segment>
<segment>
<wire x1="86.36" y1="55.88" x2="88.9" y2="55.88" width="0.1524" layer="91"/>
<wire x1="88.9" y1="55.88" x2="93.98" y2="55.88" width="0.1524" layer="91"/>
<wire x1="86.36" y1="58.42" x2="88.9" y2="58.42" width="0.1524" layer="91"/>
<wire x1="88.9" y1="58.42" x2="88.9" y2="55.88" width="0.1524" layer="91"/>
<wire x1="86.36" y1="60.96" x2="88.9" y2="60.96" width="0.1524" layer="91"/>
<wire x1="88.9" y1="60.96" x2="88.9" y2="58.42" width="0.1524" layer="91"/>
<wire x1="86.36" y1="63.5" x2="88.9" y2="63.5" width="0.1524" layer="91"/>
<wire x1="88.9" y1="63.5" x2="88.9" y2="60.96" width="0.1524" layer="91"/>
<junction x="88.9" y="55.88"/>
<junction x="88.9" y="58.42"/>
<junction x="88.9" y="60.96"/>
<pinref part="JP3" gate="G$1" pin="GND@4"/>
<pinref part="GND20" gate="1" pin="GND"/>
<pinref part="JP3" gate="G$1" pin="GND@3"/>
<pinref part="JP3" gate="G$1" pin="GND@2"/>
<pinref part="JP3" gate="G$1" pin="GND@1"/>
</segment>
<segment>
<wire x1="-58.42" y1="10.16" x2="-68.58" y2="10.16" width="0.1524" layer="91"/>
<pinref part="IC10" gate="1" pin="GND@A"/>
<pinref part="GND21" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="-25.4" y1="10.16" x2="-27.94" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="10.16" x2="-27.94" y2="12.7" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="12.7" x2="-30.48" y2="12.7" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="7.62" x2="-27.94" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="7.62" x2="-27.94" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="5.08" x2="-27.94" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="5.08" x2="-27.94" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="2.54" x2="-27.94" y2="2.54" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="2.54" x2="-27.94" y2="5.08" width="0.1524" layer="91"/>
<junction x="-27.94" y="10.16"/>
<junction x="-27.94" y="7.62"/>
<junction x="-27.94" y="5.08"/>
<pinref part="GND24" gate="1" pin="GND"/>
<pinref part="IC10" gate="1" pin="TEST"/>
<pinref part="IC10" gate="1" pin="GND"/>
<pinref part="IC10" gate="1" pin="GND@1"/>
<pinref part="IC10" gate="1" pin="GND@2"/>
</segment>
<segment>
<wire x1="-68.58" y1="22.86" x2="-71.12" y2="22.86" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="1"/>
<pinref part="GND22" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="-91.44" y1="40.64" x2="-91.44" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-86.36" y1="40.64" x2="-86.36" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="40.64" x2="-81.28" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-76.2" y1="35.56" x2="-81.28" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="35.56" x2="-86.36" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-86.36" y1="35.56" x2="-91.44" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-91.44" y1="35.56" x2="-93.98" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="45.72" x2="-76.2" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-76.2" y1="45.72" x2="-76.2" y2="35.56" width="0.1524" layer="91"/>
<junction x="-81.28" y="35.56"/>
<junction x="-86.36" y="35.56"/>
<junction x="-91.44" y="35.56"/>
<pinref part="C7" gate="G$1" pin="1"/>
<pinref part="C8" gate="G$1" pin="1"/>
<pinref part="C9" gate="G$1" pin="1"/>
<pinref part="GND23" gate="1" pin="GND"/>
<pinref part="R10" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="-106.68" y1="33.02" x2="-104.14" y2="33.02" width="0.1524" layer="91"/>
<pinref part="GND25" gate="1" pin="GND"/>
<pinref part="X2" gate="-CON" pin="5"/>
</segment>
<segment>
<wire x1="33.02" y1="-17.78" x2="30.48" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-17.78" x2="27.94" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-15.24" x2="30.48" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-15.24" x2="30.48" y2="-17.78" width="0.1524" layer="91"/>
<junction x="30.48" y="-17.78"/>
<pinref part="GND27" gate="1" pin="GND"/>
<pinref part="IC11" gate="IC1" pin="A2"/>
<pinref part="IC11" gate="IC1" pin="A1"/>
</segment>
<segment>
<wire x1="-2.54" y1="-17.78" x2="-17.78" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="-17.78" x2="-22.86" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="-25.4" x2="-17.78" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="-25.4" x2="-17.78" y2="-17.78" width="0.1524" layer="91"/>
<junction x="-17.78" y="-17.78"/>
<pinref part="GND26" gate="1" pin="GND"/>
<pinref part="IC11" gate="IC1" pin="GND"/>
<pinref part="R14" gate="G$1" pin="1"/>
</segment>
<segment>
<wire x1="-109.22" y1="-50.8" x2="-106.68" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="-106.68" y1="-50.8" x2="-96.52" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="-96.52" y1="-50.8" x2="-91.44" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="-101.6" y1="-55.88" x2="-106.68" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="-106.68" y1="-55.88" x2="-106.68" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="-104.14" y1="-60.96" x2="-106.68" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="-106.68" y1="-60.96" x2="-106.68" y2="-55.88" width="0.1524" layer="91"/>
<junction x="-96.52" y="-50.8"/>
<junction x="-106.68" y="-50.8"/>
<junction x="-106.68" y="-55.88"/>
<pinref part="GND28" gate="1" pin="GND"/>
<pinref part="C10" gate="G$1" pin="1"/>
<pinref part="IC12" gate="G$1" pin="VSSA"/>
<pinref part="C11" gate="G$1" pin="2"/>
<pinref part="C12" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="-22.86" y1="-53.34" x2="-27.94" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="GND29" gate="1" pin="GND"/>
<pinref part="U$1" gate="G$1" pin="GND"/>
</segment>
<segment>
<wire x1="121.92" y1="-86.36" x2="119.38" y2="-86.36" width="0.1524" layer="91"/>
<pinref part="GND31" gate="1" pin="GND"/>
<pinref part="S1" gate="1" pin="P"/>
</segment>
<segment>
<wire x1="-91.44" y1="-93.98" x2="-93.98" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="-93.98" y1="-93.98" x2="-93.98" y2="-96.52" width="0.1524" layer="91"/>
<wire x1="-93.98" y1="-96.52" x2="-96.52" y2="-96.52" width="0.1524" layer="91"/>
<wire x1="-91.44" y1="-99.06" x2="-93.98" y2="-99.06" width="0.1524" layer="91"/>
<wire x1="-93.98" y1="-99.06" x2="-93.98" y2="-96.52" width="0.1524" layer="91"/>
<junction x="-93.98" y="-96.52"/>
<pinref part="C15" gate="G$1" pin="2"/>
<pinref part="GND30" gate="1" pin="GND"/>
<pinref part="C14" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="-73.66" y1="-106.68" x2="-78.74" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="-78.74" y1="-106.68" x2="-81.28" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="-106.68" x2="-93.98" y2="-106.68" width="0.1524" layer="91"/>
<junction x="-81.28" y="-106.68"/>
<pinref part="C16" gate="G$1" pin="2"/>
<pinref part="GND32" gate="1" pin="GND"/>
<pinref part="IC1" gate="G$1" pin="GND@1"/>
<pinref part="IC1" gate="G$1" pin="GND@2"/>
<wire x1="-73.66" y1="-109.22" x2="-78.74" y2="-109.22" width="0.1524" layer="91"/>
<wire x1="-78.74" y1="-109.22" x2="-78.74" y2="-106.68" width="0.1524" layer="91"/>
<junction x="-78.74" y="-106.68"/>
</segment>
<segment>
<wire x1="-93.98" y1="-83.82" x2="-88.9" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="-88.9" y1="-83.82" x2="-88.9" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="-81.28" x2="-83.82" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="-88.9" y1="-81.28" x2="-83.82" y2="-81.28" width="0.1524" layer="91"/>
<junction x="-83.82" y="-81.28"/>
<pinref part="GND33" gate="1" pin="GND"/>
<pinref part="C17" gate="G$1" pin="2"/>
<pinref part="IC1" gate="G$1" pin="GND"/>
</segment>
<segment>
<wire x1="-106.68" y1="-101.6" x2="-106.68" y2="-99.06" width="0.1524" layer="91"/>
<pinref part="GND34" gate="1" pin="GND"/>
<pinref part="C18" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="38.1" y1="-132.08" x2="40.64" y2="-132.08" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-132.08" x2="40.64" y2="-134.62" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-134.62" x2="40.64" y2="-137.16" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-137.16" x2="40.64" y2="-139.7" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-139.7" x2="45.72" y2="-139.7" width="0.1524" layer="91"/>
<wire x1="38.1" y1="-139.7" x2="40.64" y2="-139.7" width="0.1524" layer="91"/>
<wire x1="38.1" y1="-137.16" x2="40.64" y2="-137.16" width="0.1524" layer="91"/>
<wire x1="38.1" y1="-134.62" x2="40.64" y2="-134.62" width="0.1524" layer="91"/>
<junction x="40.64" y="-139.7"/>
<junction x="40.64" y="-137.16"/>
<junction x="40.64" y="-134.62"/>
<pinref part="JP6" gate="G$1" pin="GND@1"/>
<pinref part="GND35" gate="1" pin="GND"/>
<pinref part="JP6" gate="G$1" pin="GND@4"/>
<pinref part="JP6" gate="G$1" pin="GND@3"/>
<pinref part="JP6" gate="G$1" pin="GND@2"/>
</segment>
<segment>
<wire x1="-5.08" y1="-83.82" x2="-7.62" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="-83.82" x2="-7.62" y2="-81.28" width="0.1524" layer="91"/>
<pinref part="GND37" gate="1" pin="GND"/>
<pinref part="R22" gate="G$1" pin="A"/>
</segment>
<segment>
<pinref part="R38" gate="G$1" pin="1"/>
<wire x1="2.54" y1="-104.14" x2="5.08" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-104.14" x2="5.08" y2="-106.68" width="0.1524" layer="91"/>
<pinref part="GND38" gate="1" pin="GND"/>
<wire x1="5.08" y1="-106.68" x2="7.62" y2="-106.68" width="0.1524" layer="91"/>
<pinref part="R37" gate="G$1" pin="1"/>
<wire x1="0" y1="-106.68" x2="5.08" y2="-106.68" width="0.1524" layer="91"/>
<junction x="5.08" y="-106.68"/>
<pinref part="R32" gate="G$1" pin="1"/>
<wire x1="2.54" y1="-119.38" x2="5.08" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-119.38" x2="5.08" y2="-116.84" width="0.1524" layer="91"/>
<pinref part="R36" gate="G$1" pin="1"/>
<wire x1="5.08" y1="-116.84" x2="5.08" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-114.3" x2="5.08" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-111.76" x2="5.08" y2="-109.22" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-109.22" x2="5.08" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="2.54" y1="-109.22" x2="5.08" y2="-109.22" width="0.1524" layer="91"/>
<junction x="5.08" y="-109.22"/>
<pinref part="R35" gate="G$1" pin="1"/>
<wire x1="0" y1="-111.76" x2="5.08" y2="-111.76" width="0.1524" layer="91"/>
<junction x="5.08" y="-111.76"/>
<pinref part="R34" gate="G$1" pin="1"/>
<wire x1="2.54" y1="-114.3" x2="5.08" y2="-114.3" width="0.1524" layer="91"/>
<junction x="5.08" y="-114.3"/>
<pinref part="R33" gate="G$1" pin="1"/>
<wire x1="0" y1="-116.84" x2="5.08" y2="-116.84" width="0.1524" layer="91"/>
<junction x="5.08" y="-116.84"/>
</segment>
<segment>
<pinref part="R21" gate="G$1" pin="1"/>
<pinref part="GND36" gate="1" pin="GND"/>
<wire x1="2.54" y1="-127" x2="5.08" y2="-127" width="0.1524" layer="91"/>
<pinref part="R31" gate="G$1" pin="1"/>
<wire x1="0" y1="-124.46" x2="2.54" y2="-124.46" width="0.1524" layer="91"/>
<wire x1="2.54" y1="-124.46" x2="2.54" y2="-127" width="0.1524" layer="91"/>
<junction x="2.54" y="-127"/>
</segment>
<segment>
<pinref part="GND39" gate="1" pin="GND"/>
<pinref part="JP1" gate="G$1" pin="GND"/>
<wire x1="114.3" y1="-71.12" x2="114.3" y2="-68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<wire x1="-27.94" y1="78.74" x2="-22.86" y2="78.74" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="76.2" x2="-20.32" y2="76.2" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="76.2" x2="-20.32" y2="78.74" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="78.74" x2="-22.86" y2="78.74" width="0.1524" layer="91"/>
<junction x="-22.86" y="78.74"/>
<pinref part="P+2" gate="VCC" pin="VCC"/>
<pinref part="C3" gate="G$1" pin="1"/>
<pinref part="IC14" gate="G$1" pin="AVCC"/>
</segment>
<segment>
<wire x1="-2.54" y1="68.58" x2="-5.08" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="68.58" x2="-10.16" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="68.58" x2="-15.24" y2="68.58" width="0.1524" layer="91"/>
<junction x="-10.16" y="68.58"/>
<pinref part="C1" gate="G$1" pin="2"/>
<pinref part="P+1" gate="VCC" pin="VCC"/>
<pinref part="IC14" gate="G$1" pin="VCC1"/>
<pinref part="IC14" gate="G$1" pin="VCC2"/>
<wire x1="-2.54" y1="63.5" x2="-5.08" y2="63.5" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="63.5" x2="-5.08" y2="66.04" width="0.1524" layer="91"/>
<junction x="-5.08" y="68.58"/>
<pinref part="IC14" gate="G$1" pin="VCC"/>
<wire x1="-5.08" y1="66.04" x2="-5.08" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="66.04" x2="-5.08" y2="66.04" width="0.1524" layer="91"/>
<junction x="-5.08" y="66.04"/>
</segment>
<segment>
<wire x1="-17.78" y1="96.52" x2="-22.86" y2="96.52" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
<pinref part="P+3" gate="VCC" pin="VCC"/>
</segment>
<segment>
<wire x1="91.44" y1="71.12" x2="86.36" y2="71.12" width="0.1524" layer="91"/>
<pinref part="P+4" gate="VCC" pin="VCC"/>
<pinref part="JP3" gate="G$1" pin="+5V"/>
</segment>
<segment>
<wire x1="-58.42" y1="50.8" x2="-60.96" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="50.8" x2="-81.28" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="50.8" x2="-86.36" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-86.36" y1="50.8" x2="-91.44" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-91.44" y1="50.8" x2="-96.52" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-58.42" y1="48.26" x2="-60.96" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="48.26" x2="-60.96" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-91.44" y1="48.26" x2="-91.44" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-86.36" y1="48.26" x2="-86.36" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="48.26" x2="-81.28" y2="50.8" width="0.1524" layer="91"/>
<junction x="-60.96" y="50.8"/>
<junction x="-91.44" y="50.8"/>
<junction x="-86.36" y="50.8"/>
<junction x="-81.28" y="50.8"/>
<pinref part="IC10" gate="1" pin="VCC"/>
<pinref part="P+5" gate="VCC" pin="VCC"/>
<pinref part="IC10" gate="1" pin="VCCIO"/>
<pinref part="C7" gate="G$1" pin="2"/>
<pinref part="C8" gate="G$1" pin="2"/>
<pinref part="C9" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="-2.54" y1="-15.24" x2="-7.62" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="-15.24" x2="-20.32" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-5.08" x2="22.86" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-5.08" x2="-7.62" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="-5.08" x2="-7.62" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-7.62" x2="22.86" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-7.62" x2="22.86" y2="-5.08" width="0.1524" layer="91"/>
<junction x="-7.62" y="-15.24"/>
<junction x="22.86" y="-5.08"/>
<pinref part="IC11" gate="IC1" pin="VCC"/>
<pinref part="P+6" gate="VCC" pin="VCC"/>
<pinref part="R12" gate="G$1" pin="2"/>
<pinref part="R13" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="-91.44" y1="-48.26" x2="-93.98" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="-93.98" y1="-48.26" x2="-93.98" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="-93.98" y1="-43.18" x2="-96.52" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="-104.14" y1="-43.18" x2="-96.52" y2="-43.18" width="0.1524" layer="91"/>
<junction x="-96.52" y="-43.18"/>
<pinref part="IC12" gate="G$1" pin="VDDA"/>
<pinref part="C10" gate="G$1" pin="2"/>
<pinref part="P+7" gate="VCC" pin="VCC"/>
</segment>
<segment>
<wire x1="-93.98" y1="-78.74" x2="-93.98" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="-93.98" y1="-76.2" x2="-93.98" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="-88.9" y1="-76.2" x2="-93.98" y2="-76.2" width="0.1524" layer="91"/>
<junction x="-93.98" y="-76.2"/>
<pinref part="P+8" gate="VCC" pin="VCC"/>
<pinref part="R15" gate="G$1" pin="1"/>
<pinref part="R19" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="99.06" y1="-111.76" x2="99.06" y2="-109.22" width="0.1524" layer="91"/>
<pinref part="P+10" gate="VCC" pin="VCC"/>
<pinref part="R18" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="99.06" y1="-60.96" x2="99.06" y2="-58.42" width="0.1524" layer="91"/>
<pinref part="R20" gate="G$1" pin="1"/>
<pinref part="P+11" gate="VCC" pin="VCC"/>
</segment>
<segment>
<wire x1="-93.98" y1="-114.3" x2="-81.28" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="-114.3" x2="-78.74" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="-78.74" y1="-114.3" x2="-78.74" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="-78.74" y1="-111.76" x2="-73.66" y2="-111.76" width="0.1524" layer="91"/>
<junction x="-81.28" y="-114.3"/>
<pinref part="P+9" gate="VCC" pin="VCC"/>
<pinref part="C16" gate="G$1" pin="1"/>
<pinref part="IC1" gate="G$1" pin="VCC@1"/>
<pinref part="IC1" gate="G$1" pin="VCC@2"/>
<wire x1="-73.66" y1="-114.3" x2="-78.74" y2="-114.3" width="0.1524" layer="91"/>
<junction x="-78.74" y="-114.3"/>
</segment>
<segment>
<wire x1="-93.98" y1="-88.9" x2="-83.82" y2="-88.9" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="-88.9" x2="-81.28" y2="-88.9" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="-88.9" x2="-81.28" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="-86.36" x2="-73.66" y2="-86.36" width="0.1524" layer="91"/>
<junction x="-83.82" y="-88.9"/>
<pinref part="P+12" gate="VCC" pin="VCC"/>
<pinref part="C17" gate="G$1" pin="1"/>
<pinref part="IC1" gate="G$1" pin="AVCC"/>
</segment>
<segment>
<wire x1="38.1" y1="-124.46" x2="45.72" y2="-124.46" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="+5V"/>
<pinref part="P+13" gate="VCC" pin="VCC"/>
</segment>
<segment>
<wire x1="-5.08" y1="-68.58" x2="-7.62" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="-68.58" x2="-7.62" y2="-71.12" width="0.1524" layer="91"/>
<pinref part="P+14" gate="VCC" pin="VCC"/>
<pinref part="R22" gate="G$1" pin="E"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="E"/>
<pinref part="P+15" gate="VCC" pin="VCC"/>
<wire x1="231.14" y1="170.18" x2="228.6" y2="170.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="E"/>
<pinref part="P+16" gate="VCC" pin="VCC"/>
<wire x1="238.76" y1="162.56" x2="236.22" y2="162.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$4" gate="G$1" pin="E"/>
<pinref part="P+17" gate="VCC" pin="VCC"/>
<wire x1="246.38" y1="154.94" x2="243.84" y2="154.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="E"/>
<pinref part="P+18" gate="VCC" pin="VCC"/>
<wire x1="259.08" y1="175.26" x2="256.54" y2="175.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="E"/>
<pinref part="P+19" gate="VCC" pin="VCC"/>
<wire x1="281.94" y1="172.72" x2="279.4" y2="172.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$7" gate="G$1" pin="E"/>
<pinref part="P+20" gate="VCC" pin="VCC"/>
<wire x1="271.78" y1="154.94" x2="269.24" y2="154.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$8" gate="G$1" pin="E"/>
<pinref part="P+21" gate="VCC" pin="VCC"/>
<wire x1="292.1" y1="152.4" x2="289.56" y2="152.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$9" gate="G$1" pin="E"/>
<pinref part="P+22" gate="VCC" pin="VCC"/>
<wire x1="314.96" y1="149.86" x2="312.42" y2="149.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$10" gate="G$1" pin="E"/>
<pinref part="P+23" gate="VCC" pin="VCC"/>
<wire x1="231.14" y1="132.08" x2="228.6" y2="132.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$11" gate="G$1" pin="E"/>
<pinref part="P+24" gate="VCC" pin="VCC"/>
<wire x1="238.76" y1="124.46" x2="236.22" y2="124.46" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$12" gate="G$1" pin="E"/>
<pinref part="P+25" gate="VCC" pin="VCC"/>
<wire x1="246.38" y1="116.84" x2="243.84" y2="116.84" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$13" gate="G$1" pin="E"/>
<pinref part="P+26" gate="VCC" pin="VCC"/>
<wire x1="259.08" y1="137.16" x2="256.54" y2="137.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$14" gate="G$1" pin="E"/>
<pinref part="P+27" gate="VCC" pin="VCC"/>
<wire x1="281.94" y1="134.62" x2="279.4" y2="134.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$15" gate="G$1" pin="E"/>
<pinref part="P+28" gate="VCC" pin="VCC"/>
<wire x1="271.78" y1="116.84" x2="269.24" y2="116.84" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$16" gate="G$1" pin="E"/>
<pinref part="P+29" gate="VCC" pin="VCC"/>
<wire x1="292.1" y1="114.3" x2="289.56" y2="114.3" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$17" gate="G$1" pin="E"/>
<pinref part="P+30" gate="VCC" pin="VCC"/>
<wire x1="299.72" y1="111.76" x2="299.72" y2="109.22" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$18" gate="G$1" pin="E"/>
<pinref part="P+31" gate="VCC" pin="VCC"/>
<wire x1="231.14" y1="93.98" x2="228.6" y2="93.98" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$19" gate="G$1" pin="E"/>
<pinref part="P+32" gate="VCC" pin="VCC"/>
<wire x1="238.76" y1="86.36" x2="236.22" y2="86.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$20" gate="G$1" pin="E"/>
<pinref part="P+33" gate="VCC" pin="VCC"/>
<wire x1="246.38" y1="78.74" x2="243.84" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$21" gate="G$1" pin="E"/>
<pinref part="P+34" gate="VCC" pin="VCC"/>
<wire x1="259.08" y1="99.06" x2="256.54" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$22" gate="G$1" pin="E"/>
<pinref part="P+35" gate="VCC" pin="VCC"/>
<wire x1="281.94" y1="96.52" x2="279.4" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$23" gate="G$1" pin="E"/>
<pinref part="P+36" gate="VCC" pin="VCC"/>
<wire x1="271.78" y1="78.74" x2="269.24" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$24" gate="G$1" pin="E"/>
<pinref part="P+37" gate="VCC" pin="VCC"/>
<wire x1="292.1" y1="76.2" x2="289.56" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$25" gate="G$1" pin="E"/>
<pinref part="P+38" gate="VCC" pin="VCC"/>
<wire x1="299.72" y1="73.66" x2="299.72" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$26" gate="G$1" pin="E"/>
<pinref part="P+39" gate="VCC" pin="VCC"/>
<wire x1="231.14" y1="55.88" x2="228.6" y2="55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$27" gate="G$1" pin="E"/>
<pinref part="P+40" gate="VCC" pin="VCC"/>
<wire x1="238.76" y1="48.26" x2="236.22" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$28" gate="G$1" pin="E"/>
<pinref part="P+41" gate="VCC" pin="VCC"/>
<wire x1="246.38" y1="40.64" x2="243.84" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$29" gate="G$1" pin="E"/>
<pinref part="P+42" gate="VCC" pin="VCC"/>
<wire x1="259.08" y1="60.96" x2="256.54" y2="60.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$30" gate="G$1" pin="E"/>
<pinref part="P+43" gate="VCC" pin="VCC"/>
<wire x1="281.94" y1="58.42" x2="279.4" y2="58.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$31" gate="G$1" pin="E"/>
<pinref part="P+44" gate="VCC" pin="VCC"/>
<wire x1="271.78" y1="40.64" x2="269.24" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$32" gate="G$1" pin="E"/>
<pinref part="P+45" gate="VCC" pin="VCC"/>
<wire x1="292.1" y1="38.1" x2="289.56" y2="38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$33" gate="G$1" pin="E"/>
<pinref part="P+46" gate="VCC" pin="VCC"/>
<wire x1="299.72" y1="35.56" x2="299.72" y2="33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$34" gate="G$1" pin="E"/>
<pinref part="P+47" gate="VCC" pin="VCC"/>
<wire x1="231.14" y1="17.78" x2="228.6" y2="17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$35" gate="G$1" pin="E"/>
<pinref part="P+48" gate="VCC" pin="VCC"/>
<wire x1="238.76" y1="10.16" x2="236.22" y2="10.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$36" gate="G$1" pin="E"/>
<pinref part="P+49" gate="VCC" pin="VCC"/>
<wire x1="246.38" y1="2.54" x2="243.84" y2="2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$37" gate="G$1" pin="E"/>
<pinref part="P+50" gate="VCC" pin="VCC"/>
<wire x1="259.08" y1="22.86" x2="256.54" y2="22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$38" gate="G$1" pin="E"/>
<pinref part="P+51" gate="VCC" pin="VCC"/>
<wire x1="281.94" y1="20.32" x2="279.4" y2="20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$39" gate="G$1" pin="E"/>
<pinref part="P+52" gate="VCC" pin="VCC"/>
<wire x1="271.78" y1="2.54" x2="269.24" y2="2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$40" gate="G$1" pin="E"/>
<pinref part="P+53" gate="VCC" pin="VCC"/>
<wire x1="292.1" y1="0" x2="289.56" y2="0" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$41" gate="G$1" pin="E"/>
<pinref part="P+54" gate="VCC" pin="VCC"/>
<wire x1="299.72" y1="-2.54" x2="299.72" y2="-5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$42" gate="G$1" pin="E"/>
<pinref part="P+55" gate="VCC" pin="VCC"/>
<wire x1="231.14" y1="-20.32" x2="228.6" y2="-20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$43" gate="G$1" pin="E"/>
<pinref part="P+56" gate="VCC" pin="VCC"/>
<wire x1="238.76" y1="-27.94" x2="236.22" y2="-27.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$44" gate="G$1" pin="E"/>
<pinref part="P+57" gate="VCC" pin="VCC"/>
<wire x1="246.38" y1="-35.56" x2="243.84" y2="-35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$45" gate="G$1" pin="E"/>
<pinref part="P+58" gate="VCC" pin="VCC"/>
<wire x1="259.08" y1="-15.24" x2="256.54" y2="-15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$46" gate="G$1" pin="E"/>
<pinref part="P+59" gate="VCC" pin="VCC"/>
<wire x1="281.94" y1="-17.78" x2="279.4" y2="-17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$47" gate="G$1" pin="E"/>
<pinref part="P+60" gate="VCC" pin="VCC"/>
<wire x1="271.78" y1="-35.56" x2="269.24" y2="-35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$48" gate="G$1" pin="E"/>
<pinref part="P+61" gate="VCC" pin="VCC"/>
<wire x1="292.1" y1="-38.1" x2="289.56" y2="-38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$49" gate="G$1" pin="E"/>
<pinref part="P+62" gate="VCC" pin="VCC"/>
<wire x1="299.72" y1="-40.64" x2="299.72" y2="-43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$50" gate="G$1" pin="E"/>
<pinref part="P+63" gate="VCC" pin="VCC"/>
<wire x1="231.14" y1="-58.42" x2="228.6" y2="-58.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$51" gate="G$1" pin="E"/>
<pinref part="P+64" gate="VCC" pin="VCC"/>
<wire x1="238.76" y1="-66.04" x2="236.22" y2="-66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$52" gate="G$1" pin="E"/>
<pinref part="P+65" gate="VCC" pin="VCC"/>
<wire x1="246.38" y1="-73.66" x2="243.84" y2="-73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$53" gate="G$1" pin="E"/>
<pinref part="P+66" gate="VCC" pin="VCC"/>
<wire x1="259.08" y1="-53.34" x2="256.54" y2="-53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$54" gate="G$1" pin="E"/>
<pinref part="P+67" gate="VCC" pin="VCC"/>
<wire x1="281.94" y1="-55.88" x2="279.4" y2="-55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$55" gate="G$1" pin="E"/>
<pinref part="P+68" gate="VCC" pin="VCC"/>
<wire x1="271.78" y1="-73.66" x2="269.24" y2="-73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$56" gate="G$1" pin="E"/>
<pinref part="P+69" gate="VCC" pin="VCC"/>
<wire x1="292.1" y1="-76.2" x2="289.56" y2="-76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$57" gate="G$1" pin="E"/>
<pinref part="P+70" gate="VCC" pin="VCC"/>
<wire x1="299.72" y1="-78.74" x2="299.72" y2="-81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$58" gate="G$1" pin="E"/>
<pinref part="P+71" gate="VCC" pin="VCC"/>
<wire x1="231.14" y1="-96.52" x2="228.6" y2="-96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$59" gate="G$1" pin="E"/>
<pinref part="P+72" gate="VCC" pin="VCC"/>
<wire x1="238.76" y1="-104.14" x2="236.22" y2="-104.14" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$60" gate="G$1" pin="E"/>
<pinref part="P+73" gate="VCC" pin="VCC"/>
<wire x1="246.38" y1="-111.76" x2="243.84" y2="-111.76" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$61" gate="G$1" pin="E"/>
<pinref part="P+74" gate="VCC" pin="VCC"/>
<wire x1="259.08" y1="-91.44" x2="256.54" y2="-91.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$62" gate="G$1" pin="E"/>
<pinref part="P+75" gate="VCC" pin="VCC"/>
<wire x1="281.94" y1="-93.98" x2="279.4" y2="-93.98" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$63" gate="G$1" pin="E"/>
<pinref part="P+76" gate="VCC" pin="VCC"/>
<wire x1="271.78" y1="-111.76" x2="269.24" y2="-111.76" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$64" gate="G$1" pin="E"/>
<pinref part="P+77" gate="VCC" pin="VCC"/>
<wire x1="292.1" y1="-114.3" x2="289.56" y2="-114.3" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$65" gate="G$1" pin="E"/>
<pinref part="P+78" gate="VCC" pin="VCC"/>
<wire x1="299.72" y1="-116.84" x2="299.72" y2="-119.38" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+79" gate="VCC" pin="VCC"/>
<pinref part="JP1" gate="G$1" pin="VCC"/>
<wire x1="132.08" y1="-71.12" x2="132.08" y2="-68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="-2.54" y1="78.74" x2="-7.62" y2="78.74" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="1"/>
<pinref part="IC14" gate="G$1" pin="AREF"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<wire x1="-2.54" y1="88.9" x2="-7.62" y2="88.9" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="88.9" x2="-12.7" y2="88.9" width="0.1524" layer="91"/>
<junction x="-7.62" y="88.9"/>
<pinref part="Q1" gate="G$1" pin="2"/>
<pinref part="C5" gate="G$1" pin="2"/>
<pinref part="IC14" gate="G$1" pin="XTAL2"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<wire x1="-12.7" y1="83.82" x2="-7.62" y2="83.82" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="83.82" x2="-2.54" y2="83.82" width="0.1524" layer="91"/>
<junction x="-7.62" y="83.82"/>
<pinref part="C4" gate="G$1" pin="2"/>
<pinref part="Q1" gate="G$1" pin="1"/>
<pinref part="IC14" gate="G$1" pin="XTAL1"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<wire x1="175.26" y1="88.9" x2="152.4" y2="88.9" width="0.1524" layer="91"/>
<wire x1="152.4" y1="88.9" x2="91.44" y2="88.9" width="0.1524" layer="91"/>
<wire x1="91.44" y1="88.9" x2="91.44" y2="78.74" width="0.1524" layer="91"/>
<wire x1="91.44" y1="78.74" x2="38.1" y2="78.74" width="0.1524" layer="91"/>
<wire x1="175.26" y1="127" x2="152.4" y2="127" width="0.1524" layer="91"/>
<wire x1="152.4" y1="127" x2="152.4" y2="88.9" width="0.1524" layer="91"/>
<wire x1="175.26" y1="50.8" x2="152.4" y2="50.8" width="0.1524" layer="91"/>
<wire x1="152.4" y1="50.8" x2="152.4" y2="88.9" width="0.1524" layer="91"/>
<wire x1="175.26" y1="12.7" x2="152.4" y2="12.7" width="0.1524" layer="91"/>
<wire x1="152.4" y1="12.7" x2="152.4" y2="50.8" width="0.1524" layer="91"/>
<wire x1="175.26" y1="165.1" x2="152.4" y2="165.1" width="0.1524" layer="91"/>
<wire x1="152.4" y1="165.1" x2="152.4" y2="127" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-25.4" x2="152.4" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="152.4" y1="-25.4" x2="152.4" y2="12.7" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-63.5" x2="152.4" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="152.4" y1="-63.5" x2="152.4" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-101.6" x2="152.4" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="152.4" y1="-101.6" x2="152.4" y2="-63.5" width="0.1524" layer="91"/>
<junction x="152.4" y="88.9"/>
<junction x="152.4" y="50.8"/>
<junction x="152.4" y="127"/>
<junction x="152.4" y="12.7"/>
<junction x="152.4" y="-25.4"/>
<junction x="152.4" y="-63.5"/>
<pinref part="IC3" gate="A" pin="1D"/>
<pinref part="IC2" gate="A" pin="1D"/>
<pinref part="IC4" gate="A" pin="1D"/>
<pinref part="IC5" gate="A" pin="1D"/>
<pinref part="IC7" gate="A" pin="1D"/>
<pinref part="IC6" gate="A" pin="1D"/>
<pinref part="IC8" gate="A" pin="1D"/>
<pinref part="IC9" gate="A" pin="1D"/>
<pinref part="IC14" gate="G$1" pin="(ADC0)PA0"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<wire x1="175.26" y1="86.36" x2="154.94" y2="86.36" width="0.1524" layer="91"/>
<wire x1="154.94" y1="86.36" x2="93.98" y2="86.36" width="0.1524" layer="91"/>
<wire x1="93.98" y1="86.36" x2="93.98" y2="81.28" width="0.1524" layer="91"/>
<wire x1="93.98" y1="81.28" x2="38.1" y2="81.28" width="0.1524" layer="91"/>
<wire x1="175.26" y1="124.46" x2="154.94" y2="124.46" width="0.1524" layer="91"/>
<wire x1="154.94" y1="124.46" x2="154.94" y2="86.36" width="0.1524" layer="91"/>
<wire x1="175.26" y1="48.26" x2="154.94" y2="48.26" width="0.1524" layer="91"/>
<wire x1="154.94" y1="48.26" x2="154.94" y2="86.36" width="0.1524" layer="91"/>
<wire x1="154.94" y1="48.26" x2="154.94" y2="10.16" width="0.1524" layer="91"/>
<wire x1="154.94" y1="10.16" x2="175.26" y2="10.16" width="0.1524" layer="91"/>
<wire x1="154.94" y1="124.46" x2="154.94" y2="162.56" width="0.1524" layer="91"/>
<wire x1="154.94" y1="162.56" x2="175.26" y2="162.56" width="0.1524" layer="91"/>
<wire x1="154.94" y1="10.16" x2="154.94" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="154.94" y1="-27.94" x2="175.26" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-66.04" x2="154.94" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="154.94" y1="-66.04" x2="154.94" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-104.14" x2="154.94" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="154.94" y1="-104.14" x2="154.94" y2="-66.04" width="0.1524" layer="91"/>
<junction x="154.94" y="86.36"/>
<junction x="154.94" y="48.26"/>
<junction x="154.94" y="124.46"/>
<junction x="154.94" y="10.16"/>
<junction x="154.94" y="-27.94"/>
<junction x="154.94" y="-66.04"/>
<pinref part="IC3" gate="A" pin="2D"/>
<pinref part="IC2" gate="A" pin="2D"/>
<pinref part="IC4" gate="A" pin="2D"/>
<pinref part="IC5" gate="A" pin="2D"/>
<pinref part="IC7" gate="A" pin="2D"/>
<pinref part="IC6" gate="A" pin="2D"/>
<pinref part="IC8" gate="A" pin="2D"/>
<pinref part="IC9" gate="A" pin="2D"/>
<pinref part="IC14" gate="G$1" pin="(ADC1)PA1"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<wire x1="175.26" y1="83.82" x2="157.48" y2="83.82" width="0.1524" layer="91"/>
<wire x1="157.48" y1="83.82" x2="38.1" y2="83.82" width="0.1524" layer="91"/>
<wire x1="175.26" y1="121.92" x2="157.48" y2="121.92" width="0.1524" layer="91"/>
<wire x1="157.48" y1="121.92" x2="157.48" y2="83.82" width="0.1524" layer="91"/>
<wire x1="175.26" y1="45.72" x2="157.48" y2="45.72" width="0.1524" layer="91"/>
<wire x1="157.48" y1="45.72" x2="157.48" y2="83.82" width="0.1524" layer="91"/>
<wire x1="175.26" y1="7.62" x2="157.48" y2="7.62" width="0.1524" layer="91"/>
<wire x1="157.48" y1="7.62" x2="157.48" y2="45.72" width="0.1524" layer="91"/>
<wire x1="175.26" y1="160.02" x2="157.48" y2="160.02" width="0.1524" layer="91"/>
<wire x1="157.48" y1="160.02" x2="157.48" y2="121.92" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-30.48" x2="157.48" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="157.48" y1="-30.48" x2="157.48" y2="7.62" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-68.58" x2="157.48" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="157.48" y1="-68.58" x2="157.48" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-106.68" x2="157.48" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="157.48" y1="-106.68" x2="157.48" y2="-68.58" width="0.1524" layer="91"/>
<junction x="157.48" y="83.82"/>
<junction x="157.48" y="45.72"/>
<junction x="157.48" y="121.92"/>
<junction x="157.48" y="7.62"/>
<junction x="157.48" y="-30.48"/>
<junction x="157.48" y="-68.58"/>
<pinref part="IC3" gate="A" pin="3D"/>
<pinref part="IC2" gate="A" pin="3D"/>
<pinref part="IC4" gate="A" pin="3D"/>
<pinref part="IC5" gate="A" pin="3D"/>
<pinref part="IC7" gate="A" pin="3D"/>
<pinref part="IC6" gate="A" pin="3D"/>
<pinref part="IC8" gate="A" pin="3D"/>
<pinref part="IC9" gate="A" pin="3D"/>
<pinref part="IC14" gate="G$1" pin="(ADC2)PA2"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<wire x1="38.1" y1="86.36" x2="88.9" y2="86.36" width="0.1524" layer="91"/>
<wire x1="88.9" y1="86.36" x2="88.9" y2="76.2" width="0.1524" layer="91"/>
<wire x1="88.9" y1="76.2" x2="96.52" y2="76.2" width="0.1524" layer="91"/>
<wire x1="96.52" y1="76.2" x2="96.52" y2="81.28" width="0.1524" layer="91"/>
<wire x1="96.52" y1="81.28" x2="160.02" y2="81.28" width="0.1524" layer="91"/>
<wire x1="160.02" y1="81.28" x2="175.26" y2="81.28" width="0.1524" layer="91"/>
<wire x1="175.26" y1="119.38" x2="160.02" y2="119.38" width="0.1524" layer="91"/>
<wire x1="160.02" y1="119.38" x2="160.02" y2="81.28" width="0.1524" layer="91"/>
<wire x1="175.26" y1="43.18" x2="160.02" y2="43.18" width="0.1524" layer="91"/>
<wire x1="160.02" y1="43.18" x2="160.02" y2="81.28" width="0.1524" layer="91"/>
<wire x1="175.26" y1="5.08" x2="160.02" y2="5.08" width="0.1524" layer="91"/>
<wire x1="160.02" y1="5.08" x2="160.02" y2="43.18" width="0.1524" layer="91"/>
<wire x1="175.26" y1="157.48" x2="160.02" y2="157.48" width="0.1524" layer="91"/>
<wire x1="160.02" y1="157.48" x2="160.02" y2="119.38" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-33.02" x2="160.02" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="160.02" y1="-33.02" x2="160.02" y2="5.08" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-71.12" x2="160.02" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="160.02" y1="-71.12" x2="160.02" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-109.22" x2="160.02" y2="-109.22" width="0.1524" layer="91"/>
<wire x1="160.02" y1="-109.22" x2="160.02" y2="-71.12" width="0.1524" layer="91"/>
<junction x="160.02" y="81.28"/>
<junction x="160.02" y="43.18"/>
<junction x="160.02" y="119.38"/>
<junction x="160.02" y="5.08"/>
<junction x="160.02" y="-33.02"/>
<junction x="160.02" y="-71.12"/>
<pinref part="IC3" gate="A" pin="4D"/>
<pinref part="IC2" gate="A" pin="4D"/>
<pinref part="IC4" gate="A" pin="4D"/>
<pinref part="IC5" gate="A" pin="4D"/>
<pinref part="IC7" gate="A" pin="4D"/>
<pinref part="IC6" gate="A" pin="4D"/>
<pinref part="IC8" gate="A" pin="4D"/>
<pinref part="IC9" gate="A" pin="4D"/>
<pinref part="IC14" gate="G$1" pin="(ADC3)PA3"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<wire x1="175.26" y1="78.74" x2="162.56" y2="78.74" width="0.1524" layer="91"/>
<wire x1="162.56" y1="78.74" x2="99.06" y2="78.74" width="0.1524" layer="91"/>
<wire x1="99.06" y1="78.74" x2="99.06" y2="91.44" width="0.1524" layer="91"/>
<wire x1="99.06" y1="91.44" x2="88.9" y2="91.44" width="0.1524" layer="91"/>
<wire x1="88.9" y1="91.44" x2="88.9" y2="88.9" width="0.1524" layer="91"/>
<wire x1="88.9" y1="88.9" x2="38.1" y2="88.9" width="0.1524" layer="91"/>
<wire x1="175.26" y1="116.84" x2="162.56" y2="116.84" width="0.1524" layer="91"/>
<wire x1="162.56" y1="116.84" x2="162.56" y2="78.74" width="0.1524" layer="91"/>
<wire x1="175.26" y1="40.64" x2="162.56" y2="40.64" width="0.1524" layer="91"/>
<wire x1="162.56" y1="40.64" x2="162.56" y2="78.74" width="0.1524" layer="91"/>
<wire x1="175.26" y1="2.54" x2="162.56" y2="2.54" width="0.1524" layer="91"/>
<wire x1="162.56" y1="2.54" x2="162.56" y2="40.64" width="0.1524" layer="91"/>
<wire x1="175.26" y1="154.94" x2="162.56" y2="154.94" width="0.1524" layer="91"/>
<wire x1="162.56" y1="154.94" x2="162.56" y2="116.84" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-35.56" x2="162.56" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="162.56" y1="-35.56" x2="162.56" y2="2.54" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-73.66" x2="162.56" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="162.56" y1="-73.66" x2="162.56" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-111.76" x2="162.56" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="162.56" y1="-111.76" x2="162.56" y2="-73.66" width="0.1524" layer="91"/>
<junction x="162.56" y="78.74"/>
<junction x="162.56" y="40.64"/>
<junction x="162.56" y="116.84"/>
<junction x="162.56" y="2.54"/>
<junction x="162.56" y="-35.56"/>
<junction x="162.56" y="-73.66"/>
<pinref part="IC3" gate="A" pin="5D"/>
<pinref part="IC2" gate="A" pin="5D"/>
<pinref part="IC4" gate="A" pin="5D"/>
<pinref part="IC5" gate="A" pin="5D"/>
<pinref part="IC7" gate="A" pin="5D"/>
<pinref part="IC6" gate="A" pin="5D"/>
<pinref part="IC8" gate="A" pin="5D"/>
<pinref part="IC9" gate="A" pin="5D"/>
<pinref part="IC14" gate="G$1" pin="(ADC4)PA4"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<wire x1="38.1" y1="91.44" x2="86.36" y2="91.44" width="0.1524" layer="91"/>
<wire x1="86.36" y1="91.44" x2="86.36" y2="93.98" width="0.1524" layer="91"/>
<wire x1="86.36" y1="93.98" x2="101.6" y2="93.98" width="0.1524" layer="91"/>
<wire x1="101.6" y1="93.98" x2="101.6" y2="76.2" width="0.1524" layer="91"/>
<wire x1="101.6" y1="76.2" x2="165.1" y2="76.2" width="0.1524" layer="91"/>
<wire x1="165.1" y1="76.2" x2="175.26" y2="76.2" width="0.1524" layer="91"/>
<wire x1="175.26" y1="114.3" x2="165.1" y2="114.3" width="0.1524" layer="91"/>
<wire x1="165.1" y1="114.3" x2="165.1" y2="76.2" width="0.1524" layer="91"/>
<wire x1="175.26" y1="38.1" x2="165.1" y2="38.1" width="0.1524" layer="91"/>
<wire x1="165.1" y1="38.1" x2="165.1" y2="76.2" width="0.1524" layer="91"/>
<wire x1="175.26" y1="0" x2="165.1" y2="0" width="0.1524" layer="91"/>
<wire x1="165.1" y1="0" x2="165.1" y2="38.1" width="0.1524" layer="91"/>
<wire x1="175.26" y1="152.4" x2="165.1" y2="152.4" width="0.1524" layer="91"/>
<wire x1="165.1" y1="152.4" x2="165.1" y2="114.3" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-38.1" x2="165.1" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="165.1" y1="-38.1" x2="165.1" y2="0" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-76.2" x2="165.1" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="165.1" y1="-76.2" x2="165.1" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-114.3" x2="165.1" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="165.1" y1="-114.3" x2="165.1" y2="-76.2" width="0.1524" layer="91"/>
<junction x="165.1" y="76.2"/>
<junction x="165.1" y="38.1"/>
<junction x="165.1" y="114.3"/>
<junction x="165.1" y="0"/>
<junction x="165.1" y="-38.1"/>
<junction x="165.1" y="-76.2"/>
<pinref part="IC3" gate="A" pin="6D"/>
<pinref part="IC2" gate="A" pin="6D"/>
<pinref part="IC4" gate="A" pin="6D"/>
<pinref part="IC5" gate="A" pin="6D"/>
<pinref part="IC7" gate="A" pin="6D"/>
<pinref part="IC6" gate="A" pin="6D"/>
<pinref part="IC8" gate="A" pin="6D"/>
<pinref part="IC9" gate="A" pin="6D"/>
<pinref part="IC14" gate="G$1" pin="(ADC5)PA5"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<wire x1="175.26" y1="73.66" x2="167.64" y2="73.66" width="0.1524" layer="91"/>
<wire x1="167.64" y1="73.66" x2="83.82" y2="73.66" width="0.1524" layer="91"/>
<wire x1="83.82" y1="73.66" x2="83.82" y2="93.98" width="0.1524" layer="91"/>
<wire x1="83.82" y1="93.98" x2="38.1" y2="93.98" width="0.1524" layer="91"/>
<wire x1="175.26" y1="111.76" x2="167.64" y2="111.76" width="0.1524" layer="91"/>
<wire x1="167.64" y1="111.76" x2="167.64" y2="73.66" width="0.1524" layer="91"/>
<wire x1="175.26" y1="35.56" x2="167.64" y2="35.56" width="0.1524" layer="91"/>
<wire x1="167.64" y1="35.56" x2="167.64" y2="73.66" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-2.54" x2="167.64" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="167.64" y1="-2.54" x2="167.64" y2="35.56" width="0.1524" layer="91"/>
<wire x1="175.26" y1="149.86" x2="167.64" y2="149.86" width="0.1524" layer="91"/>
<wire x1="167.64" y1="149.86" x2="167.64" y2="111.76" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-40.64" x2="167.64" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="167.64" y1="-40.64" x2="167.64" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-78.74" x2="167.64" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="167.64" y1="-78.74" x2="167.64" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-116.84" x2="167.64" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="167.64" y1="-116.84" x2="167.64" y2="-78.74" width="0.1524" layer="91"/>
<junction x="167.64" y="73.66"/>
<junction x="167.64" y="35.56"/>
<junction x="167.64" y="111.76"/>
<junction x="167.64" y="-2.54"/>
<junction x="167.64" y="-40.64"/>
<junction x="167.64" y="-78.74"/>
<pinref part="IC3" gate="A" pin="7D"/>
<pinref part="IC2" gate="A" pin="7D"/>
<pinref part="IC4" gate="A" pin="7D"/>
<pinref part="IC5" gate="A" pin="7D"/>
<pinref part="IC7" gate="A" pin="7D"/>
<pinref part="IC6" gate="A" pin="7D"/>
<pinref part="IC8" gate="A" pin="7D"/>
<pinref part="IC9" gate="A" pin="7D"/>
<pinref part="IC14" gate="G$1" pin="(ADC6)PA6"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<wire x1="38.1" y1="96.52" x2="104.14" y2="96.52" width="0.1524" layer="91"/>
<wire x1="104.14" y1="96.52" x2="104.14" y2="71.12" width="0.1524" layer="91"/>
<wire x1="104.14" y1="71.12" x2="170.18" y2="71.12" width="0.1524" layer="91"/>
<wire x1="170.18" y1="71.12" x2="175.26" y2="71.12" width="0.1524" layer="91"/>
<wire x1="175.26" y1="109.22" x2="170.18" y2="109.22" width="0.1524" layer="91"/>
<wire x1="170.18" y1="109.22" x2="170.18" y2="71.12" width="0.1524" layer="91"/>
<wire x1="175.26" y1="33.02" x2="170.18" y2="33.02" width="0.1524" layer="91"/>
<wire x1="170.18" y1="33.02" x2="170.18" y2="71.12" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-5.08" x2="170.18" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="170.18" y1="-5.08" x2="170.18" y2="33.02" width="0.1524" layer="91"/>
<wire x1="175.26" y1="147.32" x2="170.18" y2="147.32" width="0.1524" layer="91"/>
<wire x1="170.18" y1="147.32" x2="170.18" y2="109.22" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-43.18" x2="170.18" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="170.18" y1="-43.18" x2="170.18" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-81.28" x2="170.18" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="170.18" y1="-81.28" x2="170.18" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-119.38" x2="170.18" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="170.18" y1="-119.38" x2="170.18" y2="-81.28" width="0.1524" layer="91"/>
<junction x="170.18" y="71.12"/>
<junction x="170.18" y="33.02"/>
<junction x="170.18" y="109.22"/>
<junction x="170.18" y="-5.08"/>
<junction x="170.18" y="-43.18"/>
<junction x="170.18" y="-81.28"/>
<pinref part="IC3" gate="A" pin="8D"/>
<pinref part="IC2" gate="A" pin="8D"/>
<pinref part="IC4" gate="A" pin="8D"/>
<pinref part="IC5" gate="A" pin="8D"/>
<pinref part="IC7" gate="A" pin="8D"/>
<pinref part="IC6" gate="A" pin="8D"/>
<pinref part="IC8" gate="A" pin="8D"/>
<pinref part="IC9" gate="A" pin="8D"/>
<pinref part="IC14" gate="G$1" pin="(ADC7)PA7"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<wire x1="175.26" y1="-124.46" x2="142.24" y2="-124.46" width="0.1524" layer="91"/>
<wire x1="142.24" y1="-124.46" x2="142.24" y2="33.02" width="0.1524" layer="91"/>
<wire x1="142.24" y1="33.02" x2="43.18" y2="33.02" width="0.1524" layer="91"/>
<wire x1="43.18" y1="33.02" x2="43.18" y2="58.42" width="0.1524" layer="91"/>
<wire x1="43.18" y1="58.42" x2="38.1" y2="58.42" width="0.1524" layer="91"/>
<pinref part="IC9" gate="A" pin="C"/>
<pinref part="IC14" gate="G$1" pin="(T1)PB1"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<wire x1="175.26" y1="-86.36" x2="139.7" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="139.7" y1="-86.36" x2="139.7" y2="35.56" width="0.1524" layer="91"/>
<wire x1="139.7" y1="35.56" x2="45.72" y2="35.56" width="0.1524" layer="91"/>
<wire x1="45.72" y1="35.56" x2="45.72" y2="60.96" width="0.1524" layer="91"/>
<wire x1="45.72" y1="60.96" x2="38.1" y2="60.96" width="0.1524" layer="91"/>
<pinref part="IC8" gate="A" pin="C"/>
<pinref part="IC14" gate="G$1" pin="(AIN0/INT2)PB2"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<wire x1="175.26" y1="-48.26" x2="137.16" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="137.16" y1="-48.26" x2="137.16" y2="38.1" width="0.1524" layer="91"/>
<wire x1="137.16" y1="38.1" x2="38.1" y2="38.1" width="0.1524" layer="91"/>
<pinref part="IC6" gate="A" pin="C"/>
<pinref part="IC14" gate="G$1" pin="(TCK)PC2"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<wire x1="175.26" y1="-10.16" x2="134.62" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="134.62" y1="-10.16" x2="134.62" y2="40.64" width="0.1524" layer="91"/>
<wire x1="134.62" y1="40.64" x2="38.1" y2="40.64" width="0.1524" layer="91"/>
<pinref part="IC5" gate="A" pin="C"/>
<pinref part="IC14" gate="G$1" pin="(TMS)PC3"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<wire x1="175.26" y1="27.94" x2="132.08" y2="27.94" width="0.1524" layer="91"/>
<wire x1="132.08" y1="27.94" x2="132.08" y2="43.18" width="0.1524" layer="91"/>
<wire x1="132.08" y1="43.18" x2="38.1" y2="43.18" width="0.1524" layer="91"/>
<pinref part="IC4" gate="A" pin="C"/>
<pinref part="IC14" gate="G$1" pin="(TDO)PC4"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<wire x1="175.26" y1="66.04" x2="129.54" y2="66.04" width="0.1524" layer="91"/>
<wire x1="129.54" y1="66.04" x2="129.54" y2="45.72" width="0.1524" layer="91"/>
<wire x1="129.54" y1="45.72" x2="38.1" y2="45.72" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="C"/>
<pinref part="IC14" gate="G$1" pin="(TDI)PC5"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<wire x1="175.26" y1="104.14" x2="127" y2="104.14" width="0.1524" layer="91"/>
<wire x1="127" y1="104.14" x2="127" y2="48.26" width="0.1524" layer="91"/>
<wire x1="127" y1="48.26" x2="38.1" y2="48.26" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="C"/>
<pinref part="IC14" gate="G$1" pin="(TOSC1)PC6"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<wire x1="38.1" y1="50.8" x2="124.46" y2="50.8" width="0.1524" layer="91"/>
<wire x1="124.46" y1="50.8" x2="124.46" y2="142.24" width="0.1524" layer="91"/>
<wire x1="124.46" y1="142.24" x2="175.26" y2="142.24" width="0.1524" layer="91"/>
<pinref part="IC7" gate="A" pin="C"/>
<pinref part="IC14" gate="G$1" pin="(TOSC2)PC7"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<wire x1="86.36" y1="20.32" x2="83.82" y2="20.32" width="0.1524" layer="91"/>
<pinref part="Q2" gate="G$1" pin="G"/>
<pinref part="R2" gate="G$1" pin="2"/>
<pinref part="R23" gate="G$1" pin="1"/>
<wire x1="83.82" y1="20.32" x2="81.28" y2="20.32" width="0.1524" layer="91"/>
<wire x1="83.82" y1="17.78" x2="83.82" y2="20.32" width="0.1524" layer="91"/>
<junction x="83.82" y="20.32"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<wire x1="71.12" y1="20.32" x2="66.04" y2="20.32" width="0.1524" layer="91"/>
<wire x1="66.04" y1="20.32" x2="66.04" y2="27.94" width="0.1524" layer="91"/>
<wire x1="66.04" y1="27.94" x2="38.1" y2="27.94" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="1"/>
<pinref part="IC14" gate="G$1" pin="(OC2)PD7"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<wire x1="38.1" y1="25.4" x2="63.5" y2="25.4" width="0.1524" layer="91"/>
<wire x1="63.5" y1="25.4" x2="63.5" y2="10.16" width="0.1524" layer="91"/>
<wire x1="63.5" y1="10.16" x2="71.12" y2="10.16" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="1"/>
<pinref part="IC14" gate="G$1" pin="(ICP)PD6"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<wire x1="38.1" y1="22.86" x2="60.96" y2="22.86" width="0.1524" layer="91"/>
<wire x1="60.96" y1="22.86" x2="60.96" y2="0" width="0.1524" layer="91"/>
<wire x1="60.96" y1="0" x2="71.12" y2="0" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="1"/>
<pinref part="IC14" gate="G$1" pin="(OC1A)PD5"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<wire x1="38.1" y1="20.32" x2="58.42" y2="20.32" width="0.1524" layer="91"/>
<wire x1="58.42" y1="20.32" x2="58.42" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="58.42" y1="-10.16" x2="71.12" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="1"/>
<pinref part="IC14" gate="G$1" pin="(OC1B)PD4"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<wire x1="38.1" y1="17.78" x2="55.88" y2="17.78" width="0.1524" layer="91"/>
<wire x1="55.88" y1="17.78" x2="55.88" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="55.88" y1="-20.32" x2="71.12" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="1"/>
<pinref part="IC14" gate="G$1" pin="(INT1)PD3"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<wire x1="38.1" y1="15.24" x2="53.34" y2="15.24" width="0.1524" layer="91"/>
<wire x1="53.34" y1="15.24" x2="53.34" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="53.34" y1="-30.48" x2="71.12" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="R7" gate="G$1" pin="1"/>
<pinref part="IC14" gate="G$1" pin="(INT0)PD2"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<wire x1="86.36" y1="10.16" x2="83.82" y2="10.16" width="0.1524" layer="91"/>
<pinref part="Q3" gate="G$1" pin="G"/>
<pinref part="R3" gate="G$1" pin="2"/>
<pinref part="R24" gate="G$1" pin="1"/>
<wire x1="83.82" y1="10.16" x2="81.28" y2="10.16" width="0.1524" layer="91"/>
<wire x1="83.82" y1="7.62" x2="83.82" y2="10.16" width="0.1524" layer="91"/>
<junction x="83.82" y="10.16"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<wire x1="81.28" y1="0" x2="83.82" y2="0" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="2"/>
<pinref part="Q4" gate="G$1" pin="G"/>
<pinref part="R25" gate="G$1" pin="1"/>
<wire x1="83.82" y1="0" x2="86.36" y2="0" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-2.54" x2="83.82" y2="0" width="0.1524" layer="91"/>
<junction x="83.82" y="0"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<wire x1="86.36" y1="-10.16" x2="83.82" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="Q5" gate="G$1" pin="G"/>
<pinref part="R5" gate="G$1" pin="2"/>
<pinref part="R26" gate="G$1" pin="1"/>
<wire x1="83.82" y1="-10.16" x2="81.28" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-12.7" x2="83.82" y2="-10.16" width="0.1524" layer="91"/>
<junction x="83.82" y="-10.16"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<wire x1="81.28" y1="-20.32" x2="83.82" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="2"/>
<pinref part="Q6" gate="G$1" pin="G"/>
<pinref part="R27" gate="G$1" pin="1"/>
<wire x1="83.82" y1="-20.32" x2="86.36" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-22.86" x2="83.82" y2="-20.32" width="0.1524" layer="91"/>
<junction x="83.82" y="-20.32"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<wire x1="86.36" y1="-30.48" x2="83.82" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="Q7" gate="G$1" pin="G"/>
<pinref part="R7" gate="G$1" pin="2"/>
<pinref part="R28" gate="G$1" pin="1"/>
<wire x1="83.82" y1="-30.48" x2="81.28" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-33.02" x2="83.82" y2="-30.48" width="0.1524" layer="91"/>
<junction x="83.82" y="-30.48"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<wire x1="81.28" y1="-40.64" x2="83.82" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="R8" gate="G$1" pin="2"/>
<pinref part="Q8" gate="G$1" pin="G"/>
<pinref part="R29" gate="G$1" pin="1"/>
<wire x1="83.82" y1="-40.64" x2="86.36" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-43.18" x2="83.82" y2="-40.64" width="0.1524" layer="91"/>
<junction x="83.82" y="-40.64"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<wire x1="86.36" y1="-50.8" x2="83.82" y2="-50.8" width="0.1524" layer="91"/>
<pinref part="Q9" gate="G$1" pin="G"/>
<pinref part="R9" gate="G$1" pin="2"/>
<pinref part="R30" gate="G$1" pin="1"/>
<wire x1="83.82" y1="-50.8" x2="81.28" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-53.34" x2="83.82" y2="-50.8" width="0.1524" layer="91"/>
<junction x="83.82" y="-50.8"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<wire x1="116.84" y1="15.24" x2="96.52" y2="15.24" width="0.1524" layer="91"/>
<pinref part="Q3" gate="G$1" pin="D"/>
<pinref part="JP1" gate="G$1" pin="P1"/>
<wire x1="116.84" y1="15.24" x2="116.84" y2="-50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<wire x1="124.46" y1="-15.24" x2="96.52" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="Q6" gate="G$1" pin="D"/>
<pinref part="JP1" gate="G$1" pin="P4"/>
<wire x1="124.46" y1="-15.24" x2="124.46" y2="-50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<wire x1="96.52" y1="-25.4" x2="127" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="Q7" gate="G$1" pin="D"/>
<pinref part="JP1" gate="G$1" pin="P5"/>
<wire x1="127" y1="-25.4" x2="127" y2="-50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<wire x1="129.54" y1="-35.56" x2="96.52" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="Q8" gate="G$1" pin="D"/>
<pinref part="JP1" gate="G$1" pin="P6"/>
<wire x1="129.54" y1="-50.8" x2="129.54" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<wire x1="132.08" y1="-45.72" x2="96.52" y2="-45.72" width="0.1524" layer="91"/>
<pinref part="Q9" gate="G$1" pin="D"/>
<pinref part="JP1" gate="G$1" pin="P7"/>
<wire x1="132.08" y1="-45.72" x2="132.08" y2="-50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<wire x1="60.96" y1="66.04" x2="58.42" y2="66.04" width="0.1524" layer="91"/>
<wire x1="58.42" y1="66.04" x2="58.42" y2="73.66" width="0.1524" layer="91"/>
<wire x1="58.42" y1="73.66" x2="38.1" y2="73.66" width="0.1524" layer="91"/>
<pinref part="JP3" gate="G$1" pin="SCK"/>
<pinref part="IC14" gate="G$1" pin="(SCK)PB7"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<wire x1="60.96" y1="63.5" x2="55.88" y2="63.5" width="0.1524" layer="91"/>
<wire x1="55.88" y1="63.5" x2="55.88" y2="71.12" width="0.1524" layer="91"/>
<wire x1="55.88" y1="71.12" x2="38.1" y2="71.12" width="0.1524" layer="91"/>
<pinref part="JP3" gate="G$1" pin="MISO"/>
<pinref part="IC14" gate="G$1" pin="(MISO)PB6"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<wire x1="53.34" y1="68.58" x2="38.1" y2="68.58" width="0.1524" layer="91"/>
<wire x1="60.96" y1="60.96" x2="53.34" y2="60.96" width="0.1524" layer="91"/>
<wire x1="53.34" y1="60.96" x2="53.34" y2="68.58" width="0.1524" layer="91"/>
<pinref part="JP3" gate="G$1" pin="MOSI"/>
<pinref part="IC14" gate="G$1" pin="(MOSI)PB5"/>
</segment>
</net>
<net name="N$52" class="0">
<segment>
<wire x1="-58.42" y1="43.18" x2="-60.96" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="43.18" x2="-60.96" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="45.72" x2="-63.5" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="43.18" x2="-60.96" y2="40.64" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="40.64" x2="-63.5" y2="40.64" width="0.1524" layer="91"/>
<junction x="-60.96" y="43.18"/>
<pinref part="IC10" gate="1" pin="!RESET"/>
<pinref part="R10" gate="G$1" pin="1"/>
<pinref part="R11" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$54" class="0">
<segment>
<wire x1="-58.42" y1="17.78" x2="-93.98" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-93.98" y1="17.78" x2="-93.98" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-93.98" y1="27.94" x2="-106.68" y2="27.94" width="0.1524" layer="91"/>
<pinref part="IC10" gate="1" pin="USBDP"/>
<pinref part="X2" gate="-CON" pin="3"/>
</segment>
</net>
<net name="N$55" class="0">
<segment>
<wire x1="-58.42" y1="22.86" x2="-60.96" y2="22.86" width="0.1524" layer="91"/>
<pinref part="IC10" gate="1" pin="3V3OUT"/>
<pinref part="C6" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$56" class="0">
<segment>
<wire x1="-58.42" y1="15.24" x2="-96.52" y2="15.24" width="0.1524" layer="91"/>
<wire x1="-96.52" y1="15.24" x2="-96.52" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-96.52" y1="25.4" x2="-106.68" y2="25.4" width="0.1524" layer="91"/>
<pinref part="IC10" gate="1" pin="USBDM"/>
<pinref part="X2" gate="-CON" pin="2"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<wire x1="-73.66" y1="40.64" x2="-73.66" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="27.94" x2="-91.44" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-91.44" y1="27.94" x2="-91.44" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-91.44" y1="22.86" x2="-106.68" y2="22.86" width="0.1524" layer="91"/>
<pinref part="R11" gate="G$1" pin="2"/>
<pinref part="X2" gate="-CON" pin="1"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<wire x1="38.1" y1="66.04" x2="50.8" y2="66.04" width="0.1524" layer="91"/>
<wire x1="50.8" y1="66.04" x2="50.8" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="50.8" y1="-40.64" x2="71.12" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="R8" gate="G$1" pin="1"/>
<pinref part="IC14" gate="G$1" pin="(SS)PB4"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<wire x1="71.12" y1="-50.8" x2="48.26" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="48.26" y1="-50.8" x2="48.26" y2="63.5" width="0.1524" layer="91"/>
<wire x1="48.26" y1="63.5" x2="38.1" y2="63.5" width="0.1524" layer="91"/>
<pinref part="R9" gate="G$1" pin="1"/>
<pinref part="IC14" gate="G$1" pin="(AIN1/OC0)PB3"/>
</segment>
</net>
<net name="N$50" class="0">
<segment>
<wire x1="38.1" y1="12.7" x2="45.72" y2="12.7" width="0.1524" layer="91"/>
<wire x1="45.72" y1="12.7" x2="45.72" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-2.54" x2="-12.7" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="-2.54" x2="-12.7" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="48.26" x2="-30.48" y2="48.26" width="0.1524" layer="91"/>
<pinref part="IC10" gate="1" pin="RXD"/>
<pinref part="IC14" gate="G$1" pin="(TXD)PD1"/>
</segment>
</net>
<net name="N$51" class="0">
<segment>
<wire x1="-30.48" y1="50.8" x2="-10.16" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="50.8" x2="-10.16" y2="0" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="0" x2="43.18" y2="0" width="0.1524" layer="91"/>
<wire x1="43.18" y1="0" x2="43.18" y2="10.16" width="0.1524" layer="91"/>
<wire x1="43.18" y1="10.16" x2="38.1" y2="10.16" width="0.1524" layer="91"/>
<pinref part="IC10" gate="1" pin="TXD"/>
<pinref part="IC14" gate="G$1" pin="(RXD)PD0"/>
</segment>
</net>
<net name="N$53" class="0">
<segment>
<wire x1="38.1" y1="35.56" x2="40.64" y2="35.56" width="0.1524" layer="91"/>
<wire x1="40.64" y1="35.56" x2="40.64" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-7.62" x2="40.64" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-22.86" x2="30.48" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-22.86" x2="27.94" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-7.62" x2="40.64" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="-86.36" x2="30.48" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-86.36" x2="30.48" y2="-22.86" width="0.1524" layer="91"/>
<junction x="40.64" y="-7.62"/>
<junction x="30.48" y="-22.86"/>
<pinref part="IC11" gate="IC1" pin="SDA"/>
<pinref part="R13" gate="G$1" pin="1"/>
<pinref part="IC14" gate="G$1" pin="PC1(SDA)"/>
<pinref part="IC1" gate="G$1" pin="PC4(ADC4/SDA)"/>
</segment>
</net>
<net name="N$57" class="0">
<segment>
<wire x1="38.1" y1="33.02" x2="38.1" y2="30.48" width="0.1524" layer="91"/>
<wire x1="38.1" y1="30.48" x2="17.78" y2="30.48" width="0.1524" layer="91"/>
<wire x1="17.78" y1="30.48" x2="17.78" y2="5.08" width="0.1524" layer="91"/>
<wire x1="17.78" y1="5.08" x2="38.1" y2="5.08" width="0.1524" layer="91"/>
<wire x1="38.1" y1="5.08" x2="38.1" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="38.1" y1="-5.08" x2="38.1" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="38.1" y1="-25.4" x2="33.02" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-25.4" x2="27.94" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-5.08" x2="38.1" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="-88.9" x2="33.02" y2="-88.9" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-88.9" x2="33.02" y2="-25.4" width="0.1524" layer="91"/>
<junction x="38.1" y="-5.08"/>
<junction x="33.02" y="-25.4"/>
<pinref part="IC11" gate="IC1" pin="SCL"/>
<pinref part="R12" gate="G$1" pin="1"/>
<pinref part="IC14" gate="G$1" pin="PC0(SCL)"/>
<pinref part="IC1" gate="G$1" pin="PC5(ADC5/SCL)"/>
</segment>
</net>
<net name="N$58" class="0">
<segment>
<wire x1="-2.54" y1="-25.4" x2="-5.08" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="IC11" gate="IC1" pin="WP"/>
<pinref part="R14" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$60" class="0">
<segment>
<wire x1="-93.98" y1="-55.88" x2="-91.44" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="C11" gate="G$1" pin="1"/>
<pinref part="IC12" gate="G$1" pin="GND"/>
</segment>
</net>
<net name="N$59" class="0">
<segment>
<wire x1="-96.52" y1="-60.96" x2="-93.98" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="-93.98" y1="-60.96" x2="-91.44" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="-93.98" y1="-63.5" x2="-93.98" y2="-60.96" width="0.1524" layer="91"/>
<junction x="-93.98" y="-60.96"/>
<pinref part="C12" gate="G$1" pin="1"/>
<pinref part="IC12" gate="G$1" pin="CKIN"/>
<pinref part="R15" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$61" class="0">
<segment>
<wire x1="-58.42" y1="-48.26" x2="-55.88" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="IC12" gate="G$1" pin="IN"/>
<pinref part="C13" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$62" class="0">
<segment>
<wire x1="-48.26" y1="-48.26" x2="-45.72" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="-48.26" x2="-45.72" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="-45.72" x2="-43.18" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="-50.8" x2="-45.72" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="-50.8" x2="-45.72" y2="-48.26" width="0.1524" layer="91"/>
<junction x="-45.72" y="-48.26"/>
<pinref part="C13" gate="G$1" pin="1"/>
<pinref part="R16" gate="G$1" pin="2"/>
<pinref part="R17" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$63" class="0">
<segment>
<wire x1="-22.86" y1="-45.72" x2="-33.02" y2="-45.72" width="0.1524" layer="91"/>
<pinref part="R16" gate="G$1" pin="1"/>
<pinref part="U$1" gate="G$1" pin="R"/>
</segment>
</net>
<net name="N$64" class="0">
<segment>
<wire x1="-22.86" y1="-48.26" x2="-30.48" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="-48.26" x2="-30.48" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="-50.8" x2="-33.02" y2="-50.8" width="0.1524" layer="91"/>
<pinref part="R17" gate="G$1" pin="1"/>
<pinref part="U$1" gate="G$1" pin="L"/>
</segment>
</net>
<net name="N$69" class="0">
<segment>
<wire x1="53.34" y1="30.48" x2="53.34" y2="55.88" width="0.1524" layer="91"/>
<wire x1="53.34" y1="55.88" x2="38.1" y2="55.88" width="0.1524" layer="91"/>
<wire x1="68.58" y1="30.48" x2="53.34" y2="30.48" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-73.66" x2="71.12" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-73.66" x2="68.58" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="68.58" y1="30.48" x2="68.58" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="96.52" y1="-93.98" x2="99.06" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-93.98" x2="99.06" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-86.36" x2="71.12" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-86.36" x2="71.12" y2="-73.66" width="0.1524" layer="91"/>
<junction x="71.12" y="-73.66"/>
<pinref part="V1" gate="/1" pin="Y"/>
<pinref part="V1" gate="/2" pin="A"/>
<pinref part="IC14" gate="G$1" pin="(T0/XCK)PB0"/>
</segment>
</net>
<net name="N$72" class="0">
<segment>
<wire x1="76.2" y1="-96.52" x2="73.66" y2="-96.52" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-96.52" x2="73.66" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-83.82" x2="99.06" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-83.82" x2="99.06" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-76.2" x2="96.52" y2="-76.2" width="0.1524" layer="91"/>
<pinref part="V1" gate="/2" pin="Y"/>
<pinref part="V1" gate="/1" pin="B"/>
</segment>
</net>
<net name="N$73" class="0">
<segment>
<wire x1="96.52" y1="-99.06" x2="99.06" y2="-99.06" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-99.06" x2="106.68" y2="-99.06" width="0.1524" layer="91"/>
<wire x1="106.68" y1="-99.06" x2="106.68" y2="-88.9" width="0.1524" layer="91"/>
<wire x1="106.68" y1="-88.9" x2="109.22" y2="-88.9" width="0.1524" layer="91"/>
<junction x="99.06" y="-99.06"/>
<pinref part="V1" gate="/2" pin="B"/>
<pinref part="R18" gate="G$1" pin="1"/>
<pinref part="S1" gate="1" pin="S"/>
</segment>
</net>
<net name="N$74" class="0">
<segment>
<wire x1="109.22" y1="-83.82" x2="106.68" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="106.68" y1="-83.82" x2="106.68" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="106.68" y1="-71.12" x2="99.06" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="96.52" y1="-71.12" x2="99.06" y2="-71.12" width="0.1524" layer="91"/>
<junction x="99.06" y="-71.12"/>
<pinref part="S1" gate="1" pin="O"/>
<pinref part="R20" gate="G$1" pin="2"/>
<pinref part="V1" gate="/1" pin="A"/>
</segment>
</net>
<net name="N$65" class="0">
<segment>
<wire x1="-58.42" y1="-55.88" x2="-22.86" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="-55.88" x2="-22.86" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="-76.2" x2="-25.4" y2="-76.2" width="0.1524" layer="91"/>
<pinref part="IC12" gate="G$1" pin="OUT"/>
<pinref part="IC1" gate="G$1" pin="PC0(ADC0)"/>
</segment>
</net>
<net name="N$66" class="0">
<segment>
<wire x1="-76.2" y1="-76.2" x2="-78.74" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="-76.2" y1="-139.7" x2="-76.2" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="-76.2" x2="-76.2" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="12.7" y1="-124.46" x2="10.16" y2="-124.46" width="0.1524" layer="91"/>
<wire x1="10.16" y1="-124.46" x2="10.16" y2="-139.7" width="0.1524" layer="91"/>
<wire x1="10.16" y1="-139.7" x2="-76.2" y2="-139.7" width="0.1524" layer="91"/>
<junction x="-76.2" y="-76.2"/>
<pinref part="R19" gate="G$1" pin="1"/>
<pinref part="JP6" gate="G$1" pin="RESET"/>
<pinref part="IC1" gate="G$1" pin="PC6(/RESET)"/>
</segment>
</net>
<net name="N$67" class="0">
<segment>
<wire x1="-58.42" y1="-60.96" x2="-20.32" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="-60.96" x2="-20.32" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="-81.28" x2="-25.4" y2="-81.28" width="0.1524" layer="91"/>
<pinref part="IC12" gate="G$1" pin="STROBE"/>
<pinref part="IC1" gate="G$1" pin="PC2(ADC2)"/>
</segment>
</net>
<net name="N$68" class="0">
<segment>
<wire x1="-17.78" y1="-63.5" x2="-58.42" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="-83.82" x2="-17.78" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="-83.82" x2="-17.78" y2="-63.5" width="0.1524" layer="91"/>
<pinref part="IC12" gate="G$1" pin="RESET"/>
<pinref part="IC1" gate="G$1" pin="PC3(ADC3)"/>
</segment>
</net>
<net name="N$70" class="0">
<segment>
<wire x1="-73.66" y1="-99.06" x2="-78.74" y2="-99.06" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="-99.06" x2="-78.74" y2="-99.06" width="0.1524" layer="91"/>
<junction x="-78.74" y="-99.06"/>
<pinref part="Q10" gate="G$1" pin="1"/>
<pinref part="C14" gate="G$1" pin="1"/>
<pinref part="IC1" gate="G$1" pin="PB7(XTAL2/TOSC2)"/>
</segment>
</net>
<net name="N$71" class="0">
<segment>
<wire x1="-73.66" y1="-93.98" x2="-78.74" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="-78.74" y1="-93.98" x2="-83.82" y2="-93.98" width="0.1524" layer="91"/>
<junction x="-78.74" y="-93.98"/>
<pinref part="Q10" gate="G$1" pin="2"/>
<pinref part="C15" gate="G$1" pin="1"/>
<pinref part="IC1" gate="G$1" pin="PB6(XTAL1/TOSC1)"/>
</segment>
</net>
<net name="N$78" class="0">
<segment>
<wire x1="-106.68" y1="-91.44" x2="-78.74" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="-78.74" y1="-91.44" x2="-78.74" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="-78.74" y1="-83.82" x2="-73.66" y2="-83.82" width="0.1524" layer="91"/>
<pinref part="C18" gate="G$1" pin="1"/>
<pinref part="IC1" gate="G$1" pin="AREF"/>
</segment>
</net>
<net name="N$77" class="0">
<segment>
<wire x1="-25.4" y1="-78.74" x2="-15.24" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="-78.74" x2="-15.24" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="-76.2" x2="-12.7" y2="-76.2" width="0.1524" layer="91"/>
<pinref part="R22" gate="G$1" pin="S"/>
<pinref part="IC1" gate="G$1" pin="PC1(ADC1)"/>
</segment>
</net>
<net name="N$79" class="0">
<segment>
<wire x1="-25.4" y1="-132.08" x2="12.7" y2="-132.08" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="MISO"/>
<pinref part="IC1" gate="G$1" pin="PB4(MISO)"/>
</segment>
</net>
<net name="N$80" class="0">
<segment>
<wire x1="12.7" y1="-134.62" x2="5.08" y2="-134.62" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-134.62" x2="5.08" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-129.54" x2="-25.4" y2="-129.54" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="MOSI"/>
<pinref part="IC1" gate="G$1" pin="PB3(MOSI/OC2)"/>
</segment>
</net>
<net name="N$81" class="0">
<segment>
<wire x1="12.7" y1="-129.54" x2="7.62" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="7.62" y1="-129.54" x2="7.62" y2="-137.16" width="0.1524" layer="91"/>
<wire x1="7.62" y1="-137.16" x2="2.54" y2="-137.16" width="0.1524" layer="91"/>
<wire x1="2.54" y1="-137.16" x2="2.54" y2="-134.62" width="0.1524" layer="91"/>
<wire x1="2.54" y1="-134.62" x2="-25.4" y2="-134.62" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="SCK"/>
<pinref part="IC1" gate="G$1" pin="PB5(SCK)"/>
</segment>
</net>
<net name="N$84" class="0">
<segment>
<pinref part="LED67" gate="G$1" pin="C"/>
<pinref part="R32" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$85" class="0">
<segment>
<pinref part="LED68" gate="G$1" pin="C"/>
<pinref part="R33" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$86" class="0">
<segment>
<pinref part="LED69" gate="G$1" pin="C"/>
<pinref part="R34" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$87" class="0">
<segment>
<pinref part="LED70" gate="G$1" pin="C"/>
<pinref part="R35" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$88" class="0">
<segment>
<pinref part="LED71" gate="G$1" pin="C"/>
<pinref part="R36" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$89" class="0">
<segment>
<pinref part="LED72" gate="G$1" pin="C"/>
<pinref part="R37" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$90" class="0">
<segment>
<pinref part="LED73" gate="G$1" pin="C"/>
<pinref part="R38" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$91" class="0">
<segment>
<wire x1="-25.4" y1="-121.92" x2="-20.32" y2="-121.92" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="-121.92" x2="-20.32" y2="-119.38" width="0.1524" layer="91"/>
<pinref part="LED67" gate="G$1" pin="A"/>
<wire x1="-20.32" y1="-119.38" x2="-15.24" y2="-119.38" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="PB0(ICP)"/>
</segment>
</net>
<net name="N$92" class="0">
<segment>
<pinref part="LED68" gate="G$1" pin="A"/>
<wire x1="-17.78" y1="-116.84" x2="-25.4" y2="-116.84" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="PD7(AIN1)"/>
</segment>
</net>
<net name="N$93" class="0">
<segment>
<pinref part="LED69" gate="G$1" pin="A"/>
<wire x1="-25.4" y1="-114.3" x2="-15.24" y2="-114.3" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="PD6(AIN0)"/>
</segment>
</net>
<net name="N$94" class="0">
<segment>
<pinref part="LED70" gate="G$1" pin="A"/>
<wire x1="-17.78" y1="-111.76" x2="-25.4" y2="-111.76" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="PD5(T1)"/>
</segment>
</net>
<net name="N$95" class="0">
<segment>
<pinref part="LED71" gate="G$1" pin="A"/>
<wire x1="-25.4" y1="-109.22" x2="-15.24" y2="-109.22" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="PD4(XCK/T0)"/>
</segment>
</net>
<net name="N$96" class="0">
<segment>
<pinref part="LED72" gate="G$1" pin="A"/>
<wire x1="-17.78" y1="-106.68" x2="-25.4" y2="-106.68" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="PD3(INT1)"/>
</segment>
</net>
<net name="N$97" class="0">
<segment>
<pinref part="LED73" gate="G$1" pin="A"/>
<wire x1="-25.4" y1="-104.14" x2="-15.24" y2="-104.14" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="PD2(INT0)"/>
</segment>
</net>
<net name="N$82" class="0">
<segment>
<pinref part="R31" gate="G$1" pin="2"/>
<wire x1="-10.16" y1="-124.46" x2="-12.7" y2="-124.46" width="0.1524" layer="91"/>
<pinref part="LED1" gate="G$1" pin="C"/>
</segment>
</net>
<net name="N$83" class="0">
<segment>
<wire x1="-20.32" y1="-124.46" x2="-25.4" y2="-124.46" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="PB1(OC1A)"/>
<pinref part="LED1" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$75" class="0">
<segment>
<pinref part="LED65" gate="G$1" pin="A"/>
<wire x1="-25.4" y1="-127" x2="-17.78" y2="-127" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="PB2(SS/OC1B)"/>
</segment>
</net>
<net name="N$76" class="0">
<segment>
<pinref part="LED65" gate="G$1" pin="C"/>
<pinref part="R21" gate="G$1" pin="2"/>
<wire x1="-10.16" y1="-127" x2="-7.62" y2="-127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$130" class="0">
<segment>
<pinref part="SV1" gate="1" pin="63"/>
<wire x1="370.84" y1="-20.32" x2="368.3" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="368.3" y1="-20.32" x2="368.3" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="297.18" y1="-119.38" x2="297.18" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="292.1" y1="-119.38" x2="297.18" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="292.1" y1="-124.46" x2="292.1" y2="-119.38" width="0.1524" layer="91"/>
<pinref part="U$64" gate="G$1" pin="C"/>
<wire x1="289.56" y1="-124.46" x2="292.1" y2="-124.46" width="0.1524" layer="91"/>
<wire x1="297.18" y1="-114.3" x2="304.8" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="304.8" y1="-114.3" x2="304.8" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="368.3" y1="-116.84" x2="304.8" y2="-116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$131" class="0">
<segment>
<wire x1="365.76" y1="-111.76" x2="365.76" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="61"/>
<wire x1="365.76" y1="-17.78" x2="370.84" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-116.84" x2="251.46" y2="-109.22" width="0.1524" layer="91"/>
<wire x1="246.38" y1="-116.84" x2="251.46" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="246.38" y1="-121.92" x2="246.38" y2="-116.84" width="0.1524" layer="91"/>
<pinref part="U$60" gate="G$1" pin="C"/>
<wire x1="243.84" y1="-121.92" x2="246.38" y2="-121.92" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-109.22" x2="309.88" y2="-109.22" width="0.1524" layer="91"/>
<wire x1="309.88" y1="-109.22" x2="309.88" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="365.76" y1="-111.76" x2="309.88" y2="-111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$134" class="0">
<segment>
<pinref part="SV1" gate="1" pin="62"/>
<wire x1="386.08" y1="-17.78" x2="391.16" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="391.16" y1="-17.78" x2="391.16" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="276.86" y1="-116.84" x2="276.86" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="271.78" y1="-116.84" x2="276.86" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="271.78" y1="-121.92" x2="271.78" y2="-116.84" width="0.1524" layer="91"/>
<pinref part="U$63" gate="G$1" pin="C"/>
<wire x1="269.24" y1="-121.92" x2="271.78" y2="-121.92" width="0.1524" layer="91"/>
<wire x1="276.86" y1="-111.76" x2="307.34" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="307.34" y1="-111.76" x2="307.34" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="391.16" y1="-114.3" x2="307.34" y2="-114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$136" class="0">
<segment>
<wire x1="396.24" y1="-104.14" x2="396.24" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="58"/>
<wire x1="396.24" y1="-12.7" x2="386.08" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="287.02" y1="-91.44" x2="287.02" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-91.44" x2="287.02" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-96.52" x2="274.32" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="261.62" y1="-96.52" x2="274.32" y2="-96.52" width="0.1524" layer="91"/>
<wire x1="261.62" y1="-99.06" x2="261.62" y2="-96.52" width="0.1524" layer="91"/>
<wire x1="259.08" y1="-99.06" x2="261.62" y2="-99.06" width="0.1524" layer="91"/>
<wire x1="259.08" y1="-101.6" x2="259.08" y2="-99.06" width="0.1524" layer="91"/>
<pinref part="U$61" gate="G$1" pin="C"/>
<wire x1="256.54" y1="-101.6" x2="259.08" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="287.02" y1="-101.6" x2="317.5" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="317.5" y1="-101.6" x2="317.5" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="396.24" y1="-104.14" x2="317.5" y2="-104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$138" class="0">
<segment>
<pinref part="SV1" gate="1" pin="55"/>
<wire x1="370.84" y1="-10.16" x2="358.14" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="358.14" y1="-10.16" x2="358.14" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="297.18" y1="-81.28" x2="297.18" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="292.1" y1="-81.28" x2="297.18" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="292.1" y1="-86.36" x2="292.1" y2="-81.28" width="0.1524" layer="91"/>
<pinref part="U$56" gate="G$1" pin="C"/>
<wire x1="289.56" y1="-86.36" x2="292.1" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="297.18" y1="-76.2" x2="304.8" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="304.8" y1="-76.2" x2="304.8" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="358.14" y1="-78.74" x2="304.8" y2="-78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$142" class="0">
<segment>
<wire x1="401.32" y1="-76.2" x2="401.32" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="54"/>
<wire x1="401.32" y1="-7.62" x2="386.08" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="276.86" y1="-78.74" x2="276.86" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="271.78" y1="-78.74" x2="276.86" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="271.78" y1="-83.82" x2="271.78" y2="-78.74" width="0.1524" layer="91"/>
<pinref part="U$55" gate="G$1" pin="C"/>
<wire x1="269.24" y1="-83.82" x2="271.78" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="276.86" y1="-73.66" x2="307.34" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="307.34" y1="-73.66" x2="307.34" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="401.32" y1="-76.2" x2="307.34" y2="-76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$144" class="0">
<segment>
<wire x1="406.4" y1="-66.04" x2="406.4" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="50"/>
<wire x1="406.4" y1="-2.54" x2="386.08" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="287.02" y1="-53.34" x2="287.02" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-53.34" x2="287.02" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-58.42" x2="274.32" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="261.62" y1="-58.42" x2="274.32" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="261.62" y1="-60.96" x2="261.62" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="259.08" y1="-60.96" x2="261.62" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="259.08" y1="-63.5" x2="259.08" y2="-60.96" width="0.1524" layer="91"/>
<pinref part="U$53" gate="G$1" pin="C"/>
<wire x1="256.54" y1="-63.5" x2="259.08" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="287.02" y1="-63.5" x2="317.5" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="317.5" y1="-63.5" x2="317.5" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="406.4" y1="-66.04" x2="317.5" y2="-66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$162" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="B"/>
<pinref part="R39" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$161" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="B"/>
<pinref part="R40" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$165" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="B"/>
<pinref part="R41" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<wire x1="238.76" y1="152.4" x2="238.76" y2="160.02" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="C"/>
<wire x1="236.22" y1="152.4" x2="238.76" y2="152.4" width="0.1524" layer="91"/>
<wire x1="393.7" y1="160.02" x2="393.7" y2="55.88" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="4"/>
<wire x1="393.7" y1="55.88" x2="386.08" y2="55.88" width="0.1524" layer="91"/>
<wire x1="238.76" y1="160.02" x2="393.7" y2="160.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$100" class="0">
<segment>
<wire x1="246.38" y1="144.78" x2="246.38" y2="149.86" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="C"/>
<wire x1="243.84" y1="144.78" x2="246.38" y2="144.78" width="0.1524" layer="91"/>
<wire x1="246.38" y1="149.86" x2="251.46" y2="149.86" width="0.1524" layer="91"/>
<wire x1="251.46" y1="149.86" x2="251.46" y2="157.48" width="0.1524" layer="91"/>
<wire x1="360.68" y1="157.48" x2="360.68" y2="53.34" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="5"/>
<wire x1="360.68" y1="53.34" x2="370.84" y2="53.34" width="0.1524" layer="91"/>
<wire x1="251.46" y1="157.48" x2="360.68" y2="157.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$103" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="B"/>
<pinref part="R42" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$172" class="0">
<segment>
<pinref part="R42" gate="G$1" pin="1"/>
<wire x1="241.3" y1="170.18" x2="236.22" y2="170.18" width="0.1524" layer="91"/>
<wire x1="236.22" y1="170.18" x2="236.22" y2="172.72" width="0.1524" layer="91"/>
<wire x1="236.22" y1="172.72" x2="203.2" y2="172.72" width="0.1524" layer="91"/>
<wire x1="203.2" y1="172.72" x2="203.2" y2="162.56" width="0.1524" layer="91"/>
<pinref part="IC7" gate="A" pin="2Q"/>
<wire x1="200.66" y1="162.56" x2="203.2" y2="162.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$173" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="B"/>
<pinref part="R43" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$175" class="0">
<segment>
<pinref part="R43" gate="G$1" pin="1"/>
<wire x1="264.16" y1="167.64" x2="264.16" y2="177.8" width="0.1524" layer="91"/>
<wire x1="264.16" y1="177.8" x2="205.74" y2="177.8" width="0.1524" layer="91"/>
<wire x1="205.74" y1="177.8" x2="205.74" y2="160.02" width="0.1524" layer="91"/>
<pinref part="IC7" gate="A" pin="3Q"/>
<wire x1="205.74" y1="160.02" x2="200.66" y2="160.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$99" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="C"/>
<pinref part="SV1" gate="1" pin="3"/>
<wire x1="370.84" y1="55.88" x2="363.22" y2="55.88" width="0.1524" layer="91"/>
<wire x1="363.22" y1="55.88" x2="363.22" y2="162.56" width="0.1524" layer="91"/>
<wire x1="279.4" y1="162.56" x2="363.22" y2="162.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$163" class="0">
<segment>
<pinref part="R41" gate="G$1" pin="1"/>
<wire x1="228.6" y1="149.86" x2="228.6" y2="154.94" width="0.1524" layer="91"/>
<pinref part="IC7" gate="A" pin="5Q"/>
<wire x1="200.66" y1="154.94" x2="228.6" y2="154.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$98" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="C"/>
<wire x1="256.54" y1="165.1" x2="259.08" y2="165.1" width="0.1524" layer="91"/>
<wire x1="259.08" y1="165.1" x2="259.08" y2="167.64" width="0.1524" layer="91"/>
<wire x1="259.08" y1="167.64" x2="261.62" y2="167.64" width="0.1524" layer="91"/>
<wire x1="261.62" y1="167.64" x2="261.62" y2="170.18" width="0.1524" layer="91"/>
<wire x1="261.62" y1="170.18" x2="274.32" y2="170.18" width="0.1524" layer="91"/>
<wire x1="274.32" y1="170.18" x2="274.32" y2="175.26" width="0.1524" layer="91"/>
<wire x1="274.32" y1="175.26" x2="287.02" y2="175.26" width="0.1524" layer="91"/>
<wire x1="287.02" y1="175.26" x2="287.02" y2="165.1" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="2"/>
<wire x1="391.16" y1="165.1" x2="391.16" y2="58.42" width="0.1524" layer="91"/>
<wire x1="391.16" y1="58.42" x2="386.08" y2="58.42" width="0.1524" layer="91"/>
<wire x1="287.02" y1="165.1" x2="391.16" y2="165.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$101" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="B"/>
<pinref part="R44" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$170" class="0">
<segment>
<wire x1="226.06" y1="152.4" x2="226.06" y2="147.32" width="0.1524" layer="91"/>
<wire x1="226.06" y1="147.32" x2="238.76" y2="147.32" width="0.1524" layer="91"/>
<wire x1="238.76" y1="147.32" x2="238.76" y2="144.272" width="0.1524" layer="91"/>
<wire x1="238.76" y1="144.272" x2="248.92" y2="144.272" width="0.1524" layer="91"/>
<wire x1="248.92" y1="144.272" x2="248.92" y2="147.32" width="0.1524" layer="91"/>
<pinref part="R44" gate="G$1" pin="1"/>
<wire x1="248.92" y1="147.32" x2="254" y2="147.32" width="0.1524" layer="91"/>
<wire x1="254" y1="147.32" x2="254" y2="149.86" width="0.1524" layer="91"/>
<pinref part="IC7" gate="A" pin="6Q"/>
<wire x1="200.66" y1="152.4" x2="226.06" y2="152.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$102" class="0">
<segment>
<wire x1="271.78" y1="144.78" x2="271.78" y2="149.86" width="0.1524" layer="91"/>
<pinref part="U$7" gate="G$1" pin="C"/>
<wire x1="269.24" y1="144.78" x2="271.78" y2="144.78" width="0.1524" layer="91"/>
<wire x1="271.78" y1="149.86" x2="276.86" y2="149.86" width="0.1524" layer="91"/>
<wire x1="276.86" y1="149.86" x2="276.86" y2="154.94" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="6"/>
<wire x1="386.08" y1="53.34" x2="396.24" y2="53.34" width="0.1524" layer="91"/>
<wire x1="396.24" y1="53.34" x2="396.24" y2="154.94" width="0.1524" layer="91"/>
<wire x1="276.86" y1="154.94" x2="396.24" y2="154.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$171" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="B"/>
<pinref part="R45" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$176" class="0">
<segment>
<wire x1="223.52" y1="149.86" x2="223.52" y2="144.78" width="0.1524" layer="91"/>
<wire x1="223.52" y1="144.78" x2="236.22" y2="144.78" width="0.1524" layer="91"/>
<wire x1="236.22" y1="144.78" x2="236.22" y2="142.24" width="0.1524" layer="91"/>
<pinref part="R45" gate="G$1" pin="1"/>
<wire x1="236.22" y1="142.24" x2="274.32" y2="142.24" width="0.1524" layer="91"/>
<wire x1="274.32" y1="142.24" x2="274.32" y2="147.32" width="0.1524" layer="91"/>
<pinref part="IC7" gate="A" pin="7Q"/>
<wire x1="200.66" y1="149.86" x2="223.52" y2="149.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$166" class="0">
<segment>
<wire x1="292.1" y1="142.24" x2="292.1" y2="147.32" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="C"/>
<wire x1="289.56" y1="142.24" x2="292.1" y2="142.24" width="0.1524" layer="91"/>
<wire x1="292.1" y1="147.32" x2="297.18" y2="147.32" width="0.1524" layer="91"/>
<wire x1="297.18" y1="147.32" x2="297.18" y2="152.4" width="0.1524" layer="91"/>
<wire x1="358.14" y1="152.4" x2="358.14" y2="50.8" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="7"/>
<wire x1="358.14" y1="50.8" x2="370.84" y2="50.8" width="0.1524" layer="91"/>
<wire x1="297.18" y1="152.4" x2="358.14" y2="152.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$177" class="0">
<segment>
<pinref part="U$9" gate="G$1" pin="B"/>
<pinref part="R46" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$104" class="0">
<segment>
<wire x1="314.96" y1="139.7" x2="314.96" y2="144.78" width="0.1524" layer="91"/>
<pinref part="U$9" gate="G$1" pin="C"/>
<wire x1="312.42" y1="139.7" x2="314.96" y2="139.7" width="0.1524" layer="91"/>
<wire x1="314.96" y1="144.78" x2="320.04" y2="144.78" width="0.1524" layer="91"/>
<wire x1="320.04" y1="144.78" x2="320.04" y2="149.86" width="0.1524" layer="91"/>
<wire x1="398.78" y1="149.86" x2="398.78" y2="50.8" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="8"/>
<wire x1="398.78" y1="50.8" x2="386.08" y2="50.8" width="0.1524" layer="91"/>
<wire x1="320.04" y1="149.86" x2="398.78" y2="149.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$179" class="0">
<segment>
<pinref part="R46" gate="G$1" pin="1"/>
<wire x1="297.18" y1="144.78" x2="294.64" y2="144.78" width="0.1524" layer="91"/>
<wire x1="294.64" y1="144.78" x2="294.64" y2="139.7" width="0.1524" layer="91"/>
<wire x1="294.64" y1="139.7" x2="233.68" y2="139.7" width="0.1524" layer="91"/>
<wire x1="233.68" y1="139.7" x2="233.68" y2="142.24" width="0.1524" layer="91"/>
<wire x1="233.68" y1="142.24" x2="220.98" y2="142.24" width="0.1524" layer="91"/>
<wire x1="220.98" y1="142.24" x2="220.98" y2="147.32" width="0.1524" layer="91"/>
<pinref part="IC7" gate="A" pin="8Q"/>
<wire x1="200.66" y1="147.32" x2="220.98" y2="147.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$169" class="0">
<segment>
<pinref part="U$10" gate="G$1" pin="B"/>
<pinref part="R47" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$174" class="0">
<segment>
<pinref part="U$11" gate="G$1" pin="B"/>
<pinref part="R48" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$178" class="0">
<segment>
<pinref part="U$12" gate="G$1" pin="B"/>
<pinref part="R49" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$183" class="0">
<segment>
<wire x1="350.52" y1="119.38" x2="350.52" y2="43.18" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="13"/>
<wire x1="350.52" y1="43.18" x2="370.84" y2="43.18" width="0.1524" layer="91"/>
<wire x1="251.46" y1="111.76" x2="251.46" y2="119.38" width="0.1524" layer="91"/>
<wire x1="246.38" y1="111.76" x2="251.46" y2="111.76" width="0.1524" layer="91"/>
<wire x1="246.38" y1="106.68" x2="246.38" y2="111.76" width="0.1524" layer="91"/>
<pinref part="U$12" gate="G$1" pin="C"/>
<wire x1="243.84" y1="106.68" x2="246.38" y2="106.68" width="0.1524" layer="91"/>
<wire x1="350.52" y1="119.38" x2="251.46" y2="119.38" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$184" class="0">
<segment>
<pinref part="U$13" gate="G$1" pin="B"/>
<pinref part="R50" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$185" class="0">
<segment>
<pinref part="R50" gate="G$1" pin="1"/>
<wire x1="241.3" y1="132.08" x2="236.22" y2="132.08" width="0.1524" layer="91"/>
<wire x1="236.22" y1="132.08" x2="236.22" y2="134.62" width="0.1524" layer="91"/>
<wire x1="236.22" y1="134.62" x2="203.2" y2="134.62" width="0.1524" layer="91"/>
<wire x1="203.2" y1="134.62" x2="203.2" y2="124.46" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="2Q"/>
<wire x1="200.66" y1="124.46" x2="203.2" y2="124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$186" class="0">
<segment>
<pinref part="U$14" gate="G$1" pin="B"/>
<pinref part="R51" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$187" class="0">
<segment>
<pinref part="R51" gate="G$1" pin="1"/>
<wire x1="264.16" y1="129.54" x2="262.636" y2="129.54" width="0.1524" layer="91"/>
<wire x1="262.636" y1="129.54" x2="262.636" y2="123.19" width="0.1524" layer="91"/>
<wire x1="262.636" y1="123.19" x2="247.142" y2="123.19" width="0.1524" layer="91"/>
<wire x1="247.142" y1="123.19" x2="247.142" y2="128.778" width="0.1524" layer="91"/>
<wire x1="247.142" y1="128.778" x2="232.41" y2="128.778" width="0.1524" layer="91"/>
<wire x1="232.41" y1="128.778" x2="232.41" y2="121.158" width="0.1524" layer="91"/>
<wire x1="232.41" y1="121.158" x2="220.98" y2="121.158" width="0.1524" layer="91"/>
<wire x1="220.98" y1="121.158" x2="220.98" y2="121.92" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="3Q"/>
<wire x1="200.66" y1="121.92" x2="220.98" y2="121.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$189" class="0">
<segment>
<pinref part="R49" gate="G$1" pin="1"/>
<wire x1="228.6" y1="111.76" x2="228.6" y2="116.84" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="5Q"/>
<wire x1="200.66" y1="116.84" x2="228.6" y2="116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$192" class="0">
<segment>
<pinref part="U$15" gate="G$1" pin="B"/>
<pinref part="R52" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$193" class="0">
<segment>
<wire x1="226.06" y1="114.3" x2="226.06" y2="109.22" width="0.1524" layer="91"/>
<wire x1="226.06" y1="109.22" x2="238.76" y2="109.22" width="0.1524" layer="91"/>
<wire x1="238.76" y1="109.22" x2="238.76" y2="105.664" width="0.1524" layer="91"/>
<wire x1="238.76" y1="105.664" x2="248.92" y2="105.664" width="0.1524" layer="91"/>
<wire x1="248.92" y1="105.664" x2="248.92" y2="109.22" width="0.1524" layer="91"/>
<pinref part="R52" gate="G$1" pin="1"/>
<wire x1="248.92" y1="109.22" x2="254" y2="109.22" width="0.1524" layer="91"/>
<wire x1="254" y1="109.22" x2="254" y2="111.76" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="6Q"/>
<wire x1="200.66" y1="114.3" x2="226.06" y2="114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$194" class="0">
<segment>
<wire x1="406.4" y1="116.84" x2="406.4" y2="43.18" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="14"/>
<wire x1="406.4" y1="43.18" x2="386.08" y2="43.18" width="0.1524" layer="91"/>
<wire x1="276.86" y1="111.76" x2="276.86" y2="116.84" width="0.1524" layer="91"/>
<wire x1="271.78" y1="111.76" x2="276.86" y2="111.76" width="0.1524" layer="91"/>
<wire x1="271.78" y1="106.68" x2="271.78" y2="111.76" width="0.1524" layer="91"/>
<pinref part="U$15" gate="G$1" pin="C"/>
<wire x1="269.24" y1="106.68" x2="271.78" y2="106.68" width="0.1524" layer="91"/>
<wire x1="406.4" y1="116.84" x2="276.86" y2="116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$195" class="0">
<segment>
<pinref part="U$16" gate="G$1" pin="B"/>
<pinref part="R53" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$196" class="0">
<segment>
<wire x1="223.52" y1="111.76" x2="223.52" y2="106.68" width="0.1524" layer="91"/>
<wire x1="223.52" y1="106.68" x2="236.22" y2="106.68" width="0.1524" layer="91"/>
<wire x1="236.22" y1="106.68" x2="236.22" y2="104.14" width="0.1524" layer="91"/>
<pinref part="R53" gate="G$1" pin="1"/>
<wire x1="236.22" y1="104.14" x2="274.32" y2="104.14" width="0.1524" layer="91"/>
<wire x1="274.32" y1="104.14" x2="274.32" y2="109.22" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="7Q"/>
<wire x1="200.66" y1="111.76" x2="223.52" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$197" class="0">
<segment>
<pinref part="SV1" gate="1" pin="15"/>
<wire x1="370.84" y1="40.64" x2="347.98" y2="40.64" width="0.1524" layer="91"/>
<wire x1="347.98" y1="40.64" x2="347.98" y2="114.3" width="0.1524" layer="91"/>
<wire x1="297.18" y1="109.22" x2="297.18" y2="114.3" width="0.1524" layer="91"/>
<wire x1="292.1" y1="109.22" x2="297.18" y2="109.22" width="0.1524" layer="91"/>
<wire x1="292.1" y1="104.14" x2="292.1" y2="109.22" width="0.1524" layer="91"/>
<pinref part="U$16" gate="G$1" pin="C"/>
<wire x1="289.56" y1="104.14" x2="292.1" y2="104.14" width="0.1524" layer="91"/>
<wire x1="347.98" y1="114.3" x2="297.18" y2="114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$200" class="0">
<segment>
<pinref part="R54" gate="G$1" pin="1"/>
<wire x1="274.32" y1="101.6" x2="233.68" y2="101.6" width="0.1524" layer="91"/>
<wire x1="233.68" y1="101.6" x2="233.68" y2="104.14" width="0.1524" layer="91"/>
<wire x1="233.68" y1="104.14" x2="220.98" y2="104.14" width="0.1524" layer="91"/>
<wire x1="220.98" y1="104.14" x2="220.98" y2="109.22" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="8Q"/>
<wire x1="200.66" y1="109.22" x2="220.98" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$188" class="0">
<segment>
<pinref part="SV1" gate="1" pin="11"/>
<wire x1="370.84" y1="45.72" x2="353.06" y2="45.72" width="0.1524" layer="91"/>
<wire x1="353.06" y1="45.72" x2="353.06" y2="124.46" width="0.1524" layer="91"/>
<pinref part="U$14" gate="G$1" pin="C"/>
<wire x1="353.06" y1="124.46" x2="279.4" y2="124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$105" class="0">
<segment>
<wire x1="309.88" y1="106.68" x2="309.88" y2="111.76" width="0.1524" layer="91"/>
<wire x1="304.8" y1="106.68" x2="309.88" y2="106.68" width="0.1524" layer="91"/>
<wire x1="304.8" y1="99.06" x2="304.8" y2="106.68" width="0.1524" layer="91"/>
<pinref part="U$17" gate="G$1" pin="C"/>
<wire x1="299.72" y1="99.06" x2="304.8" y2="99.06" width="0.1524" layer="91"/>
<wire x1="408.94" y1="111.76" x2="408.94" y2="40.64" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="16"/>
<wire x1="408.94" y1="40.64" x2="386.08" y2="40.64" width="0.1524" layer="91"/>
<wire x1="309.88" y1="111.76" x2="408.94" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$109" class="0">
<segment>
<wire x1="238.76" y1="114.3" x2="238.76" y2="121.92" width="0.1524" layer="91"/>
<pinref part="U$11" gate="G$1" pin="C"/>
<wire x1="236.22" y1="114.3" x2="238.76" y2="114.3" width="0.1524" layer="91"/>
<wire x1="403.86" y1="121.92" x2="238.76" y2="121.92" width="0.1524" layer="91"/>
<wire x1="403.86" y1="121.92" x2="403.86" y2="45.72" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="12"/>
<wire x1="403.86" y1="45.72" x2="386.08" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$110" class="0">
<segment>
<wire x1="287.02" y1="137.16" x2="287.02" y2="127" width="0.1524" layer="91"/>
<wire x1="274.32" y1="137.16" x2="287.02" y2="137.16" width="0.1524" layer="91"/>
<wire x1="274.32" y1="132.08" x2="274.32" y2="137.16" width="0.1524" layer="91"/>
<wire x1="261.62" y1="132.08" x2="274.32" y2="132.08" width="0.1524" layer="91"/>
<wire x1="261.62" y1="129.54" x2="261.62" y2="132.08" width="0.1524" layer="91"/>
<wire x1="259.08" y1="129.54" x2="261.62" y2="129.54" width="0.1524" layer="91"/>
<wire x1="259.08" y1="127" x2="259.08" y2="129.54" width="0.1524" layer="91"/>
<pinref part="U$13" gate="G$1" pin="C"/>
<wire x1="256.54" y1="127" x2="259.08" y2="127" width="0.1524" layer="91"/>
<wire x1="401.32" y1="127" x2="401.32" y2="48.26" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="10"/>
<wire x1="401.32" y1="48.26" x2="386.08" y2="48.26" width="0.1524" layer="91"/>
<wire x1="287.02" y1="127" x2="401.32" y2="127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$112" class="0">
<segment>
<pinref part="R54" gate="G$1" pin="2"/>
<pinref part="U$17" gate="G$1" pin="B"/>
<wire x1="284.48" y1="101.6" x2="294.64" y2="101.6" width="0.1524" layer="91"/>
<wire x1="294.64" y1="101.6" x2="294.64" y2="104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$201" class="0">
<segment>
<pinref part="U$18" gate="G$1" pin="B"/>
<pinref part="R55" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$202" class="0">
<segment>
<pinref part="U$19" gate="G$1" pin="B"/>
<pinref part="R56" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$203" class="0">
<segment>
<pinref part="U$20" gate="G$1" pin="B"/>
<pinref part="R57" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$206" class="0">
<segment>
<pinref part="U$21" gate="G$1" pin="B"/>
<pinref part="R58" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$207" class="0">
<segment>
<pinref part="R58" gate="G$1" pin="1"/>
<wire x1="241.3" y1="93.98" x2="236.22" y2="93.98" width="0.1524" layer="91"/>
<wire x1="236.22" y1="93.98" x2="236.22" y2="96.52" width="0.1524" layer="91"/>
<wire x1="236.22" y1="96.52" x2="203.2" y2="96.52" width="0.1524" layer="91"/>
<wire x1="203.2" y1="96.52" x2="203.2" y2="86.36" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="2Q"/>
<wire x1="200.66" y1="86.36" x2="203.2" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$208" class="0">
<segment>
<pinref part="U$22" gate="G$1" pin="B"/>
<pinref part="R59" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$209" class="0">
<segment>
<pinref part="R59" gate="G$1" pin="1"/>
<wire x1="264.16" y1="91.44" x2="262.636" y2="91.44" width="0.1524" layer="91"/>
<wire x1="262.636" y1="91.44" x2="262.636" y2="85.09" width="0.1524" layer="91"/>
<wire x1="262.636" y1="85.09" x2="247.142" y2="85.09" width="0.1524" layer="91"/>
<wire x1="247.142" y1="85.09" x2="247.142" y2="90.678" width="0.1524" layer="91"/>
<wire x1="247.142" y1="90.678" x2="232.41" y2="90.678" width="0.1524" layer="91"/>
<wire x1="232.41" y1="90.678" x2="232.41" y2="83.058" width="0.1524" layer="91"/>
<wire x1="232.41" y1="83.058" x2="220.98" y2="83.058" width="0.1524" layer="91"/>
<wire x1="220.98" y1="83.058" x2="220.98" y2="83.82" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="3Q"/>
<wire x1="200.66" y1="83.82" x2="220.98" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$210" class="0">
<segment>
<pinref part="R57" gate="G$1" pin="1"/>
<wire x1="228.6" y1="73.66" x2="228.6" y2="78.74" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="5Q"/>
<wire x1="200.66" y1="78.74" x2="228.6" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$211" class="0">
<segment>
<pinref part="U$23" gate="G$1" pin="B"/>
<pinref part="R60" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$212" class="0">
<segment>
<wire x1="226.06" y1="76.2" x2="226.06" y2="71.12" width="0.1524" layer="91"/>
<wire x1="226.06" y1="71.12" x2="238.76" y2="71.12" width="0.1524" layer="91"/>
<wire x1="238.76" y1="71.12" x2="238.76" y2="67.564" width="0.1524" layer="91"/>
<wire x1="238.76" y1="67.564" x2="248.92" y2="67.564" width="0.1524" layer="91"/>
<wire x1="248.92" y1="67.564" x2="248.92" y2="71.12" width="0.1524" layer="91"/>
<pinref part="R60" gate="G$1" pin="1"/>
<wire x1="248.92" y1="71.12" x2="254" y2="71.12" width="0.1524" layer="91"/>
<wire x1="254" y1="71.12" x2="254" y2="73.66" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="6Q"/>
<wire x1="200.66" y1="76.2" x2="226.06" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$213" class="0">
<segment>
<pinref part="U$24" gate="G$1" pin="B"/>
<pinref part="R61" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$214" class="0">
<segment>
<wire x1="223.52" y1="73.66" x2="223.52" y2="68.58" width="0.1524" layer="91"/>
<wire x1="223.52" y1="68.58" x2="236.22" y2="68.58" width="0.1524" layer="91"/>
<wire x1="236.22" y1="68.58" x2="236.22" y2="66.04" width="0.1524" layer="91"/>
<pinref part="R61" gate="G$1" pin="1"/>
<wire x1="236.22" y1="66.04" x2="274.32" y2="66.04" width="0.1524" layer="91"/>
<wire x1="274.32" y1="66.04" x2="274.32" y2="71.12" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="7Q"/>
<wire x1="200.66" y1="73.66" x2="223.52" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$215" class="0">
<segment>
<pinref part="R62" gate="G$1" pin="1"/>
<wire x1="274.32" y1="63.5" x2="233.68" y2="63.5" width="0.1524" layer="91"/>
<wire x1="233.68" y1="63.5" x2="233.68" y2="66.04" width="0.1524" layer="91"/>
<wire x1="233.68" y1="66.04" x2="220.98" y2="66.04" width="0.1524" layer="91"/>
<wire x1="220.98" y1="66.04" x2="220.98" y2="71.12" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="8Q"/>
<wire x1="200.66" y1="71.12" x2="220.98" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$216" class="0">
<segment>
<wire x1="304.8" y1="60.96" x2="304.8" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U$25" gate="G$1" pin="C"/>
<wire x1="299.72" y1="60.96" x2="304.8" y2="60.96" width="0.1524" layer="91"/>
<wire x1="419.1" y1="71.12" x2="419.1" y2="30.48" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="24"/>
<wire x1="419.1" y1="30.48" x2="386.08" y2="30.48" width="0.1524" layer="91"/>
<wire x1="304.8" y1="71.12" x2="419.1" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$217" class="0">
<segment>
<wire x1="297.18" y1="71.12" x2="297.18" y2="76.2" width="0.1524" layer="91"/>
<wire x1="292.1" y1="71.12" x2="297.18" y2="71.12" width="0.1524" layer="91"/>
<wire x1="292.1" y1="66.04" x2="292.1" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U$24" gate="G$1" pin="C"/>
<wire x1="289.56" y1="66.04" x2="292.1" y2="66.04" width="0.1524" layer="91"/>
<wire x1="297.18" y1="76.2" x2="304.8" y2="76.2" width="0.1524" layer="91"/>
<wire x1="304.8" y1="76.2" x2="304.8" y2="73.66" width="0.1524" layer="91"/>
<wire x1="304.8" y1="73.66" x2="337.82" y2="73.66" width="0.1524" layer="91"/>
<wire x1="337.82" y1="73.66" x2="337.82" y2="30.48" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="23"/>
<wire x1="337.82" y1="30.48" x2="370.84" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$218" class="0">
<segment>
<wire x1="276.86" y1="73.66" x2="276.86" y2="78.74" width="0.1524" layer="91"/>
<wire x1="271.78" y1="73.66" x2="276.86" y2="73.66" width="0.1524" layer="91"/>
<wire x1="271.78" y1="68.58" x2="271.78" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U$23" gate="G$1" pin="C"/>
<wire x1="269.24" y1="68.58" x2="271.78" y2="68.58" width="0.1524" layer="91"/>
<wire x1="276.86" y1="78.74" x2="307.34" y2="78.74" width="0.1524" layer="91"/>
<wire x1="307.34" y1="78.74" x2="307.34" y2="76.2" width="0.1524" layer="91"/>
<wire x1="416.56" y1="76.2" x2="416.56" y2="33.02" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="22"/>
<wire x1="416.56" y1="33.02" x2="386.08" y2="33.02" width="0.1524" layer="91"/>
<wire x1="307.34" y1="76.2" x2="416.56" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$219" class="0">
<segment>
<wire x1="251.46" y1="73.66" x2="251.46" y2="81.28" width="0.1524" layer="91"/>
<wire x1="246.38" y1="73.66" x2="251.46" y2="73.66" width="0.1524" layer="91"/>
<wire x1="246.38" y1="68.58" x2="246.38" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U$20" gate="G$1" pin="C"/>
<wire x1="243.84" y1="68.58" x2="246.38" y2="68.58" width="0.1524" layer="91"/>
<wire x1="251.46" y1="81.28" x2="309.88" y2="81.28" width="0.1524" layer="91"/>
<wire x1="309.88" y1="81.28" x2="309.88" y2="78.74" width="0.1524" layer="91"/>
<wire x1="340.36" y1="78.74" x2="340.36" y2="33.02" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="21"/>
<wire x1="340.36" y1="33.02" x2="370.84" y2="33.02" width="0.1524" layer="91"/>
<wire x1="309.88" y1="78.74" x2="340.36" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$220" class="0">
<segment>
<wire x1="238.76" y1="76.2" x2="238.76" y2="83.82" width="0.1524" layer="91"/>
<pinref part="U$19" gate="G$1" pin="C"/>
<wire x1="236.22" y1="76.2" x2="238.76" y2="76.2" width="0.1524" layer="91"/>
<wire x1="238.76" y1="83.82" x2="312.42" y2="83.82" width="0.1524" layer="91"/>
<wire x1="312.42" y1="83.82" x2="312.42" y2="81.28" width="0.1524" layer="91"/>
<wire x1="414.02" y1="81.28" x2="414.02" y2="35.56" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="20"/>
<wire x1="414.02" y1="35.56" x2="386.08" y2="35.56" width="0.1524" layer="91"/>
<wire x1="312.42" y1="81.28" x2="414.02" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$221" class="0">
<segment>
<wire x1="287.02" y1="99.06" x2="287.02" y2="88.9" width="0.1524" layer="91"/>
<wire x1="274.32" y1="99.06" x2="287.02" y2="99.06" width="0.1524" layer="91"/>
<wire x1="274.32" y1="93.98" x2="274.32" y2="99.06" width="0.1524" layer="91"/>
<wire x1="261.62" y1="93.98" x2="274.32" y2="93.98" width="0.1524" layer="91"/>
<wire x1="261.62" y1="91.44" x2="261.62" y2="93.98" width="0.1524" layer="91"/>
<wire x1="259.08" y1="91.44" x2="261.62" y2="91.44" width="0.1524" layer="91"/>
<wire x1="259.08" y1="88.9" x2="259.08" y2="91.44" width="0.1524" layer="91"/>
<pinref part="U$21" gate="G$1" pin="C"/>
<wire x1="256.54" y1="88.9" x2="259.08" y2="88.9" width="0.1524" layer="91"/>
<wire x1="287.02" y1="88.9" x2="317.5" y2="88.9" width="0.1524" layer="91"/>
<wire x1="317.5" y1="88.9" x2="317.5" y2="86.36" width="0.1524" layer="91"/>
<wire x1="411.48" y1="86.36" x2="411.48" y2="38.1" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="18"/>
<wire x1="411.48" y1="38.1" x2="386.08" y2="38.1" width="0.1524" layer="91"/>
<wire x1="317.5" y1="86.36" x2="411.48" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$223" class="0">
<segment>
<pinref part="R62" gate="G$1" pin="2"/>
<pinref part="U$25" gate="G$1" pin="B"/>
<wire x1="284.48" y1="63.5" x2="294.64" y2="63.5" width="0.1524" layer="91"/>
<wire x1="294.64" y1="63.5" x2="294.64" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$224" class="0">
<segment>
<pinref part="U$22" gate="G$1" pin="C"/>
<wire x1="279.4" y1="86.36" x2="314.96" y2="86.36" width="0.1524" layer="91"/>
<wire x1="314.96" y1="86.36" x2="314.96" y2="83.82" width="0.1524" layer="91"/>
<wire x1="342.9" y1="83.82" x2="342.9" y2="35.56" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="19"/>
<wire x1="342.9" y1="35.56" x2="370.84" y2="35.56" width="0.1524" layer="91"/>
<wire x1="314.96" y1="83.82" x2="342.9" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$106" class="0">
<segment>
<pinref part="U$26" gate="G$1" pin="B"/>
<pinref part="R63" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$107" class="0">
<segment>
<pinref part="U$27" gate="G$1" pin="B"/>
<pinref part="R64" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$108" class="0">
<segment>
<pinref part="U$28" gate="G$1" pin="B"/>
<pinref part="R65" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$115" class="0">
<segment>
<pinref part="U$29" gate="G$1" pin="B"/>
<pinref part="R66" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$116" class="0">
<segment>
<pinref part="R66" gate="G$1" pin="1"/>
<wire x1="241.3" y1="55.88" x2="236.22" y2="55.88" width="0.1524" layer="91"/>
<wire x1="236.22" y1="55.88" x2="236.22" y2="58.42" width="0.1524" layer="91"/>
<wire x1="236.22" y1="58.42" x2="203.2" y2="58.42" width="0.1524" layer="91"/>
<wire x1="203.2" y1="58.42" x2="203.2" y2="48.26" width="0.1524" layer="91"/>
<pinref part="IC4" gate="A" pin="2Q"/>
<wire x1="200.66" y1="48.26" x2="203.2" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$117" class="0">
<segment>
<pinref part="U$30" gate="G$1" pin="B"/>
<pinref part="R67" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$118" class="0">
<segment>
<pinref part="R67" gate="G$1" pin="1"/>
<wire x1="264.16" y1="53.34" x2="262.636" y2="53.34" width="0.1524" layer="91"/>
<wire x1="262.636" y1="53.34" x2="262.636" y2="46.99" width="0.1524" layer="91"/>
<wire x1="262.636" y1="46.99" x2="247.142" y2="46.99" width="0.1524" layer="91"/>
<wire x1="247.142" y1="46.99" x2="247.142" y2="52.578" width="0.1524" layer="91"/>
<wire x1="247.142" y1="52.578" x2="232.41" y2="52.578" width="0.1524" layer="91"/>
<wire x1="232.41" y1="52.578" x2="232.41" y2="44.958" width="0.1524" layer="91"/>
<wire x1="232.41" y1="44.958" x2="220.98" y2="44.958" width="0.1524" layer="91"/>
<wire x1="220.98" y1="44.958" x2="220.98" y2="45.72" width="0.1524" layer="91"/>
<pinref part="IC4" gate="A" pin="3Q"/>
<wire x1="200.66" y1="45.72" x2="220.98" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$119" class="0">
<segment>
<pinref part="R65" gate="G$1" pin="1"/>
<wire x1="228.6" y1="35.56" x2="228.6" y2="40.64" width="0.1524" layer="91"/>
<pinref part="IC4" gate="A" pin="5Q"/>
<wire x1="200.66" y1="40.64" x2="228.6" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$120" class="0">
<segment>
<pinref part="U$31" gate="G$1" pin="B"/>
<pinref part="R68" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$182" class="0">
<segment>
<wire x1="226.06" y1="38.1" x2="226.06" y2="33.02" width="0.1524" layer="91"/>
<wire x1="226.06" y1="33.02" x2="238.76" y2="33.02" width="0.1524" layer="91"/>
<wire x1="238.76" y1="33.02" x2="238.76" y2="29.464" width="0.1524" layer="91"/>
<wire x1="238.76" y1="29.464" x2="248.92" y2="29.464" width="0.1524" layer="91"/>
<wire x1="248.92" y1="29.464" x2="248.92" y2="33.02" width="0.1524" layer="91"/>
<pinref part="R68" gate="G$1" pin="1"/>
<wire x1="248.92" y1="33.02" x2="254" y2="33.02" width="0.1524" layer="91"/>
<wire x1="254" y1="33.02" x2="254" y2="35.56" width="0.1524" layer="91"/>
<pinref part="IC4" gate="A" pin="6Q"/>
<wire x1="200.66" y1="38.1" x2="226.06" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$190" class="0">
<segment>
<pinref part="U$32" gate="G$1" pin="B"/>
<pinref part="R69" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$191" class="0">
<segment>
<wire x1="223.52" y1="35.56" x2="223.52" y2="30.48" width="0.1524" layer="91"/>
<wire x1="223.52" y1="30.48" x2="236.22" y2="30.48" width="0.1524" layer="91"/>
<wire x1="236.22" y1="30.48" x2="236.22" y2="27.94" width="0.1524" layer="91"/>
<pinref part="R69" gate="G$1" pin="1"/>
<wire x1="236.22" y1="27.94" x2="274.32" y2="27.94" width="0.1524" layer="91"/>
<wire x1="274.32" y1="27.94" x2="274.32" y2="33.02" width="0.1524" layer="91"/>
<pinref part="IC4" gate="A" pin="7Q"/>
<wire x1="200.66" y1="35.56" x2="223.52" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$198" class="0">
<segment>
<pinref part="R70" gate="G$1" pin="1"/>
<wire x1="274.32" y1="25.4" x2="233.68" y2="25.4" width="0.1524" layer="91"/>
<wire x1="233.68" y1="25.4" x2="233.68" y2="27.94" width="0.1524" layer="91"/>
<wire x1="233.68" y1="27.94" x2="220.98" y2="27.94" width="0.1524" layer="91"/>
<wire x1="220.98" y1="27.94" x2="220.98" y2="33.02" width="0.1524" layer="91"/>
<pinref part="IC4" gate="A" pin="8Q"/>
<wire x1="200.66" y1="33.02" x2="220.98" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$199" class="0">
<segment>
<wire x1="304.8" y1="22.86" x2="304.8" y2="33.02" width="0.1524" layer="91"/>
<pinref part="U$33" gate="G$1" pin="C"/>
<wire x1="299.72" y1="22.86" x2="304.8" y2="22.86" width="0.1524" layer="91"/>
<wire x1="304.8" y1="33.02" x2="325.12" y2="33.02" width="0.1524" layer="91"/>
<wire x1="325.12" y1="33.02" x2="325.12" y2="60.96" width="0.1524" layer="91"/>
<wire x1="325.12" y1="60.96" x2="371.602" y2="60.96" width="0.1524" layer="91"/>
<wire x1="371.602" y1="60.96" x2="371.602" y2="62.23" width="0.1524" layer="91"/>
<wire x1="371.602" y1="62.23" x2="386.08" y2="62.23" width="0.1524" layer="91"/>
<wire x1="386.08" y1="62.23" x2="386.08" y2="60.96" width="0.1524" layer="91"/>
<wire x1="386.08" y1="60.96" x2="429.26" y2="60.96" width="0.1524" layer="91"/>
<wire x1="429.26" y1="60.96" x2="429.26" y2="20.32" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="32"/>
<wire x1="429.26" y1="20.32" x2="386.08" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$225" class="0">
<segment>
<wire x1="297.18" y1="33.02" x2="297.18" y2="38.1" width="0.1524" layer="91"/>
<wire x1="292.1" y1="33.02" x2="297.18" y2="33.02" width="0.1524" layer="91"/>
<wire x1="292.1" y1="27.94" x2="292.1" y2="33.02" width="0.1524" layer="91"/>
<pinref part="U$32" gate="G$1" pin="C"/>
<wire x1="289.56" y1="27.94" x2="292.1" y2="27.94" width="0.1524" layer="91"/>
<wire x1="297.18" y1="38.1" x2="304.8" y2="38.1" width="0.1524" layer="91"/>
<wire x1="304.8" y1="38.1" x2="304.8" y2="35.56" width="0.1524" layer="91"/>
<wire x1="304.8" y1="35.56" x2="327.66" y2="35.56" width="0.1524" layer="91"/>
<wire x1="327.66" y1="35.56" x2="327.66" y2="20.32" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="31"/>
<wire x1="327.66" y1="20.32" x2="370.84" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$226" class="0">
<segment>
<wire x1="276.86" y1="35.56" x2="276.86" y2="40.64" width="0.1524" layer="91"/>
<wire x1="271.78" y1="35.56" x2="276.86" y2="35.56" width="0.1524" layer="91"/>
<wire x1="271.78" y1="30.48" x2="271.78" y2="35.56" width="0.1524" layer="91"/>
<pinref part="U$31" gate="G$1" pin="C"/>
<wire x1="269.24" y1="30.48" x2="271.78" y2="30.48" width="0.1524" layer="91"/>
<wire x1="276.86" y1="40.64" x2="307.34" y2="40.64" width="0.1524" layer="91"/>
<wire x1="307.34" y1="40.64" x2="307.34" y2="38.1" width="0.1524" layer="91"/>
<wire x1="307.34" y1="38.1" x2="327.66" y2="38.1" width="0.1524" layer="91"/>
<wire x1="327.66" y1="38.1" x2="327.66" y2="63.5" width="0.1524" layer="91"/>
<wire x1="327.66" y1="63.5" x2="426.72" y2="63.5" width="0.1524" layer="91"/>
<wire x1="426.72" y1="63.5" x2="426.72" y2="22.86" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="30"/>
<wire x1="426.72" y1="22.86" x2="386.08" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$227" class="0">
<segment>
<wire x1="251.46" y1="35.56" x2="251.46" y2="43.18" width="0.1524" layer="91"/>
<wire x1="246.38" y1="35.56" x2="251.46" y2="35.56" width="0.1524" layer="91"/>
<wire x1="246.38" y1="30.48" x2="246.38" y2="35.56" width="0.1524" layer="91"/>
<pinref part="U$28" gate="G$1" pin="C"/>
<wire x1="243.84" y1="30.48" x2="246.38" y2="30.48" width="0.1524" layer="91"/>
<wire x1="251.46" y1="43.18" x2="309.88" y2="43.18" width="0.1524" layer="91"/>
<wire x1="309.88" y1="43.18" x2="309.88" y2="40.64" width="0.1524" layer="91"/>
<wire x1="309.88" y1="40.64" x2="330.2" y2="40.64" width="0.1524" layer="91"/>
<wire x1="330.2" y1="40.64" x2="330.2" y2="22.86" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="29"/>
<wire x1="330.2" y1="22.86" x2="370.84" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$228" class="0">
<segment>
<wire x1="238.76" y1="38.1" x2="238.76" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U$27" gate="G$1" pin="C"/>
<wire x1="236.22" y1="38.1" x2="238.76" y2="38.1" width="0.1524" layer="91"/>
<wire x1="238.76" y1="45.72" x2="312.42" y2="45.72" width="0.1524" layer="91"/>
<wire x1="312.42" y1="45.72" x2="312.42" y2="43.18" width="0.1524" layer="91"/>
<wire x1="312.42" y1="43.18" x2="330.2" y2="43.18" width="0.1524" layer="91"/>
<wire x1="330.2" y1="43.18" x2="330.2" y2="66.04" width="0.1524" layer="91"/>
<wire x1="330.2" y1="66.04" x2="424.18" y2="66.04" width="0.1524" layer="91"/>
<wire x1="424.18" y1="66.04" x2="424.18" y2="25.4" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="28"/>
<wire x1="424.18" y1="25.4" x2="386.08" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$229" class="0">
<segment>
<wire x1="287.02" y1="60.96" x2="287.02" y2="50.8" width="0.1524" layer="91"/>
<wire x1="274.32" y1="60.96" x2="287.02" y2="60.96" width="0.1524" layer="91"/>
<wire x1="274.32" y1="55.88" x2="274.32" y2="60.96" width="0.1524" layer="91"/>
<wire x1="261.62" y1="55.88" x2="274.32" y2="55.88" width="0.1524" layer="91"/>
<wire x1="261.62" y1="53.34" x2="261.62" y2="55.88" width="0.1524" layer="91"/>
<wire x1="259.08" y1="53.34" x2="261.62" y2="53.34" width="0.1524" layer="91"/>
<wire x1="259.08" y1="50.8" x2="259.08" y2="53.34" width="0.1524" layer="91"/>
<pinref part="U$29" gate="G$1" pin="C"/>
<wire x1="256.54" y1="50.8" x2="259.08" y2="50.8" width="0.1524" layer="91"/>
<wire x1="287.02" y1="50.8" x2="317.5" y2="50.8" width="0.1524" layer="91"/>
<wire x1="317.5" y1="50.8" x2="317.5" y2="48.26" width="0.1524" layer="91"/>
<wire x1="332.74" y1="48.26" x2="332.74" y2="68.58" width="0.1524" layer="91"/>
<wire x1="332.74" y1="68.58" x2="421.64" y2="68.58" width="0.1524" layer="91"/>
<wire x1="421.64" y1="68.58" x2="421.64" y2="27.94" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="26"/>
<wire x1="421.64" y1="27.94" x2="386.08" y2="27.94" width="0.1524" layer="91"/>
<wire x1="317.5" y1="48.26" x2="332.74" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$231" class="0">
<segment>
<pinref part="R70" gate="G$1" pin="2"/>
<pinref part="U$33" gate="G$1" pin="B"/>
<wire x1="284.48" y1="25.4" x2="294.64" y2="25.4" width="0.1524" layer="91"/>
<wire x1="294.64" y1="25.4" x2="294.64" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$232" class="0">
<segment>
<pinref part="U$30" gate="G$1" pin="C"/>
<wire x1="279.4" y1="48.26" x2="314.96" y2="48.26" width="0.1524" layer="91"/>
<wire x1="314.96" y1="48.26" x2="314.96" y2="45.72" width="0.1524" layer="91"/>
<wire x1="332.74" y1="45.72" x2="332.74" y2="25.4" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="27"/>
<wire x1="332.74" y1="25.4" x2="370.84" y2="25.4" width="0.1524" layer="91"/>
<wire x1="314.96" y1="45.72" x2="332.74" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$121" class="0">
<segment>
<pinref part="U$34" gate="G$1" pin="B"/>
<pinref part="R71" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$122" class="0">
<segment>
<pinref part="U$35" gate="G$1" pin="B"/>
<pinref part="R72" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$123" class="0">
<segment>
<pinref part="U$36" gate="G$1" pin="B"/>
<pinref part="R73" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$126" class="0">
<segment>
<pinref part="U$37" gate="G$1" pin="B"/>
<pinref part="R74" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$127" class="0">
<segment>
<pinref part="R74" gate="G$1" pin="1"/>
<wire x1="241.3" y1="17.78" x2="236.22" y2="17.78" width="0.1524" layer="91"/>
<wire x1="236.22" y1="17.78" x2="236.22" y2="20.32" width="0.1524" layer="91"/>
<wire x1="236.22" y1="20.32" x2="203.2" y2="20.32" width="0.1524" layer="91"/>
<wire x1="203.2" y1="20.32" x2="203.2" y2="10.16" width="0.1524" layer="91"/>
<pinref part="IC5" gate="A" pin="2Q"/>
<wire x1="200.66" y1="10.16" x2="203.2" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$128" class="0">
<segment>
<pinref part="U$38" gate="G$1" pin="B"/>
<pinref part="R75" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$233" class="0">
<segment>
<pinref part="R75" gate="G$1" pin="1"/>
<wire x1="264.16" y1="15.24" x2="262.636" y2="15.24" width="0.1524" layer="91"/>
<wire x1="262.636" y1="15.24" x2="262.636" y2="8.89" width="0.1524" layer="91"/>
<wire x1="262.636" y1="8.89" x2="247.142" y2="8.89" width="0.1524" layer="91"/>
<wire x1="247.142" y1="8.89" x2="247.142" y2="14.478" width="0.1524" layer="91"/>
<wire x1="247.142" y1="14.478" x2="232.41" y2="14.478" width="0.1524" layer="91"/>
<wire x1="232.41" y1="14.478" x2="232.41" y2="6.858" width="0.1524" layer="91"/>
<wire x1="232.41" y1="6.858" x2="220.98" y2="6.858" width="0.1524" layer="91"/>
<wire x1="220.98" y1="6.858" x2="220.98" y2="7.62" width="0.1524" layer="91"/>
<pinref part="IC5" gate="A" pin="3Q"/>
<wire x1="200.66" y1="7.62" x2="220.98" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$234" class="0">
<segment>
<pinref part="R73" gate="G$1" pin="1"/>
<wire x1="228.6" y1="-2.54" x2="228.6" y2="2.54" width="0.1524" layer="91"/>
<pinref part="IC5" gate="A" pin="5Q"/>
<wire x1="200.66" y1="2.54" x2="228.6" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$235" class="0">
<segment>
<pinref part="U$39" gate="G$1" pin="B"/>
<pinref part="R76" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$236" class="0">
<segment>
<wire x1="226.06" y1="0" x2="226.06" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-5.08" x2="238.76" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-5.08" x2="238.76" y2="-8.636" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-8.636" x2="248.92" y2="-8.636" width="0.1524" layer="91"/>
<wire x1="248.92" y1="-8.636" x2="248.92" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="R76" gate="G$1" pin="1"/>
<wire x1="248.92" y1="-5.08" x2="254" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="254" y1="-5.08" x2="254" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="IC5" gate="A" pin="6Q"/>
<wire x1="200.66" y1="0" x2="226.06" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$237" class="0">
<segment>
<pinref part="U$40" gate="G$1" pin="B"/>
<pinref part="R77" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$238" class="0">
<segment>
<wire x1="223.52" y1="-2.54" x2="223.52" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="223.52" y1="-7.62" x2="236.22" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-7.62" x2="236.22" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="R77" gate="G$1" pin="1"/>
<wire x1="236.22" y1="-10.16" x2="274.32" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-10.16" x2="274.32" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="IC5" gate="A" pin="7Q"/>
<wire x1="200.66" y1="-2.54" x2="223.52" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$239" class="0">
<segment>
<pinref part="R78" gate="G$1" pin="1"/>
<wire x1="274.32" y1="-12.7" x2="233.68" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-12.7" x2="233.68" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-10.16" x2="220.98" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-10.16" x2="220.98" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="IC5" gate="A" pin="8Q"/>
<wire x1="200.66" y1="-5.08" x2="220.98" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$240" class="0">
<segment>
<wire x1="304.8" y1="-15.24" x2="304.8" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="U$41" gate="G$1" pin="C"/>
<wire x1="299.72" y1="-15.24" x2="304.8" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="304.8" y1="-5.08" x2="332.74" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="332.74" y1="-5.08" x2="332.74" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="332.74" y1="-22.86" x2="370.84" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="370.84" y1="-22.86" x2="370.84" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="370.84" y1="-25.4" x2="386.08" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="386.08" y1="-25.4" x2="386.08" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="386.08" y1="-22.86" x2="419.1" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="419.1" y1="-22.86" x2="419.1" y2="10.16" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="40"/>
<wire x1="419.1" y1="10.16" x2="386.08" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$241" class="0">
<segment>
<wire x1="297.18" y1="-5.08" x2="297.18" y2="0" width="0.1524" layer="91"/>
<wire x1="292.1" y1="-5.08" x2="297.18" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="292.1" y1="-10.16" x2="292.1" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="U$40" gate="G$1" pin="C"/>
<wire x1="289.56" y1="-10.16" x2="292.1" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="297.18" y1="0" x2="304.8" y2="0" width="0.1524" layer="91"/>
<wire x1="304.8" y1="0" x2="304.8" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="304.8" y1="-2.54" x2="332.74" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="332.74" y1="-2.54" x2="332.74" y2="10.16" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="39"/>
<wire x1="332.74" y1="10.16" x2="370.84" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$242" class="0">
<segment>
<wire x1="276.86" y1="-2.54" x2="276.86" y2="2.54" width="0.1524" layer="91"/>
<wire x1="271.78" y1="-2.54" x2="276.86" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="271.78" y1="-7.62" x2="271.78" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="U$39" gate="G$1" pin="C"/>
<wire x1="269.24" y1="-7.62" x2="271.78" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="276.86" y1="2.54" x2="307.34" y2="2.54" width="0.1524" layer="91"/>
<wire x1="307.34" y1="2.54" x2="307.34" y2="0" width="0.1524" layer="91"/>
<wire x1="307.34" y1="0" x2="330.2" y2="0" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="38"/>
<wire x1="386.08" y1="12.7" x2="421.64" y2="12.7" width="0.1524" layer="91"/>
<wire x1="421.64" y1="12.7" x2="421.64" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="421.64" y1="-45.72" x2="330.2" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="330.2" y1="-45.72" x2="330.2" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$243" class="0">
<segment>
<wire x1="251.46" y1="-2.54" x2="251.46" y2="5.08" width="0.1524" layer="91"/>
<wire x1="246.38" y1="-2.54" x2="251.46" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="246.38" y1="-7.62" x2="246.38" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="U$36" gate="G$1" pin="C"/>
<wire x1="243.84" y1="-7.62" x2="246.38" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="251.46" y1="5.08" x2="309.88" y2="5.08" width="0.1524" layer="91"/>
<wire x1="309.88" y1="5.08" x2="309.88" y2="2.54" width="0.1524" layer="91"/>
<wire x1="309.88" y1="2.54" x2="330.2" y2="2.54" width="0.1524" layer="91"/>
<wire x1="330.2" y1="2.54" x2="330.2" y2="12.7" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="37"/>
<wire x1="330.2" y1="12.7" x2="370.84" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$244" class="0">
<segment>
<wire x1="238.76" y1="0" x2="238.76" y2="7.62" width="0.1524" layer="91"/>
<pinref part="U$35" gate="G$1" pin="C"/>
<wire x1="236.22" y1="0" x2="238.76" y2="0" width="0.1524" layer="91"/>
<wire x1="238.76" y1="7.62" x2="312.42" y2="7.62" width="0.1524" layer="91"/>
<wire x1="312.42" y1="7.62" x2="312.42" y2="5.08" width="0.1524" layer="91"/>
<wire x1="312.42" y1="5.08" x2="327.66" y2="5.08" width="0.1524" layer="91"/>
<wire x1="327.66" y1="5.08" x2="327.66" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="327.66" y1="-48.26" x2="424.18" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="424.18" y1="-48.26" x2="424.18" y2="15.24" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="36"/>
<wire x1="424.18" y1="15.24" x2="386.08" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$245" class="0">
<segment>
<wire x1="287.02" y1="22.86" x2="287.02" y2="12.7" width="0.1524" layer="91"/>
<wire x1="274.32" y1="22.86" x2="287.02" y2="22.86" width="0.1524" layer="91"/>
<wire x1="274.32" y1="17.78" x2="274.32" y2="22.86" width="0.1524" layer="91"/>
<wire x1="261.62" y1="17.78" x2="274.32" y2="17.78" width="0.1524" layer="91"/>
<wire x1="261.62" y1="15.24" x2="261.62" y2="17.78" width="0.1524" layer="91"/>
<wire x1="259.08" y1="15.24" x2="261.62" y2="15.24" width="0.1524" layer="91"/>
<wire x1="259.08" y1="12.7" x2="259.08" y2="15.24" width="0.1524" layer="91"/>
<pinref part="U$37" gate="G$1" pin="C"/>
<wire x1="256.54" y1="12.7" x2="259.08" y2="12.7" width="0.1524" layer="91"/>
<wire x1="287.02" y1="12.7" x2="317.5" y2="12.7" width="0.1524" layer="91"/>
<wire x1="317.5" y1="12.7" x2="317.5" y2="10.16" width="0.1524" layer="91"/>
<wire x1="317.5" y1="10.16" x2="325.12" y2="10.16" width="0.1524" layer="91"/>
<wire x1="325.12" y1="10.16" x2="325.12" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="325.12" y1="-50.8" x2="426.72" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="426.72" y1="-50.8" x2="426.72" y2="17.78" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="34"/>
<wire x1="426.72" y1="17.78" x2="386.08" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$247" class="0">
<segment>
<pinref part="R78" gate="G$1" pin="2"/>
<pinref part="U$41" gate="G$1" pin="B"/>
<wire x1="284.48" y1="-12.7" x2="294.64" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="294.64" y1="-12.7" x2="294.64" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$248" class="0">
<segment>
<pinref part="U$38" gate="G$1" pin="C"/>
<wire x1="279.4" y1="10.16" x2="314.96" y2="10.16" width="0.1524" layer="91"/>
<wire x1="314.96" y1="10.16" x2="314.96" y2="7.62" width="0.1524" layer="91"/>
<wire x1="314.96" y1="7.62" x2="327.66" y2="7.62" width="0.1524" layer="91"/>
<wire x1="327.66" y1="7.62" x2="327.66" y2="15.24" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="35"/>
<wire x1="327.66" y1="15.24" x2="370.84" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$153" class="0">
<segment>
<pinref part="U$42" gate="G$1" pin="B"/>
<pinref part="R79" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$154" class="0">
<segment>
<pinref part="U$43" gate="G$1" pin="B"/>
<pinref part="R80" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$155" class="0">
<segment>
<pinref part="U$44" gate="G$1" pin="B"/>
<pinref part="R81" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$158" class="0">
<segment>
<pinref part="U$45" gate="G$1" pin="B"/>
<pinref part="R82" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$159" class="0">
<segment>
<pinref part="R82" gate="G$1" pin="1"/>
<wire x1="241.3" y1="-20.32" x2="236.22" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-20.32" x2="236.22" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-17.78" x2="203.2" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="203.2" y1="-17.78" x2="203.2" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="IC6" gate="A" pin="2Q"/>
<wire x1="200.66" y1="-27.94" x2="203.2" y2="-27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$160" class="0">
<segment>
<pinref part="U$46" gate="G$1" pin="B"/>
<pinref part="R83" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$249" class="0">
<segment>
<pinref part="R83" gate="G$1" pin="1"/>
<wire x1="264.16" y1="-22.86" x2="262.636" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="262.636" y1="-22.86" x2="262.636" y2="-29.21" width="0.1524" layer="91"/>
<wire x1="262.636" y1="-29.21" x2="247.142" y2="-29.21" width="0.1524" layer="91"/>
<wire x1="247.142" y1="-29.21" x2="247.142" y2="-23.622" width="0.1524" layer="91"/>
<wire x1="247.142" y1="-23.622" x2="232.41" y2="-23.622" width="0.1524" layer="91"/>
<wire x1="232.41" y1="-23.622" x2="232.41" y2="-31.242" width="0.1524" layer="91"/>
<wire x1="232.41" y1="-31.242" x2="220.98" y2="-31.242" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-31.242" x2="220.98" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="IC6" gate="A" pin="3Q"/>
<wire x1="200.66" y1="-30.48" x2="220.98" y2="-30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$250" class="0">
<segment>
<pinref part="R81" gate="G$1" pin="1"/>
<wire x1="228.6" y1="-40.64" x2="228.6" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="IC6" gate="A" pin="5Q"/>
<wire x1="200.66" y1="-35.56" x2="228.6" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$251" class="0">
<segment>
<pinref part="U$47" gate="G$1" pin="B"/>
<pinref part="R84" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$252" class="0">
<segment>
<wire x1="226.06" y1="-38.1" x2="226.06" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-43.18" x2="238.76" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-43.18" x2="238.76" y2="-46.736" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-46.736" x2="248.92" y2="-46.736" width="0.1524" layer="91"/>
<wire x1="248.92" y1="-46.736" x2="248.92" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="R84" gate="G$1" pin="1"/>
<wire x1="248.92" y1="-43.18" x2="254" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="254" y1="-43.18" x2="254" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="IC6" gate="A" pin="6Q"/>
<wire x1="200.66" y1="-38.1" x2="226.06" y2="-38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$253" class="0">
<segment>
<pinref part="U$48" gate="G$1" pin="B"/>
<pinref part="R85" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$254" class="0">
<segment>
<wire x1="223.52" y1="-40.64" x2="223.52" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="223.52" y1="-45.72" x2="236.22" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-45.72" x2="236.22" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="R85" gate="G$1" pin="1"/>
<wire x1="236.22" y1="-48.26" x2="274.32" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-48.26" x2="274.32" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="IC6" gate="A" pin="7Q"/>
<wire x1="200.66" y1="-40.64" x2="223.52" y2="-40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$255" class="0">
<segment>
<pinref part="R86" gate="G$1" pin="1"/>
<wire x1="274.32" y1="-50.8" x2="233.68" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-50.8" x2="233.68" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-48.26" x2="220.98" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-48.26" x2="220.98" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="IC6" gate="A" pin="8Q"/>
<wire x1="200.66" y1="-43.18" x2="220.98" y2="-43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$256" class="0">
<segment>
<wire x1="304.8" y1="-53.34" x2="304.8" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="U$49" gate="G$1" pin="C"/>
<wire x1="299.72" y1="-53.34" x2="304.8" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="408.94" y1="-43.18" x2="408.94" y2="0" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="48"/>
<wire x1="408.94" y1="0" x2="386.08" y2="0" width="0.1524" layer="91"/>
<wire x1="304.8" y1="-43.18" x2="408.94" y2="-43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$257" class="0">
<segment>
<wire x1="297.18" y1="-43.18" x2="297.18" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="292.1" y1="-43.18" x2="297.18" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="292.1" y1="-48.26" x2="292.1" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="U$48" gate="G$1" pin="C"/>
<wire x1="289.56" y1="-48.26" x2="292.1" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="297.18" y1="-38.1" x2="304.8" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="304.8" y1="-38.1" x2="304.8" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="347.98" y1="-40.64" x2="347.98" y2="0" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="47"/>
<wire x1="347.98" y1="0" x2="370.84" y2="0" width="0.1524" layer="91"/>
<wire x1="304.8" y1="-40.64" x2="347.98" y2="-40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$258" class="0">
<segment>
<wire x1="276.86" y1="-40.64" x2="276.86" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="271.78" y1="-40.64" x2="276.86" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="271.78" y1="-45.72" x2="271.78" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="U$47" gate="G$1" pin="C"/>
<wire x1="269.24" y1="-45.72" x2="271.78" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="276.86" y1="-35.56" x2="307.34" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="307.34" y1="-35.56" x2="307.34" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="411.48" y1="-38.1" x2="411.48" y2="2.54" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="46"/>
<wire x1="411.48" y1="2.54" x2="386.08" y2="2.54" width="0.1524" layer="91"/>
<wire x1="307.34" y1="-38.1" x2="411.48" y2="-38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$259" class="0">
<segment>
<wire x1="251.46" y1="-40.64" x2="251.46" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="246.38" y1="-40.64" x2="251.46" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="246.38" y1="-45.72" x2="246.38" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="U$44" gate="G$1" pin="C"/>
<wire x1="243.84" y1="-45.72" x2="246.38" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-33.02" x2="309.88" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="309.88" y1="-33.02" x2="309.88" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="345.44" y1="-35.56" x2="345.44" y2="2.54" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="45"/>
<wire x1="345.44" y1="2.54" x2="370.84" y2="2.54" width="0.1524" layer="91"/>
<wire x1="309.88" y1="-35.56" x2="345.44" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$260" class="0">
<segment>
<wire x1="238.76" y1="-38.1" x2="238.76" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="U$43" gate="G$1" pin="C"/>
<wire x1="236.22" y1="-38.1" x2="238.76" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-30.48" x2="312.42" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="312.42" y1="-30.48" x2="312.42" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="414.02" y1="-33.02" x2="414.02" y2="5.08" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="44"/>
<wire x1="414.02" y1="5.08" x2="386.08" y2="5.08" width="0.1524" layer="91"/>
<wire x1="312.42" y1="-33.02" x2="414.02" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$261" class="0">
<segment>
<wire x1="287.02" y1="-15.24" x2="287.02" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-15.24" x2="287.02" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-20.32" x2="274.32" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="261.62" y1="-20.32" x2="274.32" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="261.62" y1="-22.86" x2="261.62" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="259.08" y1="-22.86" x2="261.62" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="259.08" y1="-25.4" x2="259.08" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="U$45" gate="G$1" pin="C"/>
<wire x1="256.54" y1="-25.4" x2="259.08" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="287.02" y1="-25.4" x2="317.5" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="317.5" y1="-25.4" x2="317.5" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="416.56" y1="-27.94" x2="416.56" y2="7.62" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="42"/>
<wire x1="416.56" y1="7.62" x2="386.08" y2="7.62" width="0.1524" layer="91"/>
<wire x1="317.5" y1="-27.94" x2="416.56" y2="-27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$263" class="0">
<segment>
<pinref part="R86" gate="G$1" pin="2"/>
<pinref part="U$49" gate="G$1" pin="B"/>
<wire x1="284.48" y1="-50.8" x2="294.64" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="294.64" y1="-50.8" x2="294.64" y2="-48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$264" class="0">
<segment>
<pinref part="U$46" gate="G$1" pin="C"/>
<wire x1="279.4" y1="-27.94" x2="314.96" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="314.96" y1="-27.94" x2="314.96" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="342.9" y1="-30.48" x2="342.9" y2="5.08" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="43"/>
<wire x1="342.9" y1="5.08" x2="370.84" y2="5.08" width="0.1524" layer="91"/>
<wire x1="314.96" y1="-30.48" x2="342.9" y2="-30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$145" class="0">
<segment>
<pinref part="U$50" gate="G$1" pin="B"/>
<pinref part="R87" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$146" class="0">
<segment>
<pinref part="U$51" gate="G$1" pin="B"/>
<pinref part="R88" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$147" class="0">
<segment>
<pinref part="U$52" gate="G$1" pin="B"/>
<pinref part="R89" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$150" class="0">
<segment>
<pinref part="U$53" gate="G$1" pin="B"/>
<pinref part="R90" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$151" class="0">
<segment>
<pinref part="R90" gate="G$1" pin="1"/>
<wire x1="241.3" y1="-58.42" x2="236.22" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-58.42" x2="236.22" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-55.88" x2="203.2" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="203.2" y1="-55.88" x2="203.2" y2="-66.04" width="0.1524" layer="91"/>
<pinref part="IC8" gate="A" pin="2Q"/>
<wire x1="203.2" y1="-66.04" x2="200.66" y2="-66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$152" class="0">
<segment>
<pinref part="U$54" gate="G$1" pin="B"/>
<pinref part="R91" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$265" class="0">
<segment>
<pinref part="R91" gate="G$1" pin="1"/>
<wire x1="264.16" y1="-60.96" x2="262.636" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="262.636" y1="-60.96" x2="262.636" y2="-67.31" width="0.1524" layer="91"/>
<wire x1="262.636" y1="-67.31" x2="247.142" y2="-67.31" width="0.1524" layer="91"/>
<wire x1="247.142" y1="-67.31" x2="247.142" y2="-61.722" width="0.1524" layer="91"/>
<wire x1="247.142" y1="-61.722" x2="232.41" y2="-61.722" width="0.1524" layer="91"/>
<wire x1="232.41" y1="-61.722" x2="232.41" y2="-69.342" width="0.1524" layer="91"/>
<wire x1="232.41" y1="-69.342" x2="220.98" y2="-69.342" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-69.342" x2="220.98" y2="-68.58" width="0.1524" layer="91"/>
<pinref part="IC8" gate="A" pin="3Q"/>
<wire x1="200.66" y1="-68.58" x2="220.98" y2="-68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$266" class="0">
<segment>
<pinref part="R89" gate="G$1" pin="1"/>
<wire x1="228.6" y1="-78.74" x2="228.6" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="IC8" gate="A" pin="5Q"/>
<wire x1="200.66" y1="-73.66" x2="228.6" y2="-73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$267" class="0">
<segment>
<pinref part="U$55" gate="G$1" pin="B"/>
<pinref part="R92" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$268" class="0">
<segment>
<wire x1="226.06" y1="-76.2" x2="226.06" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-81.28" x2="238.76" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-81.28" x2="238.76" y2="-84.836" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-84.836" x2="248.92" y2="-84.836" width="0.1524" layer="91"/>
<wire x1="248.92" y1="-84.836" x2="248.92" y2="-81.28" width="0.1524" layer="91"/>
<pinref part="R92" gate="G$1" pin="1"/>
<wire x1="248.92" y1="-81.28" x2="254" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="254" y1="-81.28" x2="254" y2="-78.74" width="0.1524" layer="91"/>
<pinref part="IC8" gate="A" pin="6Q"/>
<wire x1="200.66" y1="-76.2" x2="226.06" y2="-76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$269" class="0">
<segment>
<pinref part="U$56" gate="G$1" pin="B"/>
<pinref part="R93" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$270" class="0">
<segment>
<wire x1="223.52" y1="-78.74" x2="223.52" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="223.52" y1="-83.82" x2="236.22" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-83.82" x2="236.22" y2="-86.36" width="0.1524" layer="91"/>
<pinref part="R93" gate="G$1" pin="1"/>
<wire x1="236.22" y1="-86.36" x2="274.32" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-86.36" x2="274.32" y2="-81.28" width="0.1524" layer="91"/>
<pinref part="IC8" gate="A" pin="7Q"/>
<wire x1="200.66" y1="-78.74" x2="223.52" y2="-78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$271" class="0">
<segment>
<pinref part="R94" gate="G$1" pin="1"/>
<wire x1="274.32" y1="-88.9" x2="233.68" y2="-88.9" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-88.9" x2="233.68" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-86.36" x2="220.98" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-86.36" x2="220.98" y2="-81.28" width="0.1524" layer="91"/>
<pinref part="IC8" gate="A" pin="8Q"/>
<wire x1="200.66" y1="-81.28" x2="220.98" y2="-81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$272" class="0">
<segment>
<wire x1="304.8" y1="-91.44" x2="304.8" y2="-81.28" width="0.1524" layer="91"/>
<pinref part="U$57" gate="G$1" pin="C"/>
<wire x1="299.72" y1="-91.44" x2="304.8" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="398.78" y1="-81.28" x2="398.78" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="56"/>
<wire x1="398.78" y1="-10.16" x2="386.08" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="304.8" y1="-81.28" x2="398.78" y2="-81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$275" class="0">
<segment>
<wire x1="251.46" y1="-78.74" x2="251.46" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="246.38" y1="-78.74" x2="251.46" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="246.38" y1="-83.82" x2="246.38" y2="-78.74" width="0.1524" layer="91"/>
<pinref part="U$52" gate="G$1" pin="C"/>
<wire x1="243.84" y1="-83.82" x2="246.38" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-71.12" x2="309.88" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="309.88" y1="-71.12" x2="309.88" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="355.6" y1="-73.66" x2="355.6" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="53"/>
<wire x1="355.6" y1="-7.62" x2="370.84" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="309.88" y1="-73.66" x2="355.6" y2="-73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$276" class="0">
<segment>
<wire x1="238.76" y1="-76.2" x2="238.76" y2="-68.58" width="0.1524" layer="91"/>
<pinref part="U$51" gate="G$1" pin="C"/>
<wire x1="236.22" y1="-76.2" x2="238.76" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-68.58" x2="312.42" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="312.42" y1="-68.58" x2="312.42" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="403.86" y1="-71.12" x2="403.86" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="52"/>
<wire x1="403.86" y1="-5.08" x2="386.08" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="312.42" y1="-71.12" x2="403.86" y2="-71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$279" class="0">
<segment>
<pinref part="R94" gate="G$1" pin="2"/>
<pinref part="U$57" gate="G$1" pin="B"/>
<wire x1="284.48" y1="-88.9" x2="294.64" y2="-88.9" width="0.1524" layer="91"/>
<wire x1="294.64" y1="-88.9" x2="294.64" y2="-86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$280" class="0">
<segment>
<pinref part="U$54" gate="G$1" pin="C"/>
<wire x1="279.4" y1="-66.04" x2="314.96" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="314.96" y1="-66.04" x2="314.96" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="353.06" y1="-68.58" x2="353.06" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="51"/>
<wire x1="353.06" y1="-5.08" x2="370.84" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="314.96" y1="-68.58" x2="353.06" y2="-68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$137" class="0">
<segment>
<pinref part="U$58" gate="G$1" pin="B"/>
<pinref part="R95" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$139" class="0">
<segment>
<pinref part="U$59" gate="G$1" pin="B"/>
<pinref part="R96" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$140" class="0">
<segment>
<pinref part="U$60" gate="G$1" pin="B"/>
<pinref part="R97" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$273" class="0">
<segment>
<pinref part="U$61" gate="G$1" pin="B"/>
<pinref part="R98" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$274" class="0">
<segment>
<pinref part="R98" gate="G$1" pin="1"/>
<wire x1="241.3" y1="-96.52" x2="236.22" y2="-96.52" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-96.52" x2="236.22" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-93.98" x2="203.2" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="203.2" y1="-93.98" x2="203.2" y2="-104.14" width="0.1524" layer="91"/>
<pinref part="IC9" gate="A" pin="2Q"/>
<wire x1="200.66" y1="-104.14" x2="203.2" y2="-104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$277" class="0">
<segment>
<pinref part="U$62" gate="G$1" pin="B"/>
<pinref part="R99" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$281" class="0">
<segment>
<pinref part="R99" gate="G$1" pin="1"/>
<wire x1="264.16" y1="-99.06" x2="262.636" y2="-99.06" width="0.1524" layer="91"/>
<wire x1="262.636" y1="-99.06" x2="262.636" y2="-105.41" width="0.1524" layer="91"/>
<wire x1="262.636" y1="-105.41" x2="247.142" y2="-105.41" width="0.1524" layer="91"/>
<wire x1="247.142" y1="-105.41" x2="247.142" y2="-99.822" width="0.1524" layer="91"/>
<wire x1="247.142" y1="-99.822" x2="232.41" y2="-99.822" width="0.1524" layer="91"/>
<wire x1="232.41" y1="-99.822" x2="232.41" y2="-107.442" width="0.1524" layer="91"/>
<wire x1="232.41" y1="-107.442" x2="220.98" y2="-107.442" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-107.442" x2="220.98" y2="-106.68" width="0.1524" layer="91"/>
<pinref part="IC9" gate="A" pin="3Q"/>
<wire x1="200.66" y1="-106.68" x2="220.98" y2="-106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$282" class="0">
<segment>
<pinref part="R97" gate="G$1" pin="1"/>
<wire x1="228.6" y1="-116.84" x2="228.6" y2="-111.76" width="0.1524" layer="91"/>
<pinref part="IC9" gate="A" pin="5Q"/>
<wire x1="200.66" y1="-111.76" x2="228.6" y2="-111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$283" class="0">
<segment>
<pinref part="U$63" gate="G$1" pin="B"/>
<pinref part="R100" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$284" class="0">
<segment>
<wire x1="226.06" y1="-114.3" x2="226.06" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-119.38" x2="238.76" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-119.38" x2="238.76" y2="-122.936" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-122.936" x2="248.92" y2="-122.936" width="0.1524" layer="91"/>
<wire x1="248.92" y1="-122.936" x2="248.92" y2="-119.38" width="0.1524" layer="91"/>
<pinref part="R100" gate="G$1" pin="1"/>
<wire x1="248.92" y1="-119.38" x2="254" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="254" y1="-119.38" x2="254" y2="-116.84" width="0.1524" layer="91"/>
<pinref part="IC9" gate="A" pin="6Q"/>
<wire x1="200.66" y1="-114.3" x2="226.06" y2="-114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$285" class="0">
<segment>
<pinref part="U$64" gate="G$1" pin="B"/>
<pinref part="R101" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$286" class="0">
<segment>
<wire x1="223.52" y1="-116.84" x2="223.52" y2="-121.92" width="0.1524" layer="91"/>
<wire x1="223.52" y1="-121.92" x2="236.22" y2="-121.92" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-121.92" x2="236.22" y2="-124.46" width="0.1524" layer="91"/>
<pinref part="R101" gate="G$1" pin="1"/>
<wire x1="236.22" y1="-124.46" x2="274.32" y2="-124.46" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-124.46" x2="274.32" y2="-119.38" width="0.1524" layer="91"/>
<pinref part="IC9" gate="A" pin="7Q"/>
<wire x1="200.66" y1="-116.84" x2="223.52" y2="-116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$287" class="0">
<segment>
<pinref part="R102" gate="G$1" pin="1"/>
<wire x1="274.32" y1="-127" x2="233.68" y2="-127" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-127" x2="233.68" y2="-124.46" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-124.46" x2="220.98" y2="-124.46" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-124.46" x2="220.98" y2="-119.38" width="0.1524" layer="91"/>
<pinref part="IC9" gate="A" pin="8Q"/>
<wire x1="200.66" y1="-119.38" x2="220.98" y2="-119.38" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$288" class="0">
<segment>
<wire x1="304.8" y1="-129.54" x2="304.8" y2="-119.38" width="0.1524" layer="91"/>
<pinref part="U$65" gate="G$1" pin="C"/>
<wire x1="299.72" y1="-129.54" x2="304.8" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-119.38" x2="388.62" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="64"/>
<wire x1="388.62" y1="-20.32" x2="386.08" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="304.8" y1="-119.38" x2="388.62" y2="-119.38" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$292" class="0">
<segment>
<wire x1="238.76" y1="-114.3" x2="238.76" y2="-106.68" width="0.1524" layer="91"/>
<pinref part="U$59" gate="G$1" pin="C"/>
<wire x1="236.22" y1="-114.3" x2="238.76" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-106.68" x2="312.42" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="312.42" y1="-106.68" x2="312.42" y2="-109.22" width="0.1524" layer="91"/>
<wire x1="393.7" y1="-109.22" x2="393.7" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="60"/>
<wire x1="393.7" y1="-15.24" x2="386.08" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="312.42" y1="-109.22" x2="393.7" y2="-109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$295" class="0">
<segment>
<pinref part="R102" gate="G$1" pin="2"/>
<pinref part="U$65" gate="G$1" pin="B"/>
<wire x1="284.48" y1="-127" x2="294.64" y2="-127" width="0.1524" layer="91"/>
<wire x1="294.64" y1="-127" x2="294.64" y2="-124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$296" class="0">
<segment>
<pinref part="U$62" gate="G$1" pin="C"/>
<wire x1="279.4" y1="-104.14" x2="314.96" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="314.96" y1="-104.14" x2="314.96" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="363.22" y1="-106.68" x2="363.22" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="59"/>
<wire x1="363.22" y1="-15.24" x2="370.84" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="314.96" y1="-106.68" x2="363.22" y2="-106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$129" class="0">
<segment>
<pinref part="IC7" gate="A" pin="1Q"/>
<pinref part="R39" gate="G$1" pin="1"/>
<wire x1="200.66" y1="165.1" x2="213.36" y2="165.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$132" class="0">
<segment>
<pinref part="IC7" gate="A" pin="4Q"/>
<pinref part="R40" gate="G$1" pin="1"/>
<wire x1="200.66" y1="157.48" x2="220.98" y2="157.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$133" class="0">
<segment>
<pinref part="IC2" gate="A" pin="1Q"/>
<pinref part="R47" gate="G$1" pin="1"/>
<wire x1="200.66" y1="127" x2="213.36" y2="127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$135" class="0">
<segment>
<pinref part="IC2" gate="A" pin="4Q"/>
<pinref part="R48" gate="G$1" pin="1"/>
<wire x1="200.66" y1="119.38" x2="220.98" y2="119.38" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$167" class="0">
<segment>
<pinref part="IC3" gate="A" pin="1Q"/>
<pinref part="R55" gate="G$1" pin="1"/>
<wire x1="200.66" y1="88.9" x2="213.36" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$168" class="0">
<segment>
<pinref part="IC3" gate="A" pin="4Q"/>
<pinref part="R56" gate="G$1" pin="1"/>
<wire x1="200.66" y1="81.28" x2="220.98" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$113" class="0">
<segment>
<pinref part="IC4" gate="A" pin="1Q"/>
<pinref part="R63" gate="G$1" pin="1"/>
<wire x1="200.66" y1="50.8" x2="213.36" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$114" class="0">
<segment>
<pinref part="IC4" gate="A" pin="4Q"/>
<pinref part="R64" gate="G$1" pin="1"/>
<wire x1="200.66" y1="43.18" x2="220.98" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$124" class="0">
<segment>
<pinref part="IC5" gate="A" pin="1Q"/>
<pinref part="R71" gate="G$1" pin="1"/>
<wire x1="200.66" y1="12.7" x2="213.36" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$125" class="0">
<segment>
<pinref part="IC5" gate="A" pin="4Q"/>
<pinref part="R72" gate="G$1" pin="1"/>
<wire x1="200.66" y1="5.08" x2="220.98" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$156" class="0">
<segment>
<pinref part="IC6" gate="A" pin="1Q"/>
<pinref part="R79" gate="G$1" pin="1"/>
<wire x1="200.66" y1="-25.4" x2="213.36" y2="-25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$157" class="0">
<segment>
<pinref part="IC6" gate="A" pin="4Q"/>
<pinref part="R80" gate="G$1" pin="1"/>
<wire x1="200.66" y1="-33.02" x2="220.98" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$148" class="0">
<segment>
<pinref part="IC8" gate="A" pin="4Q"/>
<pinref part="R88" gate="G$1" pin="1"/>
<wire x1="200.66" y1="-71.12" x2="220.98" y2="-71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$149" class="0">
<segment>
<pinref part="IC8" gate="A" pin="1Q"/>
<pinref part="R87" gate="G$1" pin="1"/>
<wire x1="200.66" y1="-63.5" x2="213.36" y2="-63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$141" class="0">
<segment>
<pinref part="IC9" gate="A" pin="1Q"/>
<pinref part="R95" gate="G$1" pin="1"/>
<wire x1="200.66" y1="-101.6" x2="213.36" y2="-101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$143" class="0">
<segment>
<pinref part="IC9" gate="A" pin="4Q"/>
<pinref part="R96" gate="G$1" pin="1"/>
<wire x1="200.66" y1="-109.22" x2="220.98" y2="-109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$111" class="0">
<segment>
<wire x1="261.62" y1="124.46" x2="261.62" y2="127" width="0.1524" layer="91"/>
<wire x1="254" y1="124.46" x2="261.62" y2="124.46" width="0.1524" layer="91"/>
<wire x1="254" y1="127" x2="254" y2="124.46" width="0.1524" layer="91"/>
<wire x1="231.14" y1="127" x2="254" y2="127" width="0.1524" layer="91"/>
<wire x1="231.14" y1="121.92" x2="231.14" y2="127" width="0.1524" layer="91"/>
<pinref part="U$10" gate="G$1" pin="C"/>
<wire x1="228.6" y1="121.92" x2="231.14" y2="121.92" width="0.1524" layer="91"/>
<wire x1="261.62" y1="127" x2="275.59" y2="127" width="0.1524" layer="91"/>
<wire x1="275.59" y1="127" x2="275.59" y2="123.19" width="0.1524" layer="91"/>
<wire x1="355.6" y1="129.54" x2="281.94" y2="129.54" width="0.1524" layer="91"/>
<wire x1="355.6" y1="129.54" x2="355.6" y2="48.26" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="9"/>
<wire x1="355.6" y1="48.26" x2="370.84" y2="48.26" width="0.1524" layer="91"/>
<wire x1="275.59" y1="123.19" x2="281.94" y2="123.19" width="0.1524" layer="91"/>
<wire x1="281.94" y1="123.19" x2="281.94" y2="129.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$180" class="0">
<segment>
<wire x1="261.62" y1="86.36" x2="261.62" y2="88.9" width="0.1524" layer="91"/>
<wire x1="254" y1="86.36" x2="261.62" y2="86.36" width="0.1524" layer="91"/>
<wire x1="254" y1="88.9" x2="254" y2="86.36" width="0.1524" layer="91"/>
<wire x1="231.14" y1="88.9" x2="254" y2="88.9" width="0.1524" layer="91"/>
<wire x1="231.14" y1="83.82" x2="231.14" y2="88.9" width="0.1524" layer="91"/>
<pinref part="U$18" gate="G$1" pin="C"/>
<wire x1="228.6" y1="83.82" x2="231.14" y2="83.82" width="0.1524" layer="91"/>
<wire x1="261.62" y1="88.9" x2="274.828" y2="88.9" width="0.1524" layer="91"/>
<wire x1="274.828" y1="88.9" x2="274.828" y2="85.09" width="0.1524" layer="91"/>
<wire x1="281.94" y1="91.44" x2="320.04" y2="91.44" width="0.1524" layer="91"/>
<wire x1="320.04" y1="91.44" x2="320.04" y2="88.9" width="0.1524" layer="91"/>
<wire x1="345.44" y1="88.9" x2="345.44" y2="38.1" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="17"/>
<wire x1="345.44" y1="38.1" x2="370.84" y2="38.1" width="0.1524" layer="91"/>
<wire x1="320.04" y1="88.9" x2="345.44" y2="88.9" width="0.1524" layer="91"/>
<wire x1="274.828" y1="85.09" x2="281.94" y2="85.09" width="0.1524" layer="91"/>
<wire x1="281.94" y1="85.09" x2="281.94" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$181" class="0">
<segment>
<wire x1="281.94" y1="53.34" x2="320.04" y2="53.34" width="0.1524" layer="91"/>
<wire x1="320.04" y1="53.34" x2="320.04" y2="50.8" width="0.1524" layer="91"/>
<wire x1="335.28" y1="50.8" x2="335.28" y2="27.94" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="25"/>
<wire x1="335.28" y1="27.94" x2="370.84" y2="27.94" width="0.1524" layer="91"/>
<wire x1="320.04" y1="50.8" x2="335.28" y2="50.8" width="0.1524" layer="91"/>
<wire x1="281.94" y1="53.34" x2="281.94" y2="46.736" width="0.1524" layer="91"/>
<wire x1="281.94" y1="46.736" x2="274.32" y2="46.736" width="0.1524" layer="91"/>
<wire x1="274.32" y1="46.736" x2="274.32" y2="50.8" width="0.1524" layer="91"/>
<wire x1="261.62" y1="48.26" x2="261.62" y2="50.8" width="0.1524" layer="91"/>
<wire x1="254" y1="48.26" x2="261.62" y2="48.26" width="0.1524" layer="91"/>
<wire x1="254" y1="50.8" x2="254" y2="48.26" width="0.1524" layer="91"/>
<wire x1="231.14" y1="50.8" x2="254" y2="50.8" width="0.1524" layer="91"/>
<wire x1="231.14" y1="45.72" x2="231.14" y2="50.8" width="0.1524" layer="91"/>
<pinref part="U$26" gate="G$1" pin="C"/>
<wire x1="228.6" y1="45.72" x2="231.14" y2="45.72" width="0.1524" layer="91"/>
<wire x1="274.32" y1="50.8" x2="261.62" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$204" class="0">
<segment>
<wire x1="261.62" y1="10.16" x2="261.62" y2="12.7" width="0.1524" layer="91"/>
<wire x1="254" y1="10.16" x2="261.62" y2="10.16" width="0.1524" layer="91"/>
<pinref part="U$34" gate="G$1" pin="C"/>
<wire x1="228.6" y1="7.62" x2="231.14" y2="7.62" width="0.1524" layer="91"/>
<wire x1="231.14" y1="7.62" x2="231.14" y2="12.7" width="0.1524" layer="91"/>
<wire x1="231.14" y1="12.7" x2="254" y2="12.7" width="0.1524" layer="91"/>
<wire x1="254" y1="12.7" x2="254" y2="10.16" width="0.1524" layer="91"/>
<wire x1="261.62" y1="12.7" x2="274.32" y2="12.7" width="0.1524" layer="91"/>
<wire x1="274.32" y1="12.7" x2="274.32" y2="8.89" width="0.1524" layer="91"/>
<wire x1="281.94" y1="15.24" x2="320.04" y2="15.24" width="0.1524" layer="91"/>
<wire x1="320.04" y1="15.24" x2="320.04" y2="12.7" width="0.1524" layer="91"/>
<wire x1="325.12" y1="12.7" x2="325.12" y2="17.78" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="33"/>
<wire x1="325.12" y1="17.78" x2="370.84" y2="17.78" width="0.1524" layer="91"/>
<wire x1="320.04" y1="12.7" x2="325.12" y2="12.7" width="0.1524" layer="91"/>
<wire x1="274.32" y1="8.89" x2="281.94" y2="8.89" width="0.1524" layer="91"/>
<wire x1="281.94" y1="8.89" x2="281.94" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$205" class="0">
<segment>
<wire x1="261.62" y1="-27.94" x2="261.62" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="254" y1="-27.94" x2="261.62" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="254" y1="-25.4" x2="254" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-25.4" x2="254" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-30.48" x2="231.14" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="U$42" gate="G$1" pin="C"/>
<wire x1="228.6" y1="-30.48" x2="231.14" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="261.62" y1="-25.4" x2="274.066" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="274.066" y1="-25.4" x2="274.066" y2="-29.21" width="0.1524" layer="91"/>
<wire x1="281.94" y1="-22.86" x2="320.04" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="320.04" y1="-22.86" x2="320.04" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="340.36" y1="-25.4" x2="340.36" y2="7.62" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="41"/>
<wire x1="340.36" y1="7.62" x2="370.84" y2="7.62" width="0.1524" layer="91"/>
<wire x1="320.04" y1="-25.4" x2="340.36" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="274.066" y1="-29.21" x2="281.94" y2="-29.21" width="0.1524" layer="91"/>
<wire x1="281.94" y1="-29.21" x2="281.94" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$222" class="0">
<segment>
<wire x1="261.62" y1="-66.04" x2="261.62" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="254" y1="-66.04" x2="261.62" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="254" y1="-63.5" x2="254" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-63.5" x2="254" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-68.58" x2="231.14" y2="-63.5" width="0.1524" layer="91"/>
<pinref part="U$50" gate="G$1" pin="C"/>
<wire x1="228.6" y1="-68.58" x2="231.14" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="261.62" y1="-63.5" x2="273.812" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="273.812" y1="-63.5" x2="273.812" y2="-67.564" width="0.1524" layer="91"/>
<wire x1="281.94" y1="-60.96" x2="320.04" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="320.04" y1="-60.96" x2="320.04" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="350.52" y1="-63.5" x2="350.52" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="49"/>
<wire x1="350.52" y1="-2.54" x2="370.84" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="320.04" y1="-63.5" x2="350.52" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="273.812" y1="-67.564" x2="281.94" y2="-67.564" width="0.1524" layer="91"/>
<wire x1="281.94" y1="-67.564" x2="281.94" y2="-60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$230" class="0">
<segment>
<wire x1="261.62" y1="-104.14" x2="261.62" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="254" y1="-104.14" x2="261.62" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="254" y1="-101.6" x2="254" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-101.6" x2="254" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-106.68" x2="231.14" y2="-101.6" width="0.1524" layer="91"/>
<pinref part="U$58" gate="G$1" pin="C"/>
<wire x1="228.6" y1="-106.68" x2="231.14" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="261.62" y1="-101.6" x2="274.32" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-101.6" x2="274.32" y2="-105.664" width="0.1524" layer="91"/>
<wire x1="281.94" y1="-99.06" x2="320.04" y2="-99.06" width="0.1524" layer="91"/>
<wire x1="320.04" y1="-99.06" x2="320.04" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="360.68" y1="-101.6" x2="360.68" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="57"/>
<wire x1="360.68" y1="-12.7" x2="370.84" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="320.04" y1="-101.6" x2="360.68" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-105.664" x2="281.94" y2="-105.664" width="0.1524" layer="91"/>
<wire x1="281.94" y1="-105.664" x2="281.94" y2="-99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$164" class="0">
<segment>
<wire x1="261.62" y1="162.56" x2="261.62" y2="165.1" width="0.1524" layer="91"/>
<wire x1="254" y1="162.56" x2="261.62" y2="162.56" width="0.1524" layer="91"/>
<wire x1="254" y1="165.1" x2="254" y2="162.56" width="0.1524" layer="91"/>
<wire x1="231.14" y1="165.1" x2="254" y2="165.1" width="0.1524" layer="91"/>
<wire x1="231.14" y1="160.02" x2="231.14" y2="165.1" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="C"/>
<wire x1="228.6" y1="160.02" x2="231.14" y2="160.02" width="0.1524" layer="91"/>
<wire x1="261.62" y1="165.1" x2="274.574" y2="165.1" width="0.1524" layer="91"/>
<wire x1="274.574" y1="165.1" x2="274.574" y2="161.29" width="0.1524" layer="91"/>
<wire x1="365.76" y1="167.64" x2="365.76" y2="58.42" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="1"/>
<wire x1="365.76" y1="58.42" x2="370.84" y2="58.42" width="0.1524" layer="91"/>
<wire x1="281.94" y1="167.64" x2="365.76" y2="167.64" width="0.1524" layer="91"/>
<wire x1="274.574" y1="161.29" x2="281.94" y2="161.29" width="0.1524" layer="91"/>
<wire x1="281.94" y1="161.29" x2="281.94" y2="167.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$278" class="0">
<segment>
<wire x1="119.38" y1="5.08" x2="96.52" y2="5.08" width="0.1524" layer="91"/>
<pinref part="Q4" gate="G$1" pin="D"/>
<pinref part="JP1" gate="G$1" pin="P2"/>
<wire x1="119.38" y1="5.08" x2="119.38" y2="-50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$289" class="0">
<segment>
<wire x1="96.52" y1="-5.08" x2="121.92" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="Q5" gate="G$1" pin="D"/>
<pinref part="JP1" gate="G$1" pin="P3"/>
<wire x1="121.92" y1="-5.08" x2="121.92" y2="-50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="Q2" gate="G$1" pin="D"/>
<pinref part="JP1" gate="G$1" pin="P0"/>
<wire x1="96.52" y1="25.4" x2="114.3" y2="25.4" width="0.1524" layer="91"/>
<wire x1="114.3" y1="25.4" x2="114.3" y2="-50.8" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="104,1,86.36,71.12,JP3,+5V,VCC,,,"/>
<approved hash="202,1,-58.42,38.1,IC10,OSCI,,,,"/>
<approved hash="202,1,-30.48,43.18,IC10,!CTS,,,,"/>
<approved hash="202,1,-30.48,38.1,IC10,!DSR,,,,"/>
<approved hash="202,1,-30.48,35.56,IC10,!DCD,,,,"/>
<approved hash="202,1,-30.48,33.02,IC10,!RI,,,,"/>
<approved hash="104,1,-58.42,48.26,IC10,VCCIO,VCC,,,"/>
<approved hash="104,1,-91.44,-48.26,IC12,VDDA,VCC,,,"/>
<approved hash="104,1,-91.44,-50.8,IC12,VSSA,GND,,,"/>
<approved hash="104,1,-91.44,-55.88,IC12,GND,N$60,,,"/>
<approved hash="104,1,38.1,-124.46,JP6,+5V,VCC,,,"/>
<approved hash="104,1,-2.54,76.2,IC14,AVCC,VCC,,,"/>
<approved hash="104,1,-2.54,58.42,IC14,GND1,GND,,,"/>
<approved hash="104,1,-2.54,53.34,IC14,GND2,GND,,,"/>
<approved hash="104,1,-2.54,68.58,IC14,VCC1,VCC,,,"/>
<approved hash="104,1,-2.54,63.5,IC14,VCC2,VCC,,,"/>
<approved hash="104,1,-73.66,-86.36,IC1,AVCC,VCC,,,"/>
<approved hash="202,1,-106.68,30.48,X2-CON,4,,,,"/>
</errors>
</schematic>
</drawing>
</eagle>
