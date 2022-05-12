<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_4" />
        <signal name="XLXN_6" />
        <signal name="Clk_50MHz" />
        <signal name="Reset" />
        <signal name="XLXN_12" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="VGA_RGB" />
        <signal name="XLXN_16(7:0)" />
        <signal name="XLXN_18" />
        <signal name="NewLine" />
        <signal name="XLXN_19" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="Reset" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_RGB" />
        <port polarity="Input" name="NewLine" />
        <blockdef name="VGAtxt48x20">
            <timestamp>2008-9-4T9:59:2</timestamp>
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
        <blockdef name="FSM_String">
            <timestamp>2021-4-14T9:30:34</timestamp>
            <rect width="288" x="64" y="-192" height="192" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-172" height="24" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
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
        <block symbolname="VGAtxt48x20" name="VGA">
            <blockpin signalname="XLXN_16(7:0)" name="Char_DI(7:0)" />
            <blockpin signalname="XLXN_6" name="Home" />
            <blockpin signalname="NewLine" name="NewLine" />
            <blockpin signalname="XLXN_6" name="Goto00" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_4" name="CursorOn" />
            <blockpin signalname="XLXN_4" name="ScrollEn" />
            <blockpin signalname="XLXN_4" name="ScrollClear" />
            <blockpin signalname="XLXN_12" name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="VGA_RGB" name="VGA_RGB" />
            <blockpin signalname="XLXN_18" name="Char_WE" />
        </block>
        <block symbolname="FSM_String" name="FSM">
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="XLXN_12" name="Busy_In" />
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="XLXN_16(7:0)" name="Char_DO(7:0)" />
            <blockpin signalname="XLXN_18" name="Char_WE" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="XLXN_6" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="XLXN_4" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2000" y="1424" name="VGA" orien="R0">
        </instance>
        <instance x="1056" y="1200" name="FSM" orien="R0">
        </instance>
        <branch name="XLXN_4">
            <wire x2="1872" y1="1248" y2="1264" x1="1872" />
            <wire x2="1936" y1="1264" y2="1264" x1="1872" />
            <wire x2="2000" y1="1264" y2="1264" x1="1936" />
            <wire x2="1936" y1="1264" y2="1328" x1="1936" />
            <wire x2="2000" y1="1328" y2="1328" x1="1936" />
            <wire x2="2000" y1="1200" y2="1200" x1="1936" />
            <wire x2="1936" y1="1200" y2="1264" x1="1936" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="976" y1="1488" y2="1488" x1="784" />
            <wire x2="1984" y1="1488" y2="1488" x1="976" />
            <wire x2="2000" y1="1488" y2="1488" x1="1984" />
            <wire x2="1056" y1="1168" y2="1168" x1="976" />
            <wire x2="976" y1="1168" y2="1488" x1="976" />
            <wire x2="2000" y1="1424" y2="1424" x1="1984" />
            <wire x2="1984" y1="1424" y2="1488" x1="1984" />
        </branch>
        <branch name="Reset">
            <wire x2="1056" y1="1104" y2="1104" x1="784" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="976" y1="704" y2="1040" x1="976" />
            <wire x2="1056" y1="1040" y2="1040" x1="976" />
            <wire x2="2544" y1="704" y2="704" x1="976" />
            <wire x2="2544" y1="704" y2="1072" x1="2544" />
            <wire x2="2544" y1="1072" y2="1072" x1="2432" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="2656" y1="816" y2="816" x1="2432" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="2656" y1="880" y2="880" x1="2432" />
        </branch>
        <branch name="VGA_RGB">
            <wire x2="2656" y1="944" y2="944" x1="2432" />
        </branch>
        <iomarker fontsize="28" x="2656" y="816" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="2656" y="880" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="2656" y="944" name="VGA_RGB" orien="R0" />
        <iomarker fontsize="28" x="784" y="1488" name="Clk_50MHz" orien="R180" />
        <iomarker fontsize="28" x="784" y="1104" name="Reset" orien="R180" />
        <branch name="XLXN_16(7:0)">
            <wire x2="1552" y1="1040" y2="1040" x1="1472" />
            <wire x2="1552" y1="816" y2="1040" x1="1552" />
            <wire x2="2000" y1="816" y2="816" x1="1552" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1616" y1="1104" y2="1104" x1="1472" />
            <wire x2="2000" y1="880" y2="880" x1="1616" />
            <wire x2="1616" y1="880" y2="1104" x1="1616" />
        </branch>
        <instance x="1808" y="1248" name="XLXI_6" orien="R0" />
        <instance x="1712" y="1408" name="XLXI_5" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="1776" y1="976" y2="1280" x1="1776" />
            <wire x2="1920" y1="976" y2="976" x1="1776" />
            <wire x2="2000" y1="976" y2="976" x1="1920" />
            <wire x2="1920" y1="976" y2="1104" x1="1920" />
            <wire x2="2000" y1="1104" y2="1104" x1="1920" />
        </branch>
        <branch name="NewLine">
            <wire x2="1696" y1="1328" y2="1328" x1="784" />
            <wire x2="1696" y1="1040" y2="1328" x1="1696" />
            <wire x2="1984" y1="1040" y2="1040" x1="1696" />
            <wire x2="2000" y1="1040" y2="1040" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="784" y="1328" name="NewLine" orien="R180" />
    </sheet>
</drawing>