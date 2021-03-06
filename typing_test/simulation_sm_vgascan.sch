<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="VGA_VS" />
        <signal name="VGA_HS" />
        <signal name="XLXN_564" />
        <signal name="XLXN_612" />
        <signal name="XLXN_613" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="VGA_R" />
        <signal name="XLXN_795" />
        <signal name="XLXN_614" />
        <signal name="XLXN_796" />
        <signal name="reset" />
        <signal name="XLXN_1195" />
        <signal name="XLXN_1192" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_1178" />
        <signal name="XLXN_1179(7:0)" />
        <signal name="SD_Busy" />
        <signal name="SD_DO_Rdy" />
        <signal name="PS2_DO_Rdy" />
        <signal name="SD_DO(7:0)" />
        <signal name="PS2_DO(7:0)" />
        <signal name="SD_Pop" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="SD_Busy" />
        <port polarity="Input" name="SD_DO_Rdy" />
        <port polarity="Input" name="PS2_DO_Rdy" />
        <port polarity="Input" name="SD_DO(7:0)" />
        <port polarity="Input" name="PS2_DO(7:0)" />
        <port polarity="Output" name="SD_Pop" />
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
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="state_machine">
            <timestamp>2022-5-14T12:49:12</timestamp>
            <rect width="64" x="368" y="84" height="24" />
            <line x2="432" y1="96" y2="96" x1="368" />
            <line x2="432" y1="32" y2="32" x1="368" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
            <rect width="304" x="64" y="-512" height="640" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
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
        <block symbolname="vcc" name="XLXI_13">
            <blockpin signalname="XLXN_612" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_35">
            <blockpin signalname="XLXN_613" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_15">
            <blockpin signalname="XLXN_614" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_137">
            <blockpin signalname="XLXN_795" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_138">
            <blockpin signalname="XLXN_796" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_39">
            <blockpin signalname="XLXN_564" name="I" />
            <blockpin signalname="VGA_R" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_40">
            <blockpin signalname="XLXN_564" name="I" />
            <blockpin signalname="VGA_G" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_41">
            <blockpin signalname="XLXN_564" name="I" />
            <blockpin signalname="VGA_B" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_381">
            <blockpin signalname="reset" name="I0" />
            <blockpin signalname="XLXN_1192" name="I1" />
            <blockpin signalname="XLXN_1195" name="O" />
        </block>
        <block symbolname="VGAtxt48x20" name="XLXI_384">
            <blockpin signalname="XLXN_1179(7:0)" name="Char_DI(7:0)" />
            <blockpin signalname="XLXN_795" name="Home" />
            <blockpin signalname="XLXN_1195" name="NewLine" />
            <blockpin signalname="XLXN_796" name="Goto00" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_612" name="CursorOn" />
            <blockpin signalname="XLXN_613" name="ScrollEn" />
            <blockpin signalname="XLXN_614" name="ScrollClear" />
            <blockpin name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_564" name="VGA_RGB" />
            <blockpin signalname="XLXN_1178" name="Char_WE" />
        </block>
        <block symbolname="state_machine" name="XLXI_385">
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="reset" name="Reset" />
            <blockpin signalname="SD_Busy" name="SD_Busy" />
            <blockpin signalname="SD_DO_Rdy" name="SD_DO_Rdy" />
            <blockpin signalname="PS2_DO_Rdy" name="PS2_DO_Rdy" />
            <blockpin signalname="SD_DO(7:0)" name="SD_DO(7:0)" />
            <blockpin signalname="PS2_DO(7:0)" name="PS2_DO(7:0)" />
            <blockpin signalname="XLXN_1178" name="Char_WE" />
            <blockpin signalname="XLXN_1192" name="NewlineOut" />
            <blockpin signalname="SD_Pop" name="SD_Pop" />
            <blockpin signalname="XLXN_1179(7:0)" name="Char_DI(7:0)" />
            <blockpin name="Score_DI(63:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="4672" y="3696" name="XLXI_13" orien="R270" />
        <instance x="4672" y="3760" name="XLXI_35" orien="R270" />
        <instance x="4672" y="3824" name="XLXI_15" orien="R270" />
        <instance x="4544" y="3344" name="XLXI_137" orien="R90" />
        <instance x="4544" y="3472" name="XLXI_138" orien="R90" />
        <instance x="5312" y="3408" name="XLXI_39" orien="R0" />
        <instance x="5312" y="3472" name="XLXI_40" orien="R0" />
        <instance x="5312" y="3536" name="XLXI_41" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="5584" y1="3312" y2="3312" x1="5136" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="5584" y1="3248" y2="3248" x1="5136" />
        </branch>
        <branch name="XLXN_564">
            <wire x2="5232" y1="3376" y2="3376" x1="5136" />
            <wire x2="5232" y1="3376" y2="3440" x1="5232" />
            <wire x2="5312" y1="3440" y2="3440" x1="5232" />
            <wire x2="5232" y1="3440" y2="3504" x1="5232" />
            <wire x2="5312" y1="3504" y2="3504" x1="5232" />
            <wire x2="5312" y1="3376" y2="3376" x1="5232" />
        </branch>
        <branch name="XLXN_612">
            <wire x2="4704" y1="3632" y2="3632" x1="4672" />
        </branch>
        <branch name="XLXN_613">
            <wire x2="4704" y1="3696" y2="3696" x1="4672" />
        </branch>
        <branch name="VGA_G">
            <wire x2="5584" y1="3440" y2="3440" x1="5536" />
        </branch>
        <branch name="VGA_B">
            <wire x2="5584" y1="3504" y2="3504" x1="5536" />
        </branch>
        <branch name="VGA_R">
            <wire x2="5584" y1="3376" y2="3376" x1="5536" />
        </branch>
        <branch name="XLXN_795">
            <wire x2="4704" y1="3408" y2="3408" x1="4672" />
        </branch>
        <branch name="XLXN_614">
            <wire x2="4704" y1="3760" y2="3760" x1="4672" />
        </branch>
        <branch name="XLXN_796">
            <wire x2="4704" y1="3536" y2="3536" x1="4672" />
        </branch>
        <branch name="reset">
            <wire x2="3744" y1="2608" y2="2608" x1="2560" />
            <wire x2="3744" y1="2608" y2="3504" x1="3744" />
            <wire x2="4080" y1="3504" y2="3504" x1="3744" />
            <wire x2="4944" y1="2176" y2="2176" x1="3744" />
            <wire x2="3744" y1="2176" y2="2608" x1="3744" />
        </branch>
        <branch name="XLXN_1195">
            <wire x2="4704" y1="3472" y2="3472" x1="4336" />
        </branch>
        <instance x="4080" y="3568" name="XLXI_381" orien="R0" />
        <branch name="XLXN_1192">
            <wire x2="5392" y1="2864" y2="2864" x1="4016" />
            <wire x2="4016" y1="2864" y2="3440" x1="4016" />
            <wire x2="4080" y1="3440" y2="3440" x1="4016" />
            <wire x2="5392" y1="2624" y2="2624" x1="5376" />
            <wire x2="5392" y1="2624" y2="2864" x1="5392" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="2944" y1="2112" y2="2112" x1="2576" />
            <wire x2="4944" y1="2112" y2="2112" x1="2944" />
            <wire x2="2944" y1="2112" y2="3920" x1="2944" />
            <wire x2="2992" y1="3920" y2="3920" x1="2944" />
            <wire x2="4704" y1="3920" y2="3920" x1="2992" />
            <wire x2="2992" y1="3856" y2="3920" x1="2992" />
            <wire x2="4704" y1="3856" y2="3856" x1="2992" />
        </branch>
        <branch name="XLXN_1178">
            <wire x2="5600" y1="3008" y2="3008" x1="4592" />
            <wire x2="4592" y1="3008" y2="3312" x1="4592" />
            <wire x2="4704" y1="3312" y2="3312" x1="4592" />
            <wire x2="5600" y1="2112" y2="2112" x1="5376" />
            <wire x2="5600" y1="2112" y2="3008" x1="5600" />
        </branch>
        <branch name="XLXN_1179(7:0)">
            <wire x2="5440" y1="2912" y2="2912" x1="4656" />
            <wire x2="4656" y1="2912" y2="3248" x1="4656" />
            <wire x2="4704" y1="3248" y2="3248" x1="4656" />
            <wire x2="5440" y1="2560" y2="2560" x1="5376" />
            <wire x2="5440" y1="2560" y2="2912" x1="5440" />
        </branch>
        <instance x="4704" y="3856" name="XLXI_384" orien="R0">
        </instance>
        <iomarker fontsize="28" x="5584" y="3376" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="5584" y="3504" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="5584" y="3440" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="5584" y="3312" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="5584" y="3248" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="2560" y="2608" name="reset" orien="R180" />
        <iomarker fontsize="28" x="2576" y="2112" name="Clk_50MHz" orien="R180" />
        <branch name="SD_Busy">
            <wire x2="4944" y1="2240" y2="2240" x1="4912" />
        </branch>
        <iomarker fontsize="28" x="4912" y="2240" name="SD_Busy" orien="R180" />
        <branch name="SD_DO_Rdy">
            <wire x2="4944" y1="2368" y2="2368" x1="4912" />
        </branch>
        <iomarker fontsize="28" x="4912" y="2368" name="SD_DO_Rdy" orien="R180" />
        <branch name="PS2_DO_Rdy">
            <wire x2="4944" y1="2432" y2="2432" x1="4912" />
        </branch>
        <iomarker fontsize="28" x="4912" y="2432" name="PS2_DO_Rdy" orien="R180" />
        <branch name="SD_DO(7:0)">
            <wire x2="4944" y1="2496" y2="2496" x1="4912" />
        </branch>
        <iomarker fontsize="28" x="4912" y="2496" name="SD_DO(7:0)" orien="R180" />
        <branch name="PS2_DO(7:0)">
            <wire x2="4944" y1="2560" y2="2560" x1="4912" />
        </branch>
        <iomarker fontsize="28" x="4912" y="2560" name="PS2_DO(7:0)" orien="R180" />
        <branch name="SD_Pop">
            <wire x2="4944" y1="2304" y2="2304" x1="4912" />
        </branch>
        <iomarker fontsize="28" x="4912" y="2304" name="SD_Pop" orien="R180" />
        <instance x="4944" y="2592" name="XLXI_385" orien="R0">
        </instance>
    </sheet>
</drawing>