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
static const char *ng0 = "C:/ucisw2/ucisw2/typing_test/state_machine_tb.vhd";
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

LAB0:    t1 = (t0 + 4416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 5328);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 3088U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4224);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 5328);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 3088U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4224);
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
    char t11[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    int64 t9;
    int64 t10;
    char *t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;

LAB0:    t1 = (t0 + 4664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(132, ng0);

LAB6:    t2 = (t0 + 5232);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t5 = (t0 + 5232);
    *((int *)t5) = 0;
    xsi_set_current_line(134, ng0);
    t2 = (t0 + 5392);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(136, ng0);

LAB8:    t2 = (t0 + 3656U);
    t4 = std_textio_endfile(t2);
    t8 = (!(t4));
    if (t8 != 0)
        goto LAB9;

LAB11:    xsi_set_current_line(145, ng0);
    t2 = (t0 + 5392);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(146, ng0);
    t2 = (t0 + 5584);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB5:    t3 = (t0 + 992U);
    t4 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t4 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(137, ng0);
    t3 = (t0 + 3088U);
    t5 = *((char **)t3);
    t9 = *((int64 *)t5);
    t10 = (t9 * 3);
    t3 = (t0 + 4472);
    xsi_process_wait(t3, t10);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:;
LAB12:    xsi_set_current_line(138, ng0);
    t2 = (t0 + 3656U);
    t3 = (t0 + 3328U);
    t5 = *((char **)t3);
    t3 = (t5 + 0);
    t4 = std_textio_read_char(t2);
    *((unsigned char *)t3) = t4;
    xsi_set_current_line(139, ng0);
    t2 = (t0 + 3328U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t11, ((int)(t4)), 8);
    t5 = (t0 + 5456);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t12 = (t7 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(140, ng0);
    t2 = (t0 + 5520);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(141, ng0);

LAB18:    t2 = (t0 + 5248);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    t5 = (t0 + 5248);
    *((int *)t5) = 0;
    xsi_set_current_line(142, ng0);
    t2 = (t0 + 5520);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB17:    t3 = (t0 + 992U);
    t8 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t8 == 1)
        goto LAB20;

LAB21:    t4 = (unsigned char)0;

LAB22:    if (t4 == 1)
        goto LAB16;
    else
        goto LAB18;

LAB19:    goto LAB17;

LAB20:    t5 = (t0 + 2632U);
    t6 = *((char **)t5);
    t14 = *((unsigned char *)t6);
    t15 = (t14 == (unsigned char)3);
    t4 = t15;
    goto LAB22;

}

static void work_a_2947757684_2372691052_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int64 t4;
    int64 t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    t1 = (t0 + 4912U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(152, ng0);
    t2 = (t0 + 3088U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t5 = (0.20000000000000001 * t4);
    t2 = (t0 + 4720);
    xsi_process_wait(t2, t5);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(153, ng0);
    t2 = (t0 + 2792U);
    t3 = *((char **)t2);
    t6 = *((unsigned char *)t3);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(162, ng0);
    t2 = (t0 + 9400);
    t8 = (t0 + 5648);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t18 = (t12 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t2, 8U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(163, ng0);
    t2 = (t0 + 5712);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB9:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(154, ng0);
    t2 = (t0 + 9392);
    *((int *)t2) = 21;
    t8 = (t0 + 9396);
    *((int *)t8) = 0;
    t9 = 21;
    t10 = 0;

LAB11:    if (t9 >= t10)
        goto LAB12;

LAB14:    goto LAB9;

LAB12:    xsi_set_current_line(155, ng0);
    t11 = (t0 + 3208U);
    t12 = *((char **)t11);
    t11 = (t0 + 9392);
    t13 = *((int *)t11);
    t14 = (t13 - 21);
    t15 = (t14 * -1);
    xsi_vhdl_check_range_of_index(21, 0, -1, *((int *)t11));
    t16 = (8U * t15);
    t17 = (0 + t16);
    t18 = (t12 + t17);
    t19 = (t0 + 5648);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t18, 8U);
    xsi_driver_first_trans_fast(t19);
    xsi_set_current_line(156, ng0);
    t2 = (t0 + 5712);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(157, ng0);
    t2 = (t0 + 3088U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 4720);
    xsi_process_wait(t2, t4);

LAB17:    *((char **)t1) = &&LAB18;
    goto LAB1;

LAB13:    t2 = (t0 + 9392);
    t9 = *((int *)t2);
    t3 = (t0 + 9396);
    t10 = *((int *)t3);
    if (t9 == t10)
        goto LAB14;

LAB23:    t13 = (t9 + -1);
    t9 = t13;
    t8 = (t0 + 9392);
    *((int *)t8) = t9;
    goto LAB11;

LAB15:    xsi_set_current_line(158, ng0);
    t2 = (t0 + 5712);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(159, ng0);
    t2 = (t0 + 3088U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t5 = (5 * t4);
    t2 = (t0 + 4720);
    xsi_process_wait(t2, t5);

LAB21:    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB16:    goto LAB15;

LAB18:    goto LAB16;

LAB19:    goto LAB13;

LAB20:    goto LAB19;

LAB22:    goto LAB20;

}


extern void work_a_2947757684_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2947757684_2372691052_p_0,(void *)work_a_2947757684_2372691052_p_1,(void *)work_a_2947757684_2372691052_p_2};
	xsi_register_didat("work_a_2947757684_2372691052", "isim/state_machine_tb_isim_beh.exe.sim/work/a_2947757684_2372691052.didat");
	xsi_register_executes(pe);
}
