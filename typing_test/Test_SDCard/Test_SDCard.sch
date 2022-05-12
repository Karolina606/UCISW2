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
        <signal name="XLXN_8" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="VGA_R" />
        <signal name="VGA_VS" />
        <signal name="VGA_HS" />
        <signal name="XLXN_564" />
        <signal name="ROT_B" />
        <signal name="ROT_A" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_15" />
        <signal name="XLXN_17" />
        <signal name="XLXN_7" />
        <signal name="FExt(1:0)" />
        <signal name="FName(7:0)" />
        <signal name="FExt(1)" />
        <signal name="FExt(0)" />
        <signal name="FName(7)" />
        <signal name="FName(5)" />
        <signal name="FName(4)" />
        <signal name="FName(6)" />
        <signal name="FName(3)" />
        <signal name="FName(1)" />
        <signal name="FName(0)" />
        <signal name="FName(2)" />
        <signal name="SW_3" />
        <signal name="SW_2" />
        <signal name="SW_1" />
        <signal name="SW_0" />
        <signal name="LED_7" />
        <signal name="XLXN_612" />
        <signal name="XLXN_613" />
        <signal name="XLXN_614" />
        <signal name="XLXN_793" />
        <signal name="XLXN_794" />
        <signal name="XLXN_795" />
        <signal name="XLXN_796" />
        <signal name="LED(1:0)" />
        <port polarity="Input" name="SDC_MISO" />
        <port polarity="Output" name="SDC_SS" />
        <port polarity="Output" name="SDC_SCK" />
        <port polarity="Output" name="SDC_MOSI" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Input" name="ROT_B" />
        <port polarity="Input" name="ROT_A" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="SW_3" />
        <port polarity="Input" name="SW_2" />
        <port polarity="Input" name="SW_1" />
        <port polarity="Input" name="SW_0" />
        <port polarity="Output" name="LED_7" />
        <port polarity="Output" name="LED(1:0)" />
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
            <timestamp>2008-9-4T9:59:0</timestamp>
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
        <blockdef name="RotaryEnc">
            <timestamp>2008-8-28T17:16:17</timestamp>
            <rect width="256" x="64" y="-256" height="192" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
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
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <block symbolname="RotaryEnc" name="XLXI_3">
            <blockpin signalname="ROT_A" name="ROT_A" />
            <blockpin signalname="ROT_B" name="ROT_B" />
            <blockpin signalname="XLXN_8" name="RotL" />
            <blockpin signalname="XLXN_793" name="RotR" />
            <blockpin signalname="Clk_50MHz" name="Clk" />
        </block>
        <block symbolname="SDC_FileReader" name="XLXI_1">
            <blockpin signalname="SDC_MISO" name="SDC_MISO" />
            <blockpin signalname="XLXN_8" name="Start" />
            <blockpin signalname="FName(7:0)" name="FName(7:0)" />
            <blockpin signalname="XLXN_794" name="Reset" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_7" name="DO_Pop" />
            <blockpin signalname="XLXN_793" name="Abort" />
            <blockpin signalname="SDC_MOSI" name="SDC_MOSI" />
            <blockpin signalname="SDC_SCK" name="SDC_SCK" />
            <blockpin signalname="SDC_SS" name="SDC_SS" />
            <blockpin signalname="LED(1:0)" name="Error(1:0)" />
            <blockpin signalname="XLXN_5(7:0)" name="DO(7:0)" />
            <blockpin signalname="XLXN_15" name="DO_Rdy" />
            <blockpin signalname="LED_7" name="Busy" />
            <blockpin signalname="FExt(1:0)" name="FExt(1:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="buf" name="XLXI_10">
            <blockpin signalname="XLXN_564" name="I" />
            <blockpin signalname="VGA_R" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_11">
            <blockpin signalname="XLXN_564" name="I" />
            <blockpin signalname="VGA_G" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_12">
            <blockpin signalname="XLXN_564" name="I" />
            <blockpin signalname="VGA_B" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_9">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_32">
            <blockpin signalname="FName(7)" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_33">
            <blockpin signalname="FName(5)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_34">
            <blockpin signalname="FName(4)" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_37">
            <blockpin signalname="FName(6)" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_30">
            <blockpin signalname="FExt(1)" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_31">
            <blockpin signalname="FExt(0)" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_42">
            <blockpin signalname="SW_3" name="I" />
            <blockpin signalname="FName(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_43">
            <blockpin signalname="SW_2" name="I" />
            <blockpin signalname="FName(2)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_44">
            <blockpin signalname="SW_1" name="I" />
            <blockpin signalname="FName(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_45">
            <blockpin signalname="SW_0" name="I" />
            <blockpin signalname="FName(0)" name="O" />
        </block>
        <block symbolname="VGAtxt48x20" name="XLXI_2">
            <blockpin signalname="XLXN_5(7:0)" name="Char_DI(7:0)" />
            <blockpin signalname="XLXN_795" name="Home" />
            <blockpin signalname="XLXN_793" name="NewLine" />
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
        <block symbolname="vcc" name="XLXI_27">
            <blockpin signalname="XLXN_612" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_28">
            <blockpin signalname="XLXN_613" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_29">
            <blockpin signalname="XLXN_614" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_136">
            <blockpin signalname="XLXN_794" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_137">
            <blockpin signalname="XLXN_795" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_138">
            <blockpin signalname="XLXN_796" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="960" y="784" name="XLXI_3" orien="R0">
        </instance>
        <branch name="SDC_MISO">
            <wire x2="2560" y1="560" y2="560" x1="2544" />
            <wire x2="2768" y1="560" y2="560" x1="2560" />
        </branch>
        <branch name="SDC_SS">
            <wire x2="2560" y1="752" y2="752" x1="2544" />
            <wire x2="2768" y1="752" y2="752" x1="2560" />
        </branch>
        <branch name="SDC_SCK">
            <wire x2="2560" y1="688" y2="688" x1="2544" />
            <wire x2="2768" y1="688" y2="688" x1="2560" />
        </branch>
        <branch name="SDC_MOSI">
            <wire x2="2560" y1="624" y2="624" x1="2544" />
            <wire x2="2768" y1="624" y2="624" x1="2560" />
        </branch>
        <branch name="XLXN_5(7:0)">
            <wire x2="2064" y1="1312" y2="1712" x1="2064" />
            <wire x2="2112" y1="1712" y2="1712" x1="2064" />
            <wire x2="2608" y1="1312" y2="1312" x1="2064" />
            <wire x2="2608" y1="880" y2="880" x1="2544" />
            <wire x2="2608" y1="880" y2="1312" x1="2608" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2128" y1="560" y2="560" x1="1344" />
        </branch>
        <branch name="VGA_G">
            <wire x2="2960" y1="1904" y2="1904" x1="2912" />
        </branch>
        <branch name="VGA_B">
            <wire x2="2960" y1="1968" y2="1968" x1="2912" />
        </branch>
        <branch name="VGA_R">
            <wire x2="2960" y1="1840" y2="1840" x1="2912" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="2960" y1="1776" y2="1776" x1="2544" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="2960" y1="1712" y2="1712" x1="2544" />
        </branch>
        <instance x="2688" y="1872" name="XLXI_10" orien="R0" />
        <instance x="2688" y="1936" name="XLXI_11" orien="R0" />
        <instance x="2688" y="2000" name="XLXI_12" orien="R0" />
        <branch name="XLXN_564">
            <wire x2="2640" y1="1840" y2="1840" x1="2544" />
            <wire x2="2688" y1="1840" y2="1840" x1="2640" />
            <wire x2="2640" y1="1840" y2="1904" x1="2640" />
            <wire x2="2688" y1="1904" y2="1904" x1="2640" />
            <wire x2="2640" y1="1904" y2="1968" x1="2640" />
            <wire x2="2688" y1="1968" y2="1968" x1="2640" />
        </branch>
        <branch name="ROT_B">
            <wire x2="960" y1="624" y2="624" x1="496" />
        </branch>
        <branch name="ROT_A">
            <wire x2="960" y1="560" y2="560" x1="496" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="1776" y1="2384" y2="2384" x1="496" />
            <wire x2="2016" y1="2384" y2="2384" x1="1776" />
            <wire x2="2112" y1="2384" y2="2384" x1="2016" />
            <wire x2="960" y1="688" y2="688" x1="928" />
            <wire x2="928" y1="688" y2="944" x1="928" />
            <wire x2="1776" y1="944" y2="944" x1="928" />
            <wire x2="1776" y1="944" y2="2384" x1="1776" />
            <wire x2="2032" y1="944" y2="944" x1="1776" />
            <wire x2="2128" y1="944" y2="944" x1="2032" />
            <wire x2="2032" y1="944" y2="1008" x1="2032" />
            <wire x2="2128" y1="1008" y2="1008" x1="2032" />
            <wire x2="2112" y1="2320" y2="2320" x1="2016" />
            <wire x2="2016" y1="2320" y2="2384" x1="2016" />
        </branch>
        <branch name="FExt(1:0)">
            <wire x2="1200" y1="1104" y2="1184" x1="1200" />
            <wire x2="1200" y1="1184" y2="1248" x1="1200" />
            <wire x2="1200" y1="1248" y2="1312" x1="1200" />
            <wire x2="1440" y1="1104" y2="1104" x1="1200" />
            <wire x2="1440" y1="688" y2="1104" x1="1440" />
            <wire x2="2128" y1="688" y2="688" x1="1440" />
        </branch>
        <branch name="FName(7:0)">
            <wire x2="1264" y1="1040" y2="1424" x1="1264" />
            <wire x2="1264" y1="1424" y2="1488" x1="1264" />
            <wire x2="1264" y1="1488" y2="1552" x1="1264" />
            <wire x2="1264" y1="1552" y2="1616" x1="1264" />
            <wire x2="1264" y1="1616" y2="1680" x1="1264" />
            <wire x2="1264" y1="1680" y2="1744" x1="1264" />
            <wire x2="1264" y1="1744" y2="1808" x1="1264" />
            <wire x2="1264" y1="1808" y2="1872" x1="1264" />
            <wire x2="1264" y1="1872" y2="1920" x1="1264" />
            <wire x2="1504" y1="1040" y2="1040" x1="1264" />
            <wire x2="1504" y1="624" y2="1040" x1="1504" />
            <wire x2="2128" y1="624" y2="624" x1="1504" />
        </branch>
        <bustap x2="1104" y1="1184" y2="1184" x1="1200" />
        <bustap x2="1104" y1="1248" y2="1248" x1="1200" />
        <branch name="FExt(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1072" y="1184" type="branch" />
            <wire x2="1072" y1="1184" y2="1184" x1="960" />
            <wire x2="1104" y1="1184" y2="1184" x1="1072" />
        </branch>
        <branch name="FExt(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1072" y="1248" type="branch" />
            <wire x2="1072" y1="1248" y2="1248" x1="960" />
            <wire x2="1104" y1="1248" y2="1248" x1="1072" />
        </branch>
        <bustap x2="1168" y1="1424" y2="1424" x1="1264" />
        <bustap x2="1168" y1="1488" y2="1488" x1="1264" />
        <bustap x2="1168" y1="1552" y2="1552" x1="1264" />
        <bustap x2="1168" y1="1616" y2="1616" x1="1264" />
        <branch name="FName(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1136" y="1424" type="branch" />
            <wire x2="1136" y1="1424" y2="1424" x1="960" />
            <wire x2="1168" y1="1424" y2="1424" x1="1136" />
        </branch>
        <branch name="FName(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1136" y="1552" type="branch" />
            <wire x2="1136" y1="1552" y2="1552" x1="960" />
            <wire x2="1168" y1="1552" y2="1552" x1="1136" />
        </branch>
        <branch name="FName(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1136" y="1616" type="branch" />
            <wire x2="1136" y1="1616" y2="1616" x1="960" />
            <wire x2="1168" y1="1616" y2="1616" x1="1136" />
        </branch>
        <branch name="FName(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1136" y="1488" type="branch" />
            <wire x2="1136" y1="1488" y2="1488" x1="960" />
            <wire x2="1168" y1="1488" y2="1488" x1="1136" />
        </branch>
        <bustap x2="1168" y1="1680" y2="1680" x1="1264" />
        <bustap x2="1168" y1="1744" y2="1744" x1="1264" />
        <bustap x2="1168" y1="1808" y2="1808" x1="1264" />
        <bustap x2="1168" y1="1872" y2="1872" x1="1264" />
        <branch name="FName(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1136" y="1680" type="branch" />
            <wire x2="1136" y1="1680" y2="1680" x1="752" />
            <wire x2="1168" y1="1680" y2="1680" x1="1136" />
        </branch>
        <branch name="FName(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1136" y="1808" type="branch" />
            <wire x2="1136" y1="1808" y2="1808" x1="752" />
            <wire x2="1168" y1="1808" y2="1808" x1="1136" />
        </branch>
        <branch name="FName(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1136" y="1872" type="branch" />
            <wire x2="1136" y1="1872" y2="1872" x1="752" />
            <wire x2="1168" y1="1872" y2="1872" x1="1136" />
        </branch>
        <branch name="FName(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1136" y="1744" type="branch" />
            <wire x2="1136" y1="1744" y2="1744" x1="752" />
            <wire x2="1168" y1="1744" y2="1744" x1="1136" />
        </branch>
        <instance x="832" y="1360" name="XLXI_32" orien="R90" />
        <instance x="960" y="1616" name="XLXI_33" orien="R270" />
        <instance x="960" y="1680" name="XLXI_34" orien="R270" />
        <instance x="832" y="1424" name="XLXI_37" orien="R90" />
        <instance x="960" y="1248" name="XLXI_30" orien="R270" />
        <instance x="832" y="1184" name="XLXI_31" orien="R90" />
        <branch name="SW_3">
            <wire x2="528" y1="1680" y2="1680" x1="496" />
        </branch>
        <branch name="SW_2">
            <wire x2="528" y1="1744" y2="1744" x1="496" />
        </branch>
        <branch name="SW_1">
            <wire x2="528" y1="1808" y2="1808" x1="496" />
        </branch>
        <branch name="SW_0">
            <wire x2="528" y1="1872" y2="1872" x1="496" />
        </branch>
        <instance x="528" y="1712" name="XLXI_42" orien="R0" />
        <instance x="528" y="1776" name="XLXI_43" orien="R0" />
        <instance x="528" y="1840" name="XLXI_44" orien="R0" />
        <instance x="528" y="1904" name="XLXI_45" orien="R0" />
        <text style="fontsize:52;fontname:Arial" x="836" y="2088">(ASCII '0' ... '9')</text>
        <text style="fontsize:52;fontname:Arial" x="840" y="2024">FName = X'3' &amp; SW(3:0)</text>
        <iomarker fontsize="28" x="2960" y="1712" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="2960" y="1776" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="2960" y="1904" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="2960" y="1968" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="2960" y="1840" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="496" y="1680" name="SW_3" orien="R180" />
        <iomarker fontsize="28" x="496" y="1744" name="SW_2" orien="R180" />
        <iomarker fontsize="28" x="496" y="1808" name="SW_1" orien="R180" />
        <iomarker fontsize="28" x="496" y="1872" name="SW_0" orien="R180" />
        <iomarker fontsize="28" x="496" y="624" name="ROT_B" orien="R180" />
        <iomarker fontsize="28" x="496" y="560" name="ROT_A" orien="R180" />
        <iomarker fontsize="28" x="496" y="2384" name="Clk_50MHz" orien="R180" />
        <branch name="LED_7">
            <wire x2="2560" y1="944" y2="944" x1="2544" />
            <wire x2="2768" y1="944" y2="944" x1="2560" />
        </branch>
        <instance x="2112" y="2320" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_612">
            <wire x2="2112" y1="2096" y2="2096" x1="2080" />
        </branch>
        <instance x="2080" y="2160" name="XLXI_27" orien="R270" />
        <branch name="XLXN_613">
            <wire x2="2112" y1="2160" y2="2160" x1="2080" />
        </branch>
        <instance x="2080" y="2224" name="XLXI_28" orien="R270" />
        <branch name="XLXN_614">
            <wire x2="2112" y1="2224" y2="2224" x1="2080" />
        </branch>
        <instance x="2080" y="2288" name="XLXI_29" orien="R270" />
        <instance x="2128" y="848" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_7">
            <wire x2="1936" y1="816" y2="816" x1="1840" />
            <wire x2="1936" y1="816" y2="1776" x1="1936" />
            <wire x2="2112" y1="1776" y2="1776" x1="1936" />
            <wire x2="2128" y1="752" y2="752" x1="1936" />
            <wire x2="1936" y1="752" y2="816" x1="1936" />
        </branch>
        <branch name="XLXN_793">
            <wire x2="1360" y1="624" y2="624" x1="1344" />
            <wire x2="1360" y1="624" y2="1936" x1="1360" />
            <wire x2="2112" y1="1936" y2="1936" x1="1360" />
            <wire x2="2048" y1="592" y2="592" x1="1360" />
            <wire x2="2048" y1="592" y2="816" x1="2048" />
            <wire x2="2128" y1="816" y2="816" x1="2048" />
            <wire x2="1360" y1="592" y2="624" x1="1360" />
        </branch>
        <branch name="XLXN_794">
            <wire x2="2128" y1="880" y2="880" x1="2080" />
        </branch>
        <branch name="XLXN_795">
            <wire x2="2112" y1="1872" y2="1872" x1="2080" />
        </branch>
        <instance x="1952" y="1808" name="XLXI_137" orien="R90" />
        <branch name="XLXN_796">
            <wire x2="2112" y1="2000" y2="2000" x1="2080" />
        </branch>
        <instance x="1952" y="1936" name="XLXI_138" orien="R90" />
        <text style="fontsize:64;fontname:Arial" x="2832" y="2404">Test_SDCard</text>
        <text style="fontsize:64;fontname:Arial" x="2832" y="2500">J.Sugier</text>
        <instance x="1952" y="816" name="XLXI_136" orien="R90" />
        <instance x="1584" y="912" name="XLXI_9" orien="R0" />
        <branch name="XLXN_15">
            <wire x2="1568" y1="416" y2="784" x1="1568" />
            <wire x2="1584" y1="784" y2="784" x1="1568" />
            <wire x2="2608" y1="416" y2="416" x1="1568" />
            <wire x2="2608" y1="416" y2="816" x1="2608" />
            <wire x2="2608" y1="816" y2="816" x1="2544" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="1584" y1="848" y2="848" x1="1568" />
            <wire x2="1568" y1="848" y2="1104" x1="1568" />
            <wire x2="2560" y1="1104" y2="1104" x1="1568" />
            <wire x2="2560" y1="1104" y2="1968" x1="2560" />
            <wire x2="2560" y1="1968" y2="1968" x1="2544" />
        </branch>
        <branch name="LED(1:0)">
            <wire x2="2560" y1="1008" y2="1008" x1="2544" />
            <wire x2="2768" y1="1008" y2="1008" x1="2560" />
        </branch>
        <text style="fontsize:52;fontname:Arial" x="1832" y="280">FExt: 00 - '   ' / 01 - BIN / 10 - TXT / 11 - WAV</text>
        <text style="fontsize:52;fontname:Arial" x="1832" y="344">Error(1:0) = 00 - CardInit / 01 - DiskFmt / 10 - FileNFound / 11 - NoError</text>
        <text style="fontsize:52;fontname:Arial" x="840" y="2164">FExt = '10' (TXT)</text>
        <iomarker fontsize="28" x="2768" y="560" name="SDC_MISO" orien="R0" />
        <iomarker fontsize="28" x="2768" y="624" name="SDC_MOSI" orien="R0" />
        <iomarker fontsize="28" x="2768" y="752" name="SDC_SS" orien="R0" />
        <iomarker fontsize="28" x="2768" y="688" name="SDC_SCK" orien="R0" />
        <iomarker fontsize="28" x="2768" y="944" name="LED_7" orien="R0" />
        <iomarker fontsize="28" x="2768" y="1008" name="LED(1:0)" orien="R0" />
    </sheet>
</drawing>