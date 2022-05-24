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
static const char *ng0 = "C:/Users/nogac/Desktop/studejszyn_sem6/UCiSW2/typing_tutor/typing_tutor_symulacja/typing_tutor_tb.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2166922158_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 4136U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 5048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 2928U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3944);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 5048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 2928U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3944);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2166922158_3212880686_p_1(char *t0)
{
    char t12[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    int64 t10;
    int64 t11;
    char *t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 4384U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(122, ng0);

LAB6:    t2 = (t0 + 4952);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t6 = (t0 + 4952);
    *((int *)t6) = 0;
    xsi_set_current_line(126, ng0);

LAB11:    t2 = (t0 + 3376U);
    t3 = std_textio_endfile(t2);
    t5 = (!(t3));
    if (t5 != 0)
        goto LAB12;

LAB14:    xsi_set_current_line(136, ng0);

LAB28:    *((char **)t1) = &&LAB29;
    goto LAB1;

LAB5:    t4 = (t0 + 1152U);
    t5 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t4, 0U, 0U);
    if (t5 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB10;

LAB12:    xsi_set_current_line(127, ng0);
    t4 = (t0 + 2928U);
    t6 = *((char **)t4);
    t10 = *((int64 *)t6);
    t11 = (t10 * 3);
    t4 = (t0 + 4192);
    xsi_process_wait(t4, t11);

LAB17:    *((char **)t1) = &&LAB18;
    goto LAB1;

LAB13:;
LAB15:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 3376U);
    t4 = (t0 + 3048U);
    t6 = *((char **)t4);
    t4 = (t6 + 0);
    t3 = std_textio_read_char(t2);
    *((unsigned char *)t4) = t3;
    xsi_set_current_line(129, ng0);
    t2 = (t0 + 3048U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t12, ((int)(t3)), 8);
    t6 = (t0 + 5112);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(130, ng0);
    t2 = (t0 + 5176);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(131, ng0);

LAB21:    t2 = (t0 + 4968);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB16:    goto LAB15;

LAB18:    goto LAB16;

LAB19:    t6 = (t0 + 4968);
    *((int *)t6) = 0;
    xsi_set_current_line(132, ng0);
    t2 = (t0 + 5176);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB11;

LAB20:    t4 = (t0 + 1152U);
    t5 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t4, 0U, 0U);
    if (t5 == 1)
        goto LAB23;

LAB24:    t3 = (unsigned char)0;

LAB25:    if (t3 == 1)
        goto LAB19;
    else
        goto LAB21;

LAB22:    goto LAB20;

LAB23:    t6 = (t0 + 1832U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB25;

LAB26:    goto LAB2;

LAB27:    goto LAB26;

LAB29:    goto LAB27;

}

static void work_a_2166922158_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 4632U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(144, ng0);
    t2 = (t0 + 5240);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(145, ng0);
    t2 = (t0 + 2928U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 4440);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}


extern void work_a_2166922158_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2166922158_3212880686_p_0,(void *)work_a_2166922158_3212880686_p_1,(void *)work_a_2166922158_3212880686_p_2};
	xsi_register_didat("work_a_2166922158_3212880686", "isim/typing_tutor_typing_tutor_sch_tb_isim_beh.exe.sim/work/a_2166922158_3212880686.didat");
	xsi_register_executes(pe);
}
