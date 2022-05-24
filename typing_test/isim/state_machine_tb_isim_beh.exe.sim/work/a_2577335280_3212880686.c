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
static const char *ng0 = "C:/Users/nogac/Desktop/studejszyn_sem6/UCiSW2/typing_tutor/typing_test/state_machine.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_2931903318_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_2931975192_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2577335280_3212880686_p_0(char *t0)
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

LAB0:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5976);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(73, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 3112U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 6104);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(74, ng0);
    t3 = (t0 + 6104);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t3);
    goto LAB6;

}

static void work_a_2577335280_3212880686_p_1(char *t0)
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
    unsigned int t12;
    unsigned char t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned char t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6, &&LAB7, &&LAB8, &&LAB9};

LAB0:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6168);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 5992);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(87, ng0);
    t4 = (t0 + 1672U);
    t5 = *((char **)t4);
    t8 = *((unsigned char *)t5);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB2;

LAB4:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t8 = (t3 == (unsigned char)3);
    if (t8 != 0)
        goto LAB14;

LAB16:
LAB15:    goto LAB2;

LAB5:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 12012);
    t9 = 1;
    if (8U == 8U)
        goto LAB26;

LAB27:    t9 = 0;

LAB28:    if (t9 == 1)
        goto LAB23;

LAB24:    t7 = (t0 + 1352U);
    t10 = *((char **)t7);
    t7 = (t0 + 12020);
    t13 = 1;
    if (8U == 8U)
        goto LAB32;

LAB33:    t13 = 0;

LAB34:    t8 = t13;

LAB25:    if (t8 == 1)
        goto LAB20;

LAB21:    t17 = (t0 + 1352U);
    t18 = *((char **)t17);
    t17 = (t0 + 12028);
    t20 = 1;
    if (8U == 8U)
        goto LAB38;

LAB39:    t20 = 0;

LAB40:    t3 = t20;

LAB22:    if (t3 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 6168);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB18:    goto LAB2;

LAB6:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 6168);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB7:    xsi_set_current_line(108, ng0);
    t1 = (t0 + 6168);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB8:    xsi_set_current_line(112, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 12036);
    t8 = 1;
    if (8U == 8U)
        goto LAB50;

LAB51:    t8 = 0;

LAB52:    if (t8 == 1)
        goto LAB47;

LAB48:    t7 = (t0 + 1992U);
    t10 = *((char **)t7);
    t7 = (t0 + 12044);
    t9 = 1;
    if (8U == 8U)
        goto LAB56;

LAB57:    t9 = 0;

LAB58:    t3 = t9;

LAB49:    if (t3 != 0)
        goto LAB44;

LAB46:
LAB45:    goto LAB2;

LAB9:    xsi_set_current_line(117, ng0);
    t1 = (t0 + 6168);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB10:    xsi_set_current_line(120, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6168);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB11:    xsi_set_current_line(88, ng0);
    t4 = (t0 + 6168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t4);
    goto LAB12;

LAB14:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 6168);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB15;

LAB17:    xsi_set_current_line(99, ng0);
    t24 = (t0 + 6168);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = (unsigned char)4;
    xsi_driver_first_trans_fast(t24);
    goto LAB18;

LAB20:    t3 = (unsigned char)1;
    goto LAB22;

LAB23:    t8 = (unsigned char)1;
    goto LAB25;

LAB26:    t12 = 0;

LAB29:    if (t12 < 8U)
        goto LAB30;
    else
        goto LAB28;

LAB30:    t5 = (t2 + t12);
    t6 = (t1 + t12);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB27;

LAB31:    t12 = (t12 + 1);
    goto LAB29;

LAB32:    t14 = 0;

LAB35:    if (t14 < 8U)
        goto LAB36;
    else
        goto LAB34;

LAB36:    t15 = (t10 + t14);
    t16 = (t7 + t14);
    if (*((unsigned char *)t15) != *((unsigned char *)t16))
        goto LAB33;

LAB37:    t14 = (t14 + 1);
    goto LAB35;

LAB38:    t21 = 0;

LAB41:    if (t21 < 8U)
        goto LAB42;
    else
        goto LAB40;

LAB42:    t22 = (t18 + t21);
    t23 = (t17 + t21);
    if (*((unsigned char *)t22) != *((unsigned char *)t23))
        goto LAB39;

LAB43:    t21 = (t21 + 1);
    goto LAB41;

LAB44:    xsi_set_current_line(113, ng0);
    t17 = (t0 + 6168);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t22 = (t19 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)6;
    xsi_driver_first_trans_fast(t17);
    goto LAB45;

LAB47:    t3 = (unsigned char)1;
    goto LAB49;

LAB50:    t12 = 0;

LAB53:    if (t12 < 8U)
        goto LAB54;
    else
        goto LAB52;

LAB54:    t5 = (t2 + t12);
    t6 = (t1 + t12);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB51;

LAB55:    t12 = (t12 + 1);
    goto LAB53;

LAB56:    t14 = 0;

LAB59:    if (t14 < 8U)
        goto LAB60;
    else
        goto LAB58;

LAB60:    t15 = (t10 + t14);
    t16 = (t7 + t14);
    if (*((unsigned char *)t15) != *((unsigned char *)t16))
        goto LAB57;

LAB61:    t14 = (t14 + 1);
    goto LAB59;

}

static void work_a_2577335280_3212880686_p_2(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned int t12;
    unsigned char t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned char t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    int t30;
    int t31;
    static char *nl0[] = {&&LAB6, &&LAB7, &&LAB8, &&LAB9, &&LAB10, &&LAB11, &&LAB12};

LAB0:    xsi_set_current_line(126, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6008);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(127, ng0);
    t3 = (t0 + 2952U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (char *)((nl0) + t5);
    goto **((char **)t3);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(129, ng0);
    t6 = (t0 + 6232);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(130, ng0);
    t1 = (t0 + 6296);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(131, ng0);
    t1 = (t0 + 6360);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB7:    xsi_set_current_line(134, ng0);
    t1 = (t0 + 6232);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(135, ng0);
    t1 = (t0 + 6360);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB8:    xsi_set_current_line(140, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 12052);
    t11 = 1;
    if (8U == 8U)
        goto LAB23;

LAB24:    t11 = 0;

LAB25:    if ((!(t11)) == 1)
        goto LAB20;

LAB21:    t5 = (unsigned char)0;

LAB22:    if (t5 == 1)
        goto LAB17;

LAB18:    t2 = (unsigned char)0;

LAB19:    if (t2 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(146, ng0);
    t1 = (t0 + 6360);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB9:    xsi_set_current_line(150, ng0);
    t1 = (t0 + 6296);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(151, ng0);
    t1 = (t0 + 6360);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB10:    xsi_set_current_line(154, ng0);
    t1 = (t0 + 6296);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(155, ng0);
    t1 = (t0 + 6232);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(156, ng0);
    t1 = (t0 + 6360);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB11:    xsi_set_current_line(160, ng0);
    t1 = (t0 + 6360);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(161, ng0);
    t1 = (t0 + 6232);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(162, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 12076);
    t11 = 1;
    if (8U == 8U)
        goto LAB50;

LAB51:    t11 = 0;

LAB52:    if ((!(t11)) == 1)
        goto LAB47;

LAB48:    t5 = (unsigned char)0;

LAB49:    if (t5 == 1)
        goto LAB44;

LAB45:    t2 = (unsigned char)0;

LAB46:    if (t2 != 0)
        goto LAB41;

LAB43:
LAB42:    goto LAB5;

LAB12:    xsi_set_current_line(169, ng0);
    t1 = (t0 + 6552);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 1;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB13:    goto LAB5;

LAB14:    xsi_set_current_line(141, ng0);
    t24 = (t0 + 1352U);
    t25 = *((char **)t24);
    t24 = (t0 + 6424);
    t26 = (t24 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t25, 8U);
    xsi_driver_first_trans_fast_port(t24);
    xsi_set_current_line(142, ng0);
    t1 = (t0 + 6296);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(143, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 3272U);
    t4 = *((char **)t1);
    t30 = *((int *)t4);
    t31 = (t30 - 1);
    t12 = (t31 * 1);
    t14 = (8U * t12);
    t21 = (0U + t14);
    t1 = (t0 + 6488);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 8U);
    xsi_driver_first_trans_delta(t1, t21, 8U, 0LL);
    xsi_set_current_line(144, ng0);
    t1 = (t0 + 3272U);
    t3 = *((char **)t1);
    t30 = *((int *)t3);
    t31 = (t30 + 1);
    t1 = (t0 + 6552);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t31;
    xsi_driver_first_trans_fast(t1);
    goto LAB15;

LAB17:    t17 = (t0 + 1352U);
    t18 = *((char **)t17);
    t17 = (t0 + 12068);
    t20 = 1;
    if (8U == 8U)
        goto LAB35;

LAB36:    t20 = 0;

LAB37:    t2 = (!(t20));
    goto LAB19;

LAB20:    t8 = (t0 + 1352U);
    t9 = *((char **)t8);
    t8 = (t0 + 12060);
    t13 = 1;
    if (8U == 8U)
        goto LAB29;

LAB30:    t13 = 0;

LAB31:    t5 = (!(t13));
    goto LAB22;

LAB23:    t12 = 0;

LAB26:    if (t12 < 8U)
        goto LAB27;
    else
        goto LAB25;

LAB27:    t6 = (t3 + t12);
    t7 = (t1 + t12);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB24;

LAB28:    t12 = (t12 + 1);
    goto LAB26;

LAB29:    t14 = 0;

LAB32:    if (t14 < 8U)
        goto LAB33;
    else
        goto LAB31;

LAB33:    t15 = (t9 + t14);
    t16 = (t8 + t14);
    if (*((unsigned char *)t15) != *((unsigned char *)t16))
        goto LAB30;

LAB34:    t14 = (t14 + 1);
    goto LAB32;

LAB35:    t21 = 0;

LAB38:    if (t21 < 8U)
        goto LAB39;
    else
        goto LAB37;

LAB39:    t22 = (t18 + t21);
    t23 = (t17 + t21);
    if (*((unsigned char *)t22) != *((unsigned char *)t23))
        goto LAB36;

LAB40:    t21 = (t21 + 1);
    goto LAB38;

LAB41:    xsi_set_current_line(163, ng0);
    t24 = (t0 + 1992U);
    t25 = *((char **)t24);
    t24 = (t0 + 6424);
    t26 = (t24 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t25, 8U);
    xsi_driver_first_trans_fast_port(t24);
    xsi_set_current_line(164, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 6296);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(165, ng0);
    t1 = (t0 + 3592U);
    t3 = *((char **)t1);
    t1 = (t0 + 6616);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 64U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB42;

LAB44:    t17 = (t0 + 1992U);
    t18 = *((char **)t17);
    t17 = (t0 + 12092);
    t20 = 1;
    if (8U == 8U)
        goto LAB62;

LAB63:    t20 = 0;

LAB64:    t2 = (!(t20));
    goto LAB46;

LAB47:    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t8 = (t0 + 12084);
    t13 = 1;
    if (8U == 8U)
        goto LAB56;

LAB57:    t13 = 0;

LAB58:    t5 = (!(t13));
    goto LAB49;

LAB50:    t12 = 0;

LAB53:    if (t12 < 8U)
        goto LAB54;
    else
        goto LAB52;

LAB54:    t6 = (t3 + t12);
    t7 = (t1 + t12);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB51;

LAB55:    t12 = (t12 + 1);
    goto LAB53;

LAB56:    t14 = 0;

LAB59:    if (t14 < 8U)
        goto LAB60;
    else
        goto LAB58;

LAB60:    t15 = (t9 + t14);
    t16 = (t8 + t14);
    if (*((unsigned char *)t15) != *((unsigned char *)t16))
        goto LAB57;

LAB61:    t14 = (t14 + 1);
    goto LAB59;

LAB62:    t21 = 0;

LAB65:    if (t21 < 8U)
        goto LAB66;
    else
        goto LAB64;

LAB66:    t22 = (t18 + t21);
    t23 = (t17 + t21);
    if (*((unsigned char *)t22) != *((unsigned char *)t23))
        goto LAB63;

LAB67:    t21 = (t21 + 1);
    goto LAB65;

}

static void work_a_2577335280_3212880686_p_3(char *t0)
{
    char t24[16];
    unsigned char t1;
    unsigned char t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned char t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    xsi_set_current_line(179, ng0);
    t3 = (t0 + 992U);
    t4 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t4 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t3 = (t0 + 2952U);
    t5 = *((char **)t3);
    t1 = *((unsigned char *)t5);
    t2 = (t1 == (unsigned char)6);
    if (t2 != 0)
        goto LAB20;

LAB21:
LAB3:    t3 = (t0 + 6024);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(180, ng0);
    t5 = (t0 + 1992U);
    t12 = *((char **)t5);
    t5 = (t0 + 3752U);
    t13 = *((char **)t5);
    t5 = (t0 + 3432U);
    t14 = *((char **)t5);
    t15 = *((int *)t14);
    t16 = (t15 - 1);
    t17 = (t16 * 1);
    xsi_vhdl_check_range_of_index(1, 81, 1, t15);
    t18 = (8U * t17);
    t19 = (0 + t18);
    t5 = (t13 + t19);
    t20 = 1;
    if (8U == 8U)
        goto LAB14;

LAB15:    t20 = 0;

LAB16:    if (t20 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(183, ng0);
    t3 = (t0 + 3592U);
    t5 = *((char **)t3);
    t3 = (t0 + 11212U);
    t6 = ieee_p_1242562249_sub_2931975192_1035706684(IEEE_P_1242562249, t24, t5, t3, 1);
    t9 = (t0 + 6680);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t22 = *((char **)t14);
    memcpy(t22, t6, 64U);
    xsi_driver_first_trans_fast(t9);

LAB12:    xsi_set_current_line(186, ng0);
    t3 = (t0 + 3432U);
    t5 = *((char **)t3);
    t15 = *((int *)t5);
    t16 = (t15 + 1);
    t3 = (t0 + 6744);
    t6 = (t3 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = t16;
    xsi_driver_first_trans_fast(t3);
    goto LAB3;

LAB5:    t5 = (t0 + 1832U);
    t9 = *((char **)t5);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t1 = t11;
    goto LAB7;

LAB8:    t5 = (t0 + 2952U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)5);
    t2 = t8;
    goto LAB10;

LAB11:    xsi_set_current_line(181, ng0);
    t25 = (t0 + 3592U);
    t26 = *((char **)t25);
    t25 = (t0 + 11212U);
    t27 = ieee_p_1242562249_sub_2931903318_1035706684(IEEE_P_1242562249, t24, t26, t25, 1);
    t28 = (t0 + 6680);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t27, 64U);
    xsi_driver_first_trans_fast(t28);
    goto LAB12;

LAB14:    t21 = 0;

LAB17:    if (t21 < 8U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t22 = (t12 + t21);
    t23 = (t5 + t21);
    if (*((unsigned char *)t22) != *((unsigned char *)t23))
        goto LAB15;

LAB19:    t21 = (t21 + 1);
    goto LAB17;

LAB20:    xsi_set_current_line(188, ng0);
    t3 = (t0 + 6744);
    t6 = (t3 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = 1;
    xsi_driver_first_trans_fast(t3);
    goto LAB3;

}


extern void work_a_2577335280_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2577335280_3212880686_p_0,(void *)work_a_2577335280_3212880686_p_1,(void *)work_a_2577335280_3212880686_p_2,(void *)work_a_2577335280_3212880686_p_3};
	xsi_register_didat("work_a_2577335280_3212880686", "isim/state_machine_tb_isim_beh.exe.sim/work/a_2577335280_3212880686.didat");
	xsi_register_executes(pe);
}
