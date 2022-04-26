<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_17" />
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
        <signal name="FR_DO(7:0)" />
        <signal name="FR_Pop" />
        <signal name="STOP" />
        <signal name="Clk_50MHz" />
        <signal name="FR_Rdy" />
        <signal name="START_OUT" />
        <signal name="START" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Input" name="FR_DO(7:0)" />
        <port polarity="Output" name="FR_Pop" />
        <port polarity="Input" name="STOP" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="FR_Rdy" />
        <port polarity="Output" name="START_OUT" />
        <port polarity="Input" name="START" />
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
            <blockpin signalname="FR_DO(7:0)" name="Char_DI(7:0)" />
            <blockpin signalname="XLXN_795" name="Home" />
            <blockpin signalname="STOP" name="NewLine" />
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
            <blockpin signalname="FR_Pop" name="Char_WE" />
        </block>
        <block symbolname="and2b1" name="XLXI_9">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="FR_Rdy" name="I1" />
            <blockpin signalname="FR_Pop" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_140">
            <blockpin signalname="START" name="I" />
            <blockpin signalname="START_OUT" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_612">
            <wire x2="1936" y1="1536" y2="1536" x1="1904" />
        </branch>
        <instance x="1904" y="1600" name="XLXI_27" orien="R270" />
        <branch name="XLXN_613">
            <wire x2="1936" y1="1600" y2="1600" x1="1904" />
        </branch>
        <instance x="1904" y="1664" name="XLXI_28" orien="R270" />
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
        <iomarker fontsize="28" x="2816" y="1152" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="2816" y="1216" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="2816" y="1344" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="2816" y="1408" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="2816" y="1280" name="VGA_R" orien="R0" />
        <branch name="XLXN_564">
            <wire x2="2464" y1="1280" y2="1280" x1="2368" />
            <wire x2="2464" y1="1280" y2="1344" x1="2464" />
            <wire x2="2544" y1="1344" y2="1344" x1="2464" />
            <wire x2="2464" y1="1344" y2="1408" x1="2464" />
            <wire x2="2544" y1="1408" y2="1408" x1="2464" />
            <wire x2="2544" y1="1280" y2="1280" x1="2464" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="2816" y1="1216" y2="1216" x1="2368" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="2816" y1="1152" y2="1152" x1="2368" />
        </branch>
        <branch name="XLXN_614">
            <wire x2="1936" y1="1664" y2="1664" x1="1904" />
        </branch>
        <branch name="XLXN_795">
            <wire x2="1936" y1="1312" y2="1312" x1="1904" />
        </branch>
        <instance x="1936" y="1760" name="XLXI_2" orien="R0">
        </instance>
        <branch name="FR_DO(7:0)">
            <wire x2="1920" y1="1152" y2="1152" x1="1136" />
            <wire x2="1936" y1="1152" y2="1152" x1="1920" />
        </branch>
        <branch name="FR_Pop">
            <wire x2="1408" y1="944" y2="944" x1="1392" />
            <wire x2="1408" y1="944" y2="1216" x1="1408" />
            <wire x2="1936" y1="1216" y2="1216" x1="1408" />
            <wire x2="1440" y1="944" y2="944" x1="1408" />
        </branch>
        <branch name="STOP">
            <wire x2="1920" y1="1376" y2="1376" x1="944" />
            <wire x2="1936" y1="1376" y2="1376" x1="1920" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="1824" y1="1824" y2="1824" x1="976" />
            <wire x2="1936" y1="1824" y2="1824" x1="1824" />
            <wire x2="1936" y1="1760" y2="1760" x1="1824" />
            <wire x2="1824" y1="1760" y2="1824" x1="1824" />
        </branch>
        <branch name="FR_Rdy">
            <wire x2="1136" y1="912" y2="912" x1="1056" />
        </branch>
        <iomarker fontsize="28" x="1056" y="912" name="FR_Rdy" orien="R180" />
        <instance x="1136" y="1040" name="XLXI_9" orien="R0" />
        <branch name="XLXN_17">
            <wire x2="1136" y1="976" y2="1056" x1="1136" />
            <wire x2="2384" y1="1056" y2="1056" x1="1136" />
            <wire x2="2384" y1="1056" y2="1408" x1="2384" />
            <wire x2="2384" y1="1408" y2="1408" x1="2368" />
        </branch>
        <iomarker fontsize="28" x="1440" y="944" name="FR_Pop" orien="R0" />
        <iomarker fontsize="28" x="1136" y="1152" name="FR_DO(7:0)" orien="R180" />
        <branch name="START_OUT">
            <wire x2="1376" y1="832" y2="832" x1="1296" />
        </branch>
        <branch name="START">
            <wire x2="1072" y1="832" y2="832" x1="1040" />
        </branch>
        <instance x="1072" y="864" name="XLXI_140" orien="R0" />
        <iomarker fontsize="28" x="1040" y="832" name="START" orien="R180" />
        <iomarker fontsize="28" x="1376" y="832" name="START_OUT" orien="R0" />
        <rect width="904" x="792" y="736" height="540" />
        <text style="fontsize:28;fontname:Arial" x="832" y="768">Sygnaly symulujace SDC_FileReader</text>
        <iomarker fontsize="28" x="976" y="1824" name="Clk_50MHz" orien="R180" />
        <iomarker fontsize="28" x="944" y="1376" name="STOP" orien="R180" />
    </sheet>
</drawing>