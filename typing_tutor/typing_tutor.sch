<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SDC_MISO" />
        <signal name="SDC_SS" />
        <signal name="SDC_SCK" />
        <signal name="SDC_MOSI" />
        <signal name="XLXN_5(7:0)" />
        <signal name="btn_north" />
        <signal name="Clk_50MHz" />
        <signal name="FExt(1:0)" />
        <signal name="FName(7:0)" />
        <signal name="LED_7" />
        <signal name="XLXN_7" />
        <signal name="btn_west" />
        <signal name="XLXN_794" />
        <signal name="XLXN_66" />
        <signal name="XLXN_17" />
        <signal name="LED(1:0)" />
        <signal name="VGA_VS" />
        <signal name="VGA_HS" />
        <signal name="XLXN_564" />
        <signal name="XLXN_612" />
        <signal name="XLXN_613" />
        <signal name="XLXN_614" />
        <signal name="XLXN_796" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="VGA_R" />
        <signal name="XLXN_795" />
        <signal name="FExt(1)" />
        <signal name="FExt(0)" />
        <signal name="FName(7)" />
        <signal name="FName(5)" />
        <signal name="FName(4)" />
        <signal name="FName(6)" />
        <signal name="FName(3)" />
        <signal name="SW_3" />
        <signal name="FName(0)" />
        <signal name="SW_0" />
        <signal name="FName(1)" />
        <signal name="SW_1" />
        <signal name="FName(2)" />
        <signal name="SW_2" />
        <port polarity="Input" name="SDC_MISO" />
        <port polarity="Output" name="SDC_SS" />
        <port polarity="Output" name="SDC_SCK" />
        <port polarity="Output" name="SDC_MOSI" />
        <port polarity="Input" name="btn_north" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="LED_7" />
        <port polarity="Input" name="btn_west" />
        <port polarity="Output" name="LED(1:0)" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Input" name="SW_3" />
        <port polarity="Input" name="SW_0" />
        <port polarity="Input" name="SW_1" />
        <port polarity="Input" name="SW_2" />
        <blockdef name="SDC_FileReader">
            <timestamp>2021-11-9T18:15:58</timestamp>
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="416" y1="96" y2="96" x1="352" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="20" height="24" />
            <line x2="416" y1="32" y2="32" x1="352" />
            <rect width="64" x="352" y="148" height="24" />
            <line x2="416" y1="160" y2="160" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <line x2="352" y1="-288" y2="-288" x1="416" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="288" x="64" y="-320" height="512" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
        </blockdef>
        <blockdef name="VGAtxt48x20">
            <timestamp>2008-9-4T8:59:2</timestamp>
            <rect width="304" x="64" y="-640" height="728" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-448" y2="-448" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <block symbolname="SDC_FileReader" name="XLXI_1">
            <blockpin signalname="SDC_MISO" name="SDC_MISO" />
            <blockpin signalname="btn_north" name="Start" />
            <blockpin signalname="FName(7:0)" name="FName(7:0)" />
            <blockpin signalname="XLXN_794" name="Reset" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_7" name="DO_Pop" />
            <blockpin signalname="btn_west" name="Abort" />
            <blockpin signalname="SDC_MOSI" name="SDC_MOSI" />
            <blockpin signalname="SDC_SCK" name="SDC_SCK" />
            <blockpin signalname="SDC_SS" name="SDC_SS" />
            <blockpin signalname="LED(1:0)" name="Error(1:0)" />
            <blockpin signalname="XLXN_5(7:0)" name="DO(7:0)" />
            <blockpin signalname="XLXN_66" name="DO_Rdy" />
            <blockpin signalname="LED_7" name="Busy" />
            <blockpin signalname="FExt(1:0)" name="FExt(1:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="gnd" name="XLXI_136">
            <blockpin signalname="XLXN_794" name="G" />
        </block>
        <block symbolname="and2b1" name="XLXI_9">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="XLXN_66" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_27">
            <blockpin signalname="XLXN_612" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_28">
            <blockpin signalname="XLXN_613" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_29">
            <blockpin signalname="XLXN_614" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_137">
            <blockpin signalname="XLXN_795" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_138">
            <blockpin signalname="XLXN_796" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_3">
            <blockpin signalname="XLXN_564" name="I" />
            <blockpin signalname="VGA_R" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_4">
            <blockpin signalname="XLXN_564" name="I" />
            <blockpin signalname="VGA_G" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_5">
            <blockpin signalname="XLXN_564" name="I" />
            <blockpin signalname="VGA_B" name="O" />
        </block>
        <block symbolname="VGAtxt48x20" name="XLXI_2">
            <blockpin signalname="XLXN_5(7:0)" name="Char_DI(7:0)" />
            <blockpin signalname="XLXN_795" name="Home" />
            <blockpin signalname="btn_west" name="NewLine" />
            <blockpin signalname="XLXN_796" name="Goto00" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_612" name="CursorOn" />
            <blockpin signalname="XLXN_613" name="ScrollEn" />
            <blockpin signalname="XLXN_614" name="ScrollClear" />
            <blockpin signalname="XLXN_17" name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_564" name="VGA_RGB" />
            <blockpin signalname="XLXN_7" name="Char_WE" />
        </block>
        <block symbolname="gnd" name="XLXI_32">
            <blockpin signalname="FName(7)" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_37">
            <blockpin signalname="FName(6)" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_42">
            <blockpin signalname="SW_3" name="I" />
            <blockpin signalname="FName(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_45">
            <blockpin signalname="SW_0" name="I" />
            <blockpin signalname="FName(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_44">
            <blockpin signalname="SW_1" name="I" />
            <blockpin signalname="FName(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_43">
            <blockpin signalname="SW_2" name="I" />
            <blockpin signalname="FName(2)" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_30">
            <blockpin signalname="FExt(1)" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_31">
            <blockpin signalname="FExt(0)" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_203">
            <blockpin signalname="FName(5)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_204">
            <blockpin signalname="FName(4)" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="SDC_MISO">
            <wire x2="2608" y1="448" y2="448" x1="2336" />
        </branch>
        <branch name="SDC_SS">
            <wire x2="2608" y1="640" y2="640" x1="2336" />
        </branch>
        <branch name="SDC_SCK">
            <wire x2="2608" y1="576" y2="576" x1="2336" />
        </branch>
        <branch name="btn_north">
            <wire x2="1920" y1="448" y2="448" x1="288" />
        </branch>
        <branch name="FName(7:0)">
            <wire x2="1232" y1="800" y2="800" x1="1056" />
            <wire x2="1056" y1="800" y2="896" x1="1056" />
            <wire x2="1056" y1="896" y2="960" x1="1056" />
            <wire x2="1056" y1="960" y2="1024" x1="1056" />
            <wire x2="1056" y1="1024" y2="1088" x1="1056" />
            <wire x2="1056" y1="1088" y2="1152" x1="1056" />
            <wire x2="1056" y1="1152" y2="1232" x1="1056" />
            <wire x2="1056" y1="1232" y2="1328" x1="1056" />
            <wire x2="1056" y1="1328" y2="1424" x1="1056" />
            <wire x2="1056" y1="1424" y2="1488" x1="1056" />
            <wire x2="1232" y1="512" y2="800" x1="1232" />
            <wire x2="1920" y1="512" y2="512" x1="1232" />
        </branch>
        <branch name="LED_7">
            <wire x2="2624" y1="832" y2="832" x1="2336" />
        </branch>
        <branch name="XLXN_794">
            <wire x2="1920" y1="768" y2="768" x1="1904" />
        </branch>
        <branch name="LED(1:0)">
            <wire x2="2624" y1="896" y2="896" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="288" y="512" name="btn_west" orien="R180" />
        <iomarker fontsize="28" x="288" y="448" name="btn_north" orien="R180" />
        <instance x="1776" y="704" name="XLXI_136" orien="R90" />
        <iomarker fontsize="28" x="2624" y="832" name="LED_7" orien="R0" />
        <iomarker fontsize="28" x="2624" y="896" name="LED(1:0)" orien="R0" />
        <branch name="btn_west">
            <wire x2="1152" y1="512" y2="512" x1="288" />
            <wire x2="1152" y1="512" y2="1376" x1="1152" />
            <wire x2="1936" y1="1376" y2="1376" x1="1152" />
            <wire x2="1152" y1="480" y2="512" x1="1152" />
            <wire x2="1824" y1="480" y2="480" x1="1152" />
            <wire x2="1824" y1="480" y2="704" x1="1824" />
            <wire x2="1920" y1="704" y2="704" x1="1824" />
        </branch>
        <branch name="XLXN_5(7:0)">
            <wire x2="1904" y1="1056" y2="1152" x1="1904" />
            <wire x2="1936" y1="1152" y2="1152" x1="1904" />
            <wire x2="2352" y1="1056" y2="1056" x1="1904" />
            <wire x2="2352" y1="768" y2="768" x1="2336" />
            <wire x2="2352" y1="768" y2="1056" x1="2352" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="2816" y1="1216" y2="1216" x1="2368" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="2816" y1="1152" y2="1152" x1="2368" />
        </branch>
        <branch name="XLXN_564">
            <wire x2="2464" y1="1280" y2="1280" x1="2368" />
            <wire x2="2464" y1="1280" y2="1344" x1="2464" />
            <wire x2="2544" y1="1344" y2="1344" x1="2464" />
            <wire x2="2464" y1="1344" y2="1408" x1="2464" />
            <wire x2="2544" y1="1408" y2="1408" x1="2464" />
            <wire x2="2544" y1="1280" y2="1280" x1="2464" />
        </branch>
        <branch name="XLXN_612">
            <wire x2="1936" y1="1536" y2="1536" x1="1904" />
        </branch>
        <instance x="1904" y="1600" name="XLXI_27" orien="R270" />
        <branch name="XLXN_613">
            <wire x2="1936" y1="1600" y2="1600" x1="1904" />
        </branch>
        <instance x="1904" y="1664" name="XLXI_28" orien="R270" />
        <branch name="XLXN_614">
            <wire x2="1936" y1="1664" y2="1664" x1="1904" />
        </branch>
        <instance x="1904" y="1728" name="XLXI_29" orien="R270" />
        <instance x="1776" y="1248" name="XLXI_137" orien="R90" />
        <branch name="XLXN_796">
            <wire x2="1936" y1="1440" y2="1440" x1="1904" />
        </branch>
        <instance x="1776" y="1376" name="XLXI_138" orien="R90" />
        <branch name="VGA_G">
            <wire x2="2816" y1="1344" y2="1344" x1="2768" />
        </branch>
        <branch name="VGA_B">
            <wire x2="2816" y1="1408" y2="1408" x1="2768" />
        </branch>
        <branch name="VGA_R">
            <wire x2="2816" y1="1280" y2="1280" x1="2768" />
        </branch>
        <instance x="2544" y="1312" name="XLXI_3" orien="R0" />
        <instance x="2544" y="1376" name="XLXI_4" orien="R0" />
        <instance x="2544" y="1440" name="XLXI_5" orien="R0" />
        <branch name="XLXN_795">
            <wire x2="1936" y1="1312" y2="1312" x1="1904" />
        </branch>
        <instance x="1936" y="1760" name="XLXI_2" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2816" y="1152" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="2816" y="1216" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="2816" y="1344" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="2816" y="1408" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="2816" y="1280" name="VGA_R" orien="R0" />
        <bustap x2="896" y1="720" y2="720" x1="992" />
        <bustap x2="896" y1="784" y2="784" x1="992" />
        <branch name="FExt(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="864" y="720" type="branch" />
            <wire x2="864" y1="720" y2="720" x1="752" />
            <wire x2="896" y1="720" y2="720" x1="864" />
        </branch>
        <branch name="FExt(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="864" y="784" type="branch" />
            <wire x2="864" y1="784" y2="784" x1="752" />
            <wire x2="896" y1="784" y2="784" x1="864" />
        </branch>
        <bustap x2="960" y1="896" y2="896" x1="1056" />
        <bustap x2="960" y1="960" y2="960" x1="1056" />
        <bustap x2="960" y1="1024" y2="1024" x1="1056" />
        <bustap x2="960" y1="1088" y2="1088" x1="1056" />
        <branch name="FName(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="928" y="896" type="branch" />
            <wire x2="928" y1="896" y2="896" x1="752" />
            <wire x2="960" y1="896" y2="896" x1="928" />
        </branch>
        <branch name="FName(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="928" y="1024" type="branch" />
            <wire x2="928" y1="1024" y2="1024" x1="752" />
            <wire x2="960" y1="1024" y2="1024" x1="928" />
        </branch>
        <branch name="FName(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="928" y="1088" type="branch" />
            <wire x2="928" y1="1088" y2="1088" x1="752" />
            <wire x2="960" y1="1088" y2="1088" x1="928" />
        </branch>
        <branch name="FName(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="928" y="960" type="branch" />
            <wire x2="928" y1="960" y2="960" x1="752" />
            <wire x2="960" y1="960" y2="960" x1="928" />
        </branch>
        <bustap x2="960" y1="1152" y2="1152" x1="1056" />
        <branch name="FName(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="928" y="1152" type="branch" />
            <wire x2="928" y1="1152" y2="1152" x1="544" />
            <wire x2="960" y1="1152" y2="1152" x1="928" />
        </branch>
        <instance x="624" y="832" name="XLXI_32" orien="R90" />
        <instance x="624" y="896" name="XLXI_37" orien="R90" />
        <branch name="SW_3">
            <wire x2="320" y1="1152" y2="1152" x1="288" />
        </branch>
        <instance x="320" y="1184" name="XLXI_42" orien="R0" />
        <iomarker fontsize="28" x="288" y="1152" name="SW_3" orien="R180" />
        <bustap x2="960" y1="1424" y2="1424" x1="1056" />
        <branch name="FName(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="928" y="1424" type="branch" />
            <wire x2="928" y1="1424" y2="1424" x1="544" />
            <wire x2="960" y1="1424" y2="1424" x1="928" />
        </branch>
        <branch name="SW_0">
            <wire x2="320" y1="1424" y2="1424" x1="288" />
        </branch>
        <instance x="320" y="1456" name="XLXI_45" orien="R0" />
        <iomarker fontsize="28" x="288" y="1424" name="SW_0" orien="R180" />
        <bustap x2="960" y1="1328" y2="1328" x1="1056" />
        <branch name="FName(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="928" y="1328" type="branch" />
            <wire x2="928" y1="1328" y2="1328" x1="544" />
            <wire x2="960" y1="1328" y2="1328" x1="928" />
        </branch>
        <branch name="SW_1">
            <wire x2="320" y1="1328" y2="1328" x1="288" />
        </branch>
        <instance x="320" y="1360" name="XLXI_44" orien="R0" />
        <iomarker fontsize="28" x="288" y="1328" name="SW_1" orien="R180" />
        <bustap x2="960" y1="1232" y2="1232" x1="1056" />
        <branch name="FName(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="928" y="1232" type="branch" />
            <wire x2="928" y1="1232" y2="1232" x1="544" />
            <wire x2="960" y1="1232" y2="1232" x1="928" />
        </branch>
        <branch name="SW_2">
            <wire x2="320" y1="1232" y2="1232" x1="288" />
        </branch>
        <instance x="320" y="1264" name="XLXI_43" orien="R0" />
        <iomarker fontsize="28" x="288" y="1232" name="SW_2" orien="R180" />
        <iomarker fontsize="28" x="320" y="1824" name="Clk_50MHz" orien="R180" />
        <iomarker fontsize="28" x="2608" y="640" name="SDC_SS" orien="R0" />
        <iomarker fontsize="28" x="2608" y="576" name="SDC_SCK" orien="R0" />
        <branch name="SDC_MOSI">
            <wire x2="2592" y1="512" y2="512" x1="2336" />
            <wire x2="2608" y1="512" y2="512" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2608" y="512" name="SDC_MOSI" orien="R0" />
        <iomarker fontsize="28" x="2608" y="448" name="SDC_MISO" orien="R0" />
        <instance x="624" y="720" name="XLXI_31" orien="R90" />
        <instance x="752" y="784" name="XLXI_30" orien="R270" />
        <instance x="1424" y="800" name="XLXI_9" orien="R0" />
        <branch name="XLXN_66">
            <wire x2="1376" y1="336" y2="672" x1="1376" />
            <wire x2="1408" y1="672" y2="672" x1="1376" />
            <wire x2="1424" y1="672" y2="672" x1="1408" />
            <wire x2="2352" y1="336" y2="336" x1="1376" />
            <wire x2="2352" y1="336" y2="704" x1="2352" />
            <wire x2="2352" y1="704" y2="704" x1="2336" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="1424" y1="736" y2="736" x1="1376" />
            <wire x2="1376" y1="736" y2="992" x1="1376" />
            <wire x2="2384" y1="992" y2="992" x1="1376" />
            <wire x2="2384" y1="992" y2="1408" x1="2384" />
            <wire x2="2384" y1="1408" y2="1408" x1="2368" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="1632" y1="1824" y2="1824" x1="320" />
            <wire x2="1824" y1="1824" y2="1824" x1="1632" />
            <wire x2="1936" y1="1824" y2="1824" x1="1824" />
            <wire x2="1824" y1="832" y2="832" x1="1632" />
            <wire x2="1824" y1="832" y2="896" x1="1824" />
            <wire x2="1920" y1="896" y2="896" x1="1824" />
            <wire x2="1920" y1="832" y2="832" x1="1824" />
            <wire x2="1632" y1="832" y2="1824" x1="1632" />
            <wire x2="1936" y1="1760" y2="1760" x1="1824" />
            <wire x2="1824" y1="1760" y2="1824" x1="1824" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1760" y1="704" y2="704" x1="1680" />
            <wire x2="1760" y1="704" y2="1216" x1="1760" />
            <wire x2="1936" y1="1216" y2="1216" x1="1760" />
            <wire x2="1760" y1="640" y2="704" x1="1760" />
            <wire x2="1920" y1="640" y2="640" x1="1760" />
        </branch>
        <branch name="FExt(1:0)">
            <wire x2="992" y1="576" y2="704" x1="992" />
            <wire x2="992" y1="704" y2="720" x1="992" />
            <wire x2="992" y1="720" y2="784" x1="992" />
            <wire x2="992" y1="784" y2="832" x1="992" />
            <wire x2="1920" y1="576" y2="576" x1="992" />
        </branch>
        <instance x="1920" y="736" name="XLXI_1" orien="R0">
        </instance>
        <instance x="752" y="1088" name="XLXI_203" orien="R270" />
        <instance x="752" y="1152" name="XLXI_204" orien="R270" />
    </sheet>
</drawing>