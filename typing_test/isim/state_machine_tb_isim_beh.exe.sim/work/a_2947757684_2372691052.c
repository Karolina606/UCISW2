/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/nogac/Desktop/studejszyn_sem6/UCiSW2/typing_tutor/typing_test/state_machine_tb.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2947757684_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 5216U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 6656);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(129, ng0);
    t2 = (t0 + 3888U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 5024);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 6656);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(131, ng0);
    t2 = (t0 + 3888U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 5024);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2947757684_2372691052_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(137, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6528);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(138, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(141, ng0);
    t1 = (t0 + 3272U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 6720);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(139, ng0);
    t3 = (t0 + 6720);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t3);
    goto LAB6;

}

static void work_a_2947757684_2372691052_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    static char *nl0[] = {&&LAB3, &&LAB4};

LAB0:    xsi_set_current_line(148, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6784);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(149, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 6544);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(151, ng0);
    t4 = (t0 + 2792U);
    t5 = *((char **)t4);
    t8 = *((unsigned char *)t5);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB2;

LAB4:    xsi_set_current_line(155, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t8 = (t3 == (unsigned char)3);
    if (t8 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB2;

LAB5:    xsi_set_current_line(152, ng0);
    t4 = (t0 + 6784);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t4);
    goto LAB6;

LAB8:    xsi_set_current_line(156, ng0);
    t1 = (t0 + 6784);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB9;

}

static void work_a_2947757684_2372691052_p_3(char *t0)
{
    char t17[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    int64 t15;
    int64 t16;
    char *t18;
    char *t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    t1 = (t0 + 5960U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(170, ng0);

LAB6:    t2 = (t0 + 6560);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t5 = (t0 + 6560);
    *((int *)t5) = 0;
    xsi_set_current_line(172, ng0);
    t2 = (t0 + 6848);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(174, ng0);

LAB8:    t2 = (t0 + 4456U);
    t9 = std_textio_endfile(t2);
    t10 = (!(t9));
    if (t10 == 1)
        goto LAB15;

LAB16:    t8 = (unsigned char)0;

LAB17:    if (t8 == 1)
        goto LAB12;

LAB13:    t4 = (unsigned char)0;

LAB14:    if (t4 != 0)
        goto LAB9;

LAB11:    goto LAB2;

LAB5:    t3 = (t0 + 992U);
    t4 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t4 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(176, ng0);
    t3 = (t0 + 3888U);
    t7 = *((char **)t3);
    t15 = *((int64 *)t7);
    t16 = (t15 * 2);
    t3 = (t0 + 5768);
    xsi_process_wait(t3, t16);

LAB20:    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB10:;
LAB12:    t3 = (t0 + 2792U);
    t6 = *((char **)t3);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)2);
    t4 = t14;
    goto LAB14;

LAB15:    t3 = (t0 + 3112U);
    t5 = *((char **)t3);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)0);
    t8 = t12;
    goto LAB17;

LAB18:    xsi_set_current_line(177, ng0);
    t2 = (t0 + 4456U);
    t3 = (t0 + 4128U);
    t5 = *((char **)t3);
    t3 = (t5 + 0);
    t4 = std_textio_read_char(t2);
    *((unsigned char *)t3) = t4;
    xsi_set_current_line(179, ng0);
    t2 = (t0 + 4128U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t17, ((int)(t4)), 8);
    t5 = (t0 + 6912);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t18 = (t7 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(180, ng0);
    t2 = (t0 + 4128U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t17, ((int)(t4)), 8);
    t5 = (t0 + 6976);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t18 = (t7 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(181, ng0);
    t2 = (t0 + 7040);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(182, ng0);

LAB24:    t2 = (t0 + 6576);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB19:    goto LAB18;

LAB21:    goto LAB19;

LAB22:    t5 = (t0 + 6576);
    *((int *)t5) = 0;
    xsi_set_current_line(183, ng0);
    t2 = (t0 + 7040);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(185, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 12961);
    t4 = 1;
    if (8U == 8U)
        goto LAB32;

LAB33:    t4 = 0;

LAB34:    if (t4 != 0)
        goto LAB29;

LAB31:    xsi_set_current_line(188, ng0);
    t2 = (t0 + 7104);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB30:    goto LAB8;

LAB23:    t3 = (t0 + 992U);
    t8 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t8 == 1)
        goto LAB26;

LAB27:    t4 = (unsigned char)0;

LAB28:    if (t4 == 1)
        goto LAB22;
    else
        goto LAB24;

LAB25:    goto LAB23;

LAB26:    t5 = (t0 + 2632U);
    t6 = *((char **)t5);
    t9 = *((unsigned char *)t6);
    t10 = (t9 == (unsigned char)3);
    t4 = t10;
    goto LAB28;

LAB29:    xsi_set_current_line(186, ng0);
    t18 = (t0 + 7104);
    t19 = (t18 + 56U);
    t21 = *((char **)t19);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)3;
    xsi_driver_first_trans_fast(t18);
    goto LAB30;

LAB32:    t20 = 0;

LAB35:    if (t20 < 8U)
        goto LAB36;
    else
        goto LAB34;

LAB36:    t6 = (t3 + t20);
    t7 = (t2 + t20);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB33;

LAB37:    t20 = (t20 + 1);
    goto LAB35;

}

static void work_a_2947757684_2372691052_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int64 t4;
    int64 t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    t1 = (t0 + 6208U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(200, ng0);
    t2 = (t0 + 3888U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t5 = (0.010000000000000000 * t4);
    t2 = (t0 + 6016);
    xsi_process_wait(t2, t5);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(202, ng0);
    t2 = (t0 + 3112U);
    t3 = *((char **)t2);
    t7 = *((unsigned char *)t3);
    t8 = (t7 == (unsigned char)1);
    if (t8 == 1)
        goto LAB11;

LAB12:    t6 = (unsigned char)0;

LAB13:    if (t6 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(220, ng0);
    t2 = (t0 + 12977);
    t9 = (t0 + 7232);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t2, 8U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(221, ng0);
    t2 = (t0 + 7296);
    t3 = (t2 + 56U);
    t9 = *((char **)t3);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB9:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(203, ng0);
    t2 = (t0 + 7168);
    t12 = (t2 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(204, ng0);
    t2 = (t0 + 4008U);
    t3 = *((char **)t2);
    t2 = (t0 + 3592U);
    t9 = *((char **)t2);
    t16 = *((int *)t9);
    t17 = (t16 - 1);
    t18 = (t17 * 1);
    xsi_vhdl_check_range_of_index(1, 25, 1, t16);
    t19 = (8U * t18);
    t20 = (0 + t19);
    t2 = (t3 + t20);
    t12 = (t0 + 7232);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t21 = *((char **)t15);
    memcpy(t21, t2, 8U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(205, ng0);
    t2 = (t0 + 7296);
    t3 = (t2 + 56U);
    t9 = *((char **)t3);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(206, ng0);
    t2 = (t0 + 3888U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 6016);
    xsi_process_wait(t2, t4);

LAB16:    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB11:    t2 = (t0 + 2792U);
    t9 = *((char **)t2);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t6 = t11;
    goto LAB13;

LAB14:    xsi_set_current_line(207, ng0);
    t2 = (t0 + 7296);
    t3 = (t2 + 56U);
    t9 = *((char **)t3);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(208, ng0);
    t2 = (t0 + 3888U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t5 = (5 * t4);
    t2 = (t0 + 6016);
    xsi_process_wait(t2, t5);

LAB20:    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB15:    goto LAB14;

LAB17:    goto LAB15;

LAB18:    xsi_set_current_line(210, ng0);
    t2 = (t0 + 3592U);
    t3 = *((char **)t2);
    t16 = *((int *)t3);
    t17 = (t16 + 1);
    t2 = (t0 + 7360);
    t9 = (t2 + 56U);
    t12 = *((char **)t9);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((int *)t14) = t17;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(212, ng0);
    t2 = (t0 + 4008U);
    t3 = *((char **)t2);
    t2 = (t0 + 3592U);
    t9 = *((char **)t2);
    t16 = *((int *)t9);
    t17 = (t16 - 1);
    t18 = (t17 * 1);
    xsi_vhdl_check_range_of_index(1, 25, 1, t16);
    t19 = (8U * t18);
    t20 = (0 + t19);
    t2 = (t3 + t20);
    t12 = (t0 + 12969);
    t6 = 1;
    if (8U == 8U)
        goto LAB25;

LAB26:    t6 = 0;

LAB27:    if (t6 != 0)
        goto LAB22;

LAB24:    xsi_set_current_line(216, ng0);
    t2 = (t0 + 7168);
    t3 = (t2 + 56U);
    t9 = *((char **)t3);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB23:    goto LAB9;

LAB19:    goto LAB18;

LAB21:    goto LAB19;

LAB22:    xsi_set_current_line(213, ng0);
    t21 = (t0 + 7168);
    t23 = (t21 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    *((unsigned char *)t26) = (unsigned char)3;
    xsi_driver_first_trans_fast(t21);
    xsi_set_current_line(214, ng0);
    t2 = (t0 + 3592U);
    t3 = *((char **)t2);
    t16 = *((int *)t3);
    t17 = (t16 + 2);
    t2 = (t0 + 7360);
    t9 = (t2 + 56U);
    t12 = *((char **)t9);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((int *)t14) = t17;
    xsi_driver_first_trans_fast(t2);
    goto LAB23;

LAB25:    t22 = 0;

LAB28:    if (t22 < 8U)
        goto LAB29;
    else
        goto LAB27;

LAB29:    t14 = (t2 + t22);
    t15 = (t12 + t22);
    if (*((unsigned char *)t14) != *((unsigned char *)t15))
        goto LAB26;

LAB30:    t22 = (t22 + 1);
    goto LAB28;

}


extern void work_a_2947757684_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2947757684_2372691052_p_0,(void *)work_a_2947757684_2372691052_p_1,(void *)work_a_2947757684_2372691052_p_2,(void *)work_a_2947757684_2372691052_p_3,(void *)work_a_2947757684_2372691052_p_4};
	xsi_register_didat("work_a_2947757684_2372691052", "isim/state_machine_tb_isim_beh.exe.sim/work/a_2947757684_2372691052.didat");
	xsi_register_executes(pe);
}
