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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Zahraa/Documents/FPGA/secondExp/Reg_file.vhd";
extern char *IEEE_P_3620187407;



static void work_a_3412061098_3212880686_p_0(char *t0)
{
    char t5[16];
    char t21[16];
    char t36[16];
    char t51[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t22;
    char *t23;
    int t24;
    unsigned char t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t37;
    char *t38;
    int t39;
    unsigned char t40;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t52;
    char *t53;
    int t54;
    unsigned char t55;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;

LAB0:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t1 = (t0 + 5244U);
    t3 = (t0 + 5464);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:    t17 = (t0 + 868U);
    t18 = *((char **)t17);
    t17 = (t0 + 5244U);
    t19 = (t0 + 5470);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 0;
    t23 = (t22 + 4U);
    *((int *)t23) = 1;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t24 = (1 - 0);
    t9 = (t24 * 1);
    t9 = (t9 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t9;
    t25 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t18, t17, t19, t21);
    if (t25 != 0)
        goto LAB5;

LAB6:    t32 = (t0 + 868U);
    t33 = *((char **)t32);
    t32 = (t0 + 5244U);
    t34 = (t0 + 5476);
    t37 = (t36 + 0U);
    t38 = (t37 + 0U);
    *((int *)t38) = 0;
    t38 = (t37 + 4U);
    *((int *)t38) = 1;
    t38 = (t37 + 8U);
    *((int *)t38) = 1;
    t39 = (1 - 0);
    t9 = (t39 * 1);
    t9 = (t9 + 1);
    t38 = (t37 + 12U);
    *((unsigned int *)t38) = t9;
    t40 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t33, t32, t34, t36);
    if (t40 != 0)
        goto LAB7;

LAB8:    t47 = (t0 + 868U);
    t48 = *((char **)t47);
    t47 = (t0 + 5244U);
    t49 = (t0 + 5482);
    t52 = (t51 + 0U);
    t53 = (t52 + 0U);
    *((int *)t53) = 0;
    t53 = (t52 + 4U);
    *((int *)t53) = 1;
    t53 = (t52 + 8U);
    *((int *)t53) = 1;
    t54 = (1 - 0);
    t9 = (t54 * 1);
    t9 = (t9 + 1);
    t53 = (t52 + 12U);
    *((unsigned int *)t53) = t9;
    t55 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t48, t47, t49, t51);
    if (t55 != 0)
        goto LAB9;

LAB10:
LAB11:    t62 = (t0 + 5488);
    t64 = (t0 + 3052);
    t65 = (t64 + 32U);
    t66 = *((char **)t65);
    t67 = (t66 + 40U);
    t68 = *((char **)t67);
    memcpy(t68, t62, 4U);
    xsi_driver_first_trans_fast(t64);

LAB2:    t69 = (t0 + 2984);
    *((int *)t69) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 5466);
    t12 = (t0 + 3052);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 4U);
    xsi_driver_first_trans_fast(t12);
    goto LAB2;

LAB5:    t23 = (t0 + 5472);
    t27 = (t0 + 3052);
    t28 = (t27 + 32U);
    t29 = *((char **)t28);
    t30 = (t29 + 40U);
    t31 = *((char **)t30);
    memcpy(t31, t23, 4U);
    xsi_driver_first_trans_fast(t27);
    goto LAB2;

LAB7:    t38 = (t0 + 5478);
    t42 = (t0 + 3052);
    t43 = (t42 + 32U);
    t44 = *((char **)t43);
    t45 = (t44 + 40U);
    t46 = *((char **)t45);
    memcpy(t46, t38, 4U);
    xsi_driver_first_trans_fast(t42);
    goto LAB2;

LAB9:    t53 = (t0 + 5484);
    t57 = (t0 + 3052);
    t58 = (t57 + 32U);
    t59 = *((char **)t58);
    t60 = (t59 + 40U);
    t61 = *((char **)t60);
    memcpy(t61, t53, 4U);
    xsi_driver_first_trans_fast(t57);
    goto LAB2;

LAB12:    goto LAB2;

}

static void work_a_3412061098_3212880686_p_1(char *t0)
{
    char t5[16];
    char t20[16];
    char t34[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t21;
    char *t22;
    int t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t35;
    char *t36;
    int t37;
    unsigned char t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t1 = (t0 + 5260U);
    t3 = (t0 + 5492);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:    t16 = (t0 + 960U);
    t17 = *((char **)t16);
    t16 = (t0 + 5260U);
    t18 = (t0 + 5494);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 0;
    t22 = (t21 + 4U);
    *((int *)t22) = 1;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t23 = (1 - 0);
    t9 = (t23 * 1);
    t9 = (t9 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t9;
    t24 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t17, t16, t18, t20);
    if (t24 != 0)
        goto LAB5;

LAB6:    t30 = (t0 + 960U);
    t31 = *((char **)t30);
    t30 = (t0 + 5260U);
    t32 = (t0 + 5496);
    t35 = (t34 + 0U);
    t36 = (t35 + 0U);
    *((int *)t36) = 0;
    t36 = (t35 + 4U);
    *((int *)t36) = 1;
    t36 = (t35 + 8U);
    *((int *)t36) = 1;
    t37 = (1 - 0);
    t9 = (t37 * 1);
    t9 = (t9 + 1);
    t36 = (t35 + 12U);
    *((unsigned int *)t36) = t9;
    t38 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t31, t30, t32, t34);
    if (t38 != 0)
        goto LAB7;

LAB8:
LAB9:    t44 = (t0 + 1696U);
    t45 = *((char **)t44);
    t44 = (t0 + 3088);
    t46 = (t44 + 32U);
    t47 = *((char **)t46);
    t48 = (t47 + 40U);
    t49 = *((char **)t48);
    memcpy(t49, t45, 8U);
    xsi_driver_first_trans_fast_port(t44);

LAB2:    t50 = (t0 + 2992);
    *((int *)t50) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 1420U);
    t11 = *((char **)t7);
    t7 = (t0 + 3088);
    t12 = (t7 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 8U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB5:    t22 = (t0 + 1512U);
    t25 = *((char **)t22);
    t22 = (t0 + 3088);
    t26 = (t22 + 32U);
    t27 = *((char **)t26);
    t28 = (t27 + 40U);
    t29 = *((char **)t28);
    memcpy(t29, t25, 8U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB2;

LAB7:    t36 = (t0 + 1604U);
    t39 = *((char **)t36);
    t36 = (t0 + 3088);
    t40 = (t36 + 32U);
    t41 = *((char **)t40);
    t42 = (t41 + 40U);
    t43 = *((char **)t42);
    memcpy(t43, t39, 8U);
    xsi_driver_first_trans_fast_port(t36);
    goto LAB2;

LAB10:    goto LAB2;

}

static void work_a_3412061098_3212880686_p_2(char *t0)
{
    char t5[16];
    char t20[16];
    char t34[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t21;
    char *t22;
    int t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t35;
    char *t36;
    int t37;
    unsigned char t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 5276U);
    t3 = (t0 + 5498);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:    t16 = (t0 + 1052U);
    t17 = *((char **)t16);
    t16 = (t0 + 5276U);
    t18 = (t0 + 5500);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 0;
    t22 = (t21 + 4U);
    *((int *)t22) = 1;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t23 = (1 - 0);
    t9 = (t23 * 1);
    t9 = (t9 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t9;
    t24 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t17, t16, t18, t20);
    if (t24 != 0)
        goto LAB5;

LAB6:    t30 = (t0 + 1052U);
    t31 = *((char **)t30);
    t30 = (t0 + 5276U);
    t32 = (t0 + 5502);
    t35 = (t34 + 0U);
    t36 = (t35 + 0U);
    *((int *)t36) = 0;
    t36 = (t35 + 4U);
    *((int *)t36) = 1;
    t36 = (t35 + 8U);
    *((int *)t36) = 1;
    t37 = (1 - 0);
    t9 = (t37 * 1);
    t9 = (t9 + 1);
    t36 = (t35 + 12U);
    *((unsigned int *)t36) = t9;
    t38 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t31, t30, t32, t34);
    if (t38 != 0)
        goto LAB7;

LAB8:
LAB9:    t44 = (t0 + 1696U);
    t45 = *((char **)t44);
    t44 = (t0 + 3124);
    t46 = (t44 + 32U);
    t47 = *((char **)t46);
    t48 = (t47 + 40U);
    t49 = *((char **)t48);
    memcpy(t49, t45, 8U);
    xsi_driver_first_trans_fast_port(t44);

LAB2:    t50 = (t0 + 3000);
    *((int *)t50) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 1420U);
    t11 = *((char **)t7);
    t7 = (t0 + 3124);
    t12 = (t7 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 8U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB5:    t22 = (t0 + 1512U);
    t25 = *((char **)t22);
    t22 = (t0 + 3124);
    t26 = (t22 + 32U);
    t27 = *((char **)t26);
    t28 = (t27 + 40U);
    t29 = *((char **)t28);
    memcpy(t29, t25, 8U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB2;

LAB7:    t36 = (t0 + 1604U);
    t39 = *((char **)t36);
    t36 = (t0 + 3124);
    t40 = (t36 + 32U);
    t41 = *((char **)t40);
    t42 = (t41 + 40U);
    t43 = *((char **)t42);
    memcpy(t43, t39, 8U);
    xsi_driver_first_trans_fast_port(t36);
    goto LAB2;

LAB10:    goto LAB2;

}

static void work_a_3412061098_3212880686_p_3(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    unsigned char t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 568U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3008);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(60, ng0);
    t4 = (t0 + 1328U);
    t9 = *((char **)t4);
    t10 = (0 - 3);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t4 = (t9 + t13);
    t14 = *((unsigned char *)t4);
    t15 = (t14 == (unsigned char)3);
    if (t15 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1328U);
    t4 = *((char **)t2);
    t10 = (1 - 3);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t2 = (t4 + t13);
    t3 = *((unsigned char *)t2);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB16;

LAB17:    t1 = (unsigned char)0;

LAB18:    if (t1 != 0)
        goto LAB14;

LAB15:    t2 = (t0 + 1328U);
    t4 = *((char **)t2);
    t10 = (2 - 3);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t2 = (t4 + t13);
    t3 = *((unsigned char *)t2);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB21;

LAB22:    t1 = (unsigned char)0;

LAB23:    if (t1 != 0)
        goto LAB19;

LAB20:    t2 = (t0 + 1328U);
    t4 = *((char **)t2);
    t10 = (3 - 3);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t2 = (t4 + t13);
    t3 = *((unsigned char *)t2);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB26;

LAB27:    t1 = (unsigned char)0;

LAB28:    if (t1 != 0)
        goto LAB24;

LAB25:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1420U);
    t4 = *((char **)t2);
    t2 = (t0 + 3160);
    t5 = (t2 + 32U);
    t9 = *((char **)t5);
    t16 = (t9 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t4, 8U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 3196);
    t5 = (t2 + 32U);
    t9 = *((char **)t5);
    t16 = (t9 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t4, 8U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1604U);
    t4 = *((char **)t2);
    t2 = (t0 + 3232);
    t5 = (t2 + 32U);
    t9 = *((char **)t5);
    t16 = (t9 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t4, 8U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 1696U);
    t4 = *((char **)t2);
    t2 = (t0 + 3268);
    t5 = (t2 + 32U);
    t9 = *((char **)t5);
    t16 = (t9 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t4, 8U);
    xsi_driver_first_trans_fast(t2);

LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 592U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(61, ng0);
    t16 = (t0 + 776U);
    t20 = *((char **)t16);
    t16 = (t0 + 3160);
    t21 = (t16 + 32U);
    t22 = *((char **)t21);
    t23 = (t22 + 40U);
    t24 = *((char **)t23);
    memcpy(t24, t20, 8U);
    xsi_driver_first_trans_fast(t16);
    goto LAB9;

LAB11:    t16 = (t0 + 684U);
    t17 = *((char **)t16);
    t18 = *((unsigned char *)t17);
    t19 = (t18 == (unsigned char)3);
    t8 = t19;
    goto LAB13;

LAB14:    xsi_set_current_line(64, ng0);
    t5 = (t0 + 776U);
    t16 = *((char **)t5);
    t5 = (t0 + 3196);
    t17 = (t5 + 32U);
    t20 = *((char **)t17);
    t21 = (t20 + 40U);
    t22 = *((char **)t21);
    memcpy(t22, t16, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB9;

LAB16:    t5 = (t0 + 684U);
    t9 = *((char **)t5);
    t7 = *((unsigned char *)t9);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB18;

LAB19:    xsi_set_current_line(67, ng0);
    t5 = (t0 + 776U);
    t16 = *((char **)t5);
    t5 = (t0 + 3232);
    t17 = (t5 + 32U);
    t20 = *((char **)t17);
    t21 = (t20 + 40U);
    t22 = *((char **)t21);
    memcpy(t22, t16, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB9;

LAB21:    t5 = (t0 + 684U);
    t9 = *((char **)t5);
    t7 = *((unsigned char *)t9);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB23;

LAB24:    xsi_set_current_line(70, ng0);
    t5 = (t0 + 776U);
    t16 = *((char **)t5);
    t5 = (t0 + 3268);
    t17 = (t5 + 32U);
    t20 = *((char **)t17);
    t21 = (t20 + 40U);
    t22 = *((char **)t21);
    memcpy(t22, t16, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB9;

LAB26:    t5 = (t0 + 684U);
    t9 = *((char **)t5);
    t7 = *((unsigned char *)t9);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB28;

}


extern void work_a_3412061098_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3412061098_3212880686_p_0,(void *)work_a_3412061098_3212880686_p_1,(void *)work_a_3412061098_3212880686_p_2,(void *)work_a_3412061098_3212880686_p_3};
	xsi_register_didat("work_a_3412061098_3212880686", "isim/TTTT_isim_beh.exe.sim/work/a_3412061098_3212880686.didat");
	xsi_register_executes(pe);
}
