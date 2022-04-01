<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="XLXN_3" />
        <signal name="XLXN_6" />
        <signal name="XLXN_5" />
        <signal name="XLXN_25(7:0)" />
        <signal name="XLXN_72" />
        <signal name="XLXN_79" />
        <signal name="SDC_MISO" />
        <signal name="SDC_SS" />
        <signal name="SDC_SCK" />
        <signal name="btn_north" />
        <signal name="FName(7:0)" />
        <signal name="LED_7" />
        <signal name="XLXN_794" />
        <signal name="LED(1:0)" />
        <signal name="btn_west" />
        <signal name="FExt(1)" />
        <signal name="FExt(0)" />
        <signal name="FName(7)" />
        <signal name="FName(5)" />
        <signal name="FName(4)" />
        <signal name="FName(6)" />
        <signal name="FName(3)" />
        <signal name="FName(0)" />
        <signal name="SW_0" />
        <signal name="FName(1)" />
        <signal name="SW_1" />
        <signal name="FName(2)" />
        <signal name="SW_2" />
        <signal name="SDC_MOSI" />
        <signal name="XLXN_32" />
        <signal name="FExt(1:0)" />
        <signal name="XLXN_1114" />
        <signal name="XLXN_1124(7:0)" />
        <signal name="XLXN_1125(7:0)" />
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
        <signal name="XLXN_49" />
        <signal name="XLXN_52(7:0)" />
        <signal name="XLXN_53" />
        <signal name="XLXN_57" />
        <signal name="XLXN_1172" />
        <signal name="XLXN_59" />
        <signal name="XLXN_1173" />
        <signal name="XLXN_61" />
        <signal name="XLXN_63" />
        <signal name="XLXN_1177" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_1178" />
        <signal name="XLXN_1179(7:0)" />
        <signal name="XLXN_1180(7:0)" />
        <signal name="XLXN_1181" />
        <signal name="XLXN_1182" />
        <signal name="XLXN_1183" />
        <signal name="XLXN_1184" />
        <signal name="XLXN_1185" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="SDC_MISO" />
        <port polarity="Output" name="SDC_SS" />
        <port polarity="Output" name="SDC_SCK" />
        <port polarity="Input" name="btn_north" />
        <port polarity="Output" name="LED_7" />
        <port polarity="Output" name="LED(1:0)" />
        <port polarity="Input" name="btn_west" />
        <port polarity="Input" name="SW_0" />
        <port polarity="Input" name="SW_1" />
        <port polarity="Input" name="SW_2" />
        <port polarity="Output" name="SDC_MOSI" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Input" name="Clk_50MHz" />
        <blockdef name="PS2_Kbd">
            <timestamp>2008-9-19T9:9:36</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="and3b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
        </blockdef>
        <blockdef name="FSM_SendByte">
            <timestamp>2022-3-22T7:5:46</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
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
        <blockdef name="SDC_FileReader">
            <timestamp>2021-11-9T19:15:58</timestamp>
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
        <blockdef name="state_machine">
            <timestamp>2022-4-1T19:7:32</timestamp>
            <rect width="304" x="64" y="-512" height="512" />
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
        </blockdef>
        <block symbolname="PS2_Kbd" name="XLXI_1">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_3" name="E0" />
            <blockpin signalname="XLXN_6" name="F0" />
            <blockpin signalname="XLXN_5" name="DO_Rdy" />
            <blockpin signalname="XLXN_25(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="and3b2" name="XLXI_2">
            <blockpin signalname="XLXN_3" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_5" name="I2" />
            <blockpin signalname="XLXN_72" name="O" />
        </block>
        <block symbolname="FSM_SendByte" name="XLXI_3">
            <blockpin name="Busy" />
            <blockpin signalname="XLXN_1172" name="DORdy" />
            <blockpin signalname="XLXN_1124(7:0)" name="DO(7:0)" />
            <blockpin signalname="XLXN_25(7:0)" name="DI(7:0)" />
            <blockpin signalname="XLXN_72" name="DIRdy" />
            <blockpin signalname="XLXN_1177" name="TxBusy" />
            <blockpin signalname="XLXN_79" name="Reset" />
            <blockpin signalname="Clk_50MHz" name="Clk" />
        </block>
        <block symbolname="gnd" name="XLXI_4">
            <blockpin signalname="XLXN_79" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_136">
            <blockpin signalname="XLXN_794" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_43">
            <blockpin signalname="FName(7)" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_37">
            <blockpin signalname="FName(6)" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_45">
            <blockpin signalname="XLXN_1114" name="I" />
            <blockpin signalname="FName(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_46">
            <blockpin signalname="SW_0" name="I" />
            <blockpin signalname="FName(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_44">
            <blockpin signalname="SW_1" name="I" />
            <blockpin signalname="FName(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_48">
            <blockpin signalname="SW_2" name="I" />
            <blockpin signalname="FName(2)" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_12">
            <blockpin signalname="FExt(0)" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_13">
            <blockpin signalname="FExt(1)" name="P" />
        </block>
        <block symbolname="and2b1" name="XLXI_9">
            <blockpin signalname="XLXN_1177" name="I0" />
            <blockpin signalname="XLXN_32" name="I1" />
            <blockpin signalname="XLXN_1182" name="O" />
        </block>
        <block symbolname="SDC_FileReader" name="XLXI_52">
            <blockpin signalname="SDC_MISO" name="SDC_MISO" />
            <blockpin signalname="btn_north" name="Start" />
            <blockpin signalname="FName(7:0)" name="FName(7:0)" />
            <blockpin signalname="XLXN_794" name="Reset" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_1182" name="DO_Pop" />
            <blockpin signalname="btn_west" name="Abort" />
            <blockpin signalname="SDC_MOSI" name="SDC_MOSI" />
            <blockpin signalname="SDC_SCK" name="SDC_SCK" />
            <blockpin signalname="SDC_SS" name="SDC_SS" />
            <blockpin signalname="LED(1:0)" name="Error(1:0)" />
            <blockpin signalname="XLXN_1125(7:0)" name="DO(7:0)" />
            <blockpin signalname="XLXN_32" name="DO_Rdy" />
            <blockpin signalname="LED_7" name="Busy" />
            <blockpin signalname="FExt(1:0)" name="FExt(1:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="vcc" name="XLXI_203">
            <blockpin signalname="FName(5)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_204">
            <blockpin signalname="FName(4)" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_369">
            <blockpin signalname="XLXN_1114" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_19">
            <blockpin signalname="XLXN_612" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_35">
            <blockpin signalname="XLXN_613" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_21">
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
        <block symbolname="VGAtxt48x20" name="XLXI_42">
            <blockpin signalname="XLXN_1179(7:0)" name="Char_DI(7:0)" />
            <blockpin signalname="XLXN_795" name="Home" />
            <blockpin signalname="btn_west" name="NewLine" />
            <blockpin signalname="XLXN_796" name="Goto00" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_612" name="CursorOn" />
            <blockpin signalname="XLXN_613" name="ScrollEn" />
            <blockpin signalname="XLXN_614" name="ScrollClear" />
            <blockpin signalname="XLXN_1177" name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_564" name="VGA_RGB" />
            <blockpin signalname="XLXN_1178" name="Char_WE" />
        </block>
        <block symbolname="state_machine" name="XLXI_379">
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="btn_west" name="Reset" />
            <blockpin signalname="LED_7" name="SD_Busy" />
            <blockpin signalname="XLXN_1182" name="SD_Pop" />
            <blockpin signalname="XLXN_32" name="SD_DO_Rdy" />
            <blockpin signalname="XLXN_1172" name="PS2_DO_Rdy" />
            <blockpin signalname="XLXN_1125(7:0)" name="SD_DO(7:0)" />
            <blockpin signalname="XLXN_1124(7:0)" name="PS2_DO(7:0)" />
            <blockpin signalname="XLXN_1178" name="Char_WE" />
            <blockpin signalname="XLXN_1179(7:0)" name="Char_DI(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="1024" y="1088" name="XLXI_1" orien="R0">
        </instance>
        <branch name="PS2_Clk">
            <wire x2="1024" y1="864" y2="864" x1="848" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="1024" y1="928" y2="928" x1="848" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1456" y1="928" y2="928" x1="1408" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1456" y1="992" y2="992" x1="1408" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1456" y1="1056" y2="1056" x1="1408" />
        </branch>
        <instance x="1456" y="864" name="XLXI_2" orien="M180" />
        <branch name="XLXN_25(7:0)">
            <wire x2="1888" y1="864" y2="864" x1="1408" />
        </branch>
        <instance x="1888" y="1152" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_72">
            <wire x2="1760" y1="992" y2="992" x1="1712" />
            <wire x2="1760" y1="928" y2="992" x1="1760" />
            <wire x2="1888" y1="928" y2="928" x1="1760" />
        </branch>
        <branch name="XLXN_79">
            <wire x2="1888" y1="1056" y2="1056" x1="1856" />
        </branch>
        <instance x="1728" y="992" name="XLXI_4" orien="R90" />
        <instance x="2400" y="2624" name="XLXI_136" orien="R90" />
        <bustap x2="1520" y1="2640" y2="2640" x1="1616" />
        <bustap x2="1520" y1="2704" y2="2704" x1="1616" />
        <bustap x2="1584" y1="2816" y2="2816" x1="1680" />
        <bustap x2="1584" y1="2880" y2="2880" x1="1680" />
        <bustap x2="1584" y1="2944" y2="2944" x1="1680" />
        <bustap x2="1584" y1="3008" y2="3008" x1="1680" />
        <bustap x2="1584" y1="3072" y2="3072" x1="1680" />
        <instance x="1248" y="2752" name="XLXI_43" orien="R90" />
        <instance x="1248" y="2816" name="XLXI_37" orien="R90" />
        <instance x="944" y="3104" name="XLXI_45" orien="R0" />
        <bustap x2="1584" y1="3344" y2="3344" x1="1680" />
        <instance x="944" y="3376" name="XLXI_46" orien="R0" />
        <bustap x2="1584" y1="3248" y2="3248" x1="1680" />
        <instance x="944" y="3280" name="XLXI_44" orien="R0" />
        <bustap x2="1584" y1="3152" y2="3152" x1="1680" />
        <instance x="944" y="3184" name="XLXI_48" orien="R0" />
        <instance x="1248" y="2640" name="XLXI_12" orien="R90" />
        <instance x="1376" y="2704" name="XLXI_13" orien="R270" />
        <instance x="2048" y="2720" name="XLXI_9" orien="R0" />
        <instance x="2544" y="2656" name="XLXI_52" orien="R0">
        </instance>
        <instance x="1376" y="3008" name="XLXI_203" orien="R270" />
        <instance x="1376" y="3072" name="XLXI_204" orien="R270" />
        <branch name="SDC_MISO">
            <wire x2="3232" y1="2368" y2="2368" x1="2960" />
        </branch>
        <branch name="SDC_SS">
            <wire x2="3232" y1="2560" y2="2560" x1="2960" />
        </branch>
        <branch name="SDC_SCK">
            <wire x2="3232" y1="2496" y2="2496" x1="2960" />
        </branch>
        <branch name="btn_north">
            <wire x2="2544" y1="2368" y2="2368" x1="912" />
        </branch>
        <branch name="FName(7:0)">
            <wire x2="1856" y1="2720" y2="2720" x1="1680" />
            <wire x2="1680" y1="2720" y2="2816" x1="1680" />
            <wire x2="1680" y1="2816" y2="2880" x1="1680" />
            <wire x2="1680" y1="2880" y2="2944" x1="1680" />
            <wire x2="1680" y1="2944" y2="3008" x1="1680" />
            <wire x2="1680" y1="3008" y2="3072" x1="1680" />
            <wire x2="1680" y1="3072" y2="3152" x1="1680" />
            <wire x2="1680" y1="3152" y2="3248" x1="1680" />
            <wire x2="1680" y1="3248" y2="3344" x1="1680" />
            <wire x2="1680" y1="3344" y2="3408" x1="1680" />
            <wire x2="1856" y1="2432" y2="2720" x1="1856" />
            <wire x2="2544" y1="2432" y2="2432" x1="1856" />
        </branch>
        <branch name="LED_7">
            <wire x2="3184" y1="2752" y2="2752" x1="2960" />
            <wire x2="3248" y1="2752" y2="2752" x1="3184" />
            <wire x2="4400" y1="2064" y2="2064" x1="3184" />
            <wire x2="3184" y1="2064" y2="2752" x1="3184" />
        </branch>
        <branch name="XLXN_794">
            <wire x2="2544" y1="2688" y2="2688" x1="2528" />
        </branch>
        <branch name="LED(1:0)">
            <wire x2="3248" y1="2816" y2="2816" x1="2960" />
        </branch>
        <branch name="btn_west">
            <wire x2="1392" y1="2432" y2="2432" x1="912" />
            <wire x2="1776" y1="2432" y2="2432" x1="1392" />
            <wire x2="1776" y1="2432" y2="3296" x1="1776" />
            <wire x2="4160" y1="3296" y2="3296" x1="1776" />
            <wire x2="4400" y1="2000" y2="2000" x1="1392" />
            <wire x2="1392" y1="2000" y2="2432" x1="1392" />
            <wire x2="1776" y1="2400" y2="2432" x1="1776" />
            <wire x2="2448" y1="2400" y2="2400" x1="1776" />
            <wire x2="2448" y1="2400" y2="2624" x1="2448" />
            <wire x2="2544" y1="2624" y2="2624" x1="2448" />
        </branch>
        <branch name="FExt(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1488" y="2640" type="branch" />
            <wire x2="1488" y1="2640" y2="2640" x1="1376" />
            <wire x2="1520" y1="2640" y2="2640" x1="1488" />
        </branch>
        <branch name="FExt(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1488" y="2704" type="branch" />
            <wire x2="1488" y1="2704" y2="2704" x1="1376" />
            <wire x2="1520" y1="2704" y2="2704" x1="1488" />
        </branch>
        <branch name="FName(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1552" y="2816" type="branch" />
            <wire x2="1552" y1="2816" y2="2816" x1="1376" />
            <wire x2="1584" y1="2816" y2="2816" x1="1552" />
        </branch>
        <branch name="FName(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1552" y="2944" type="branch" />
            <wire x2="1552" y1="2944" y2="2944" x1="1376" />
            <wire x2="1584" y1="2944" y2="2944" x1="1552" />
        </branch>
        <branch name="FName(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1552" y="3008" type="branch" />
            <wire x2="1552" y1="3008" y2="3008" x1="1376" />
            <wire x2="1584" y1="3008" y2="3008" x1="1552" />
        </branch>
        <branch name="FName(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1552" y="2880" type="branch" />
            <wire x2="1552" y1="2880" y2="2880" x1="1376" />
            <wire x2="1584" y1="2880" y2="2880" x1="1552" />
        </branch>
        <branch name="FName(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1552" y="3072" type="branch" />
            <wire x2="1552" y1="3072" y2="3072" x1="1168" />
            <wire x2="1584" y1="3072" y2="3072" x1="1552" />
        </branch>
        <branch name="FName(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1552" y="3344" type="branch" />
            <wire x2="1552" y1="3344" y2="3344" x1="1168" />
            <wire x2="1584" y1="3344" y2="3344" x1="1552" />
        </branch>
        <branch name="SW_0">
            <wire x2="944" y1="3344" y2="3344" x1="912" />
        </branch>
        <branch name="FName(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1552" y="3248" type="branch" />
            <wire x2="1552" y1="3248" y2="3248" x1="1168" />
            <wire x2="1584" y1="3248" y2="3248" x1="1552" />
        </branch>
        <branch name="SW_1">
            <wire x2="944" y1="3248" y2="3248" x1="912" />
        </branch>
        <branch name="FName(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1552" y="3152" type="branch" />
            <wire x2="1552" y1="3152" y2="3152" x1="1168" />
            <wire x2="1584" y1="3152" y2="3152" x1="1552" />
        </branch>
        <branch name="SW_2">
            <wire x2="944" y1="3152" y2="3152" x1="912" />
        </branch>
        <branch name="SDC_MOSI">
            <wire x2="3232" y1="2432" y2="2432" x1="2960" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="2000" y1="2256" y2="2592" x1="2000" />
            <wire x2="2048" y1="2592" y2="2592" x1="2000" />
            <wire x2="2976" y1="2256" y2="2256" x1="2000" />
            <wire x2="2976" y1="2256" y2="2624" x1="2976" />
            <wire x2="3680" y1="2624" y2="2624" x1="2976" />
            <wire x2="2976" y1="2624" y2="2624" x1="2960" />
            <wire x2="3680" y1="2192" y2="2624" x1="3680" />
            <wire x2="4400" y1="2192" y2="2192" x1="3680" />
        </branch>
        <branch name="FExt(1:0)">
            <wire x2="2544" y1="2496" y2="2496" x1="1616" />
            <wire x2="1616" y1="2496" y2="2640" x1="1616" />
            <wire x2="1616" y1="2640" y2="2704" x1="1616" />
            <wire x2="1616" y1="2704" y2="2752" x1="1616" />
        </branch>
        <branch name="XLXN_1114">
            <wire x2="944" y1="3072" y2="3072" x1="912" />
        </branch>
        <instance x="784" y="3008" name="XLXI_369" orien="R90" />
        <branch name="XLXN_1124(7:0)">
            <wire x2="2320" y1="864" y2="864" x1="2272" />
            <wire x2="2320" y1="864" y2="1680" x1="2320" />
            <wire x2="3904" y1="1680" y2="1680" x1="2320" />
            <wire x2="3904" y1="1680" y2="2384" x1="3904" />
            <wire x2="4400" y1="2384" y2="2384" x1="3904" />
        </branch>
        <branch name="XLXN_1125(7:0)">
            <wire x2="3200" y1="2688" y2="2688" x1="2960" />
            <wire x2="3200" y1="2320" y2="2688" x1="3200" />
            <wire x2="4400" y1="2320" y2="2320" x1="3200" />
        </branch>
        <instance x="4128" y="3520" name="XLXI_19" orien="R270" />
        <instance x="4128" y="3584" name="XLXI_35" orien="R270" />
        <instance x="4128" y="3648" name="XLXI_21" orien="R270" />
        <instance x="4000" y="3168" name="XLXI_137" orien="R90" />
        <instance x="4000" y="3296" name="XLXI_138" orien="R90" />
        <instance x="4768" y="3232" name="XLXI_39" orien="R0" />
        <instance x="4768" y="3296" name="XLXI_40" orien="R0" />
        <instance x="4768" y="3360" name="XLXI_41" orien="R0" />
        <instance x="4160" y="3680" name="XLXI_42" orien="R0">
        </instance>
        <branch name="VGA_VS">
            <wire x2="5040" y1="3136" y2="3136" x1="4592" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="5040" y1="3072" y2="3072" x1="4592" />
        </branch>
        <branch name="XLXN_564">
            <wire x2="4688" y1="3200" y2="3200" x1="4592" />
            <wire x2="4688" y1="3200" y2="3264" x1="4688" />
            <wire x2="4768" y1="3264" y2="3264" x1="4688" />
            <wire x2="4688" y1="3264" y2="3328" x1="4688" />
            <wire x2="4768" y1="3328" y2="3328" x1="4688" />
            <wire x2="4768" y1="3200" y2="3200" x1="4688" />
        </branch>
        <branch name="XLXN_612">
            <wire x2="4160" y1="3456" y2="3456" x1="4128" />
        </branch>
        <branch name="XLXN_613">
            <wire x2="4160" y1="3520" y2="3520" x1="4128" />
        </branch>
        <branch name="VGA_G">
            <wire x2="5040" y1="3264" y2="3264" x1="4992" />
        </branch>
        <branch name="VGA_B">
            <wire x2="5040" y1="3328" y2="3328" x1="4992" />
        </branch>
        <branch name="VGA_R">
            <wire x2="5040" y1="3200" y2="3200" x1="4992" />
        </branch>
        <branch name="XLXN_795">
            <wire x2="4160" y1="3232" y2="3232" x1="4128" />
        </branch>
        <branch name="XLXN_614">
            <wire x2="4160" y1="3584" y2="3584" x1="4128" />
        </branch>
        <branch name="XLXN_796">
            <wire x2="4160" y1="3360" y2="3360" x1="4128" />
        </branch>
        <branch name="XLXN_1172">
            <wire x2="4160" y1="928" y2="928" x1="2272" />
            <wire x2="4160" y1="928" y2="2256" x1="4160" />
            <wire x2="4400" y1="2256" y2="2256" x1="4160" />
        </branch>
        <branch name="XLXN_1177">
            <wire x2="1824" y1="544" y2="992" x1="1824" />
            <wire x2="1888" y1="992" y2="992" x1="1824" />
            <wire x2="5168" y1="544" y2="544" x1="1824" />
            <wire x2="5168" y1="544" y2="2896" x1="5168" />
            <wire x2="2048" y1="2656" y2="2656" x1="2032" />
            <wire x2="2032" y1="2656" y2="2896" x1="2032" />
            <wire x2="4624" y1="2896" y2="2896" x1="2032" />
            <wire x2="4624" y1="2896" y2="3328" x1="4624" />
            <wire x2="5168" y1="2896" y2="2896" x1="4624" />
            <wire x2="4624" y1="3328" y2="3328" x1="4592" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="560" y1="2976" y2="3744" x1="560" />
            <wire x2="2256" y1="3744" y2="3744" x1="560" />
            <wire x2="2448" y1="3744" y2="3744" x1="2256" />
            <wire x2="4160" y1="3744" y2="3744" x1="2448" />
            <wire x2="960" y1="2976" y2="2976" x1="560" />
            <wire x2="960" y1="1792" y2="1792" x1="848" />
            <wire x2="992" y1="1792" y2="1792" x1="960" />
            <wire x2="1824" y1="1792" y2="1792" x1="992" />
            <wire x2="1824" y1="1792" y2="1936" x1="1824" />
            <wire x2="4400" y1="1936" y2="1936" x1="1824" />
            <wire x2="960" y1="1792" y2="2976" x1="960" />
            <wire x2="1024" y1="992" y2="992" x1="992" />
            <wire x2="992" y1="992" y2="1056" x1="992" />
            <wire x2="1024" y1="1056" y2="1056" x1="992" />
            <wire x2="992" y1="1056" y2="1792" x1="992" />
            <wire x2="1824" y1="1120" y2="1792" x1="1824" />
            <wire x2="1888" y1="1120" y2="1120" x1="1824" />
            <wire x2="2448" y1="2752" y2="2752" x1="2256" />
            <wire x2="2448" y1="2752" y2="2816" x1="2448" />
            <wire x2="2544" y1="2816" y2="2816" x1="2448" />
            <wire x2="2544" y1="2752" y2="2752" x1="2448" />
            <wire x2="2256" y1="2752" y2="3744" x1="2256" />
            <wire x2="4160" y1="3680" y2="3680" x1="2448" />
            <wire x2="2448" y1="3680" y2="3744" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="848" y="864" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="848" y="928" name="PS2_Data" orien="R180" />
        <iomarker fontsize="28" x="912" y="2432" name="btn_west" orien="R180" />
        <iomarker fontsize="28" x="912" y="2368" name="btn_north" orien="R180" />
        <iomarker fontsize="28" x="3248" y="2752" name="LED_7" orien="R0" />
        <iomarker fontsize="28" x="3248" y="2816" name="LED(1:0)" orien="R0" />
        <iomarker fontsize="28" x="912" y="3344" name="SW_0" orien="R180" />
        <iomarker fontsize="28" x="912" y="3248" name="SW_1" orien="R180" />
        <iomarker fontsize="28" x="912" y="3152" name="SW_2" orien="R180" />
        <iomarker fontsize="28" x="3232" y="2560" name="SDC_SS" orien="R0" />
        <iomarker fontsize="28" x="3232" y="2496" name="SDC_SCK" orien="R0" />
        <iomarker fontsize="28" x="3232" y="2432" name="SDC_MOSI" orien="R0" />
        <iomarker fontsize="28" x="3232" y="2368" name="SDC_MISO" orien="R0" />
        <iomarker fontsize="28" x="5040" y="3200" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="5040" y="3328" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="5040" y="3264" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="5040" y="3136" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="5040" y="3072" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="848" y="1792" name="Clk_50MHz" orien="R180" />
        <instance x="4400" y="2416" name="XLXI_379" orien="R0">
        </instance>
        <branch name="XLXN_1178">
            <wire x2="4048" y1="2832" y2="3136" x1="4048" />
            <wire x2="4160" y1="3136" y2="3136" x1="4048" />
            <wire x2="5056" y1="2832" y2="2832" x1="4048" />
            <wire x2="5056" y1="1936" y2="1936" x1="4832" />
            <wire x2="5056" y1="1936" y2="2832" x1="5056" />
        </branch>
        <branch name="XLXN_1179(7:0)">
            <wire x2="4896" y1="2736" y2="2736" x1="4112" />
            <wire x2="4112" y1="2736" y2="3072" x1="4112" />
            <wire x2="4160" y1="3072" y2="3072" x1="4112" />
            <wire x2="4896" y1="2384" y2="2384" x1="4832" />
            <wire x2="4896" y1="2384" y2="2736" x1="4896" />
        </branch>
        <branch name="XLXN_1182">
            <wire x2="2384" y1="2624" y2="2624" x1="2304" />
            <wire x2="2432" y1="2624" y2="2624" x1="2384" />
            <wire x2="3504" y1="2224" y2="2224" x1="2384" />
            <wire x2="3504" y1="2224" y2="2592" x1="3504" />
            <wire x2="4128" y1="2592" y2="2592" x1="3504" />
            <wire x2="2384" y1="2224" y2="2624" x1="2384" />
            <wire x2="2432" y1="2560" y2="2624" x1="2432" />
            <wire x2="2544" y1="2560" y2="2560" x1="2432" />
            <wire x2="4400" y1="2128" y2="2128" x1="4128" />
            <wire x2="4128" y1="2128" y2="2592" x1="4128" />
        </branch>
    </sheet>
</drawing>