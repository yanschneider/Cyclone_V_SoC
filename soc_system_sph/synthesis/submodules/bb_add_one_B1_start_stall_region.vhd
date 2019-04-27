-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 18.1 (Release Build #625)
-- 
-- Legal Notice: Copyright 2018 Intel Corporation.  All rights reserved.
-- Your use of  Intel Corporation's design tools,  logic functions and other
-- software and  tools, and its AMPP partner logic functions, and any output
-- files any  of the foregoing (including  device programming  or simulation
-- files), and  any associated  documentation  or information  are expressly
-- subject  to the terms and  conditions of the  Intel FPGA Software License
-- Agreement, Intel MegaCore Function License Agreement, or other applicable
-- license agreement,  including,  without limitation,  that your use is for
-- the  sole  purpose of  programming  logic devices  manufactured by  Intel
-- and  sold by Intel  or its authorized  distributors. Please refer  to the
-- applicable agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from bb_add_one_B1_start_stall_region
-- VHDL created on Fri Apr 26 12:16:45 2019


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY altera_lnsim;
USE altera_lnsim.altera_lnsim_components.altera_syncram;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity bb_add_one_B1_start_stall_region is
    port (
        in_iowr_bl_return_i_fifoready : in std_logic_vector(0 downto 0);  -- ufix1
        out_iord_bl_do_o_fifoready : out std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_iowr_bl_return_o_fifodata : out std_logic_vector(63 downto 0);  -- ufix64
        out_iowr_bl_return_o_fifovalid : out std_logic_vector(0 downto 0);  -- ufix1
        in_iord_bl_do_i_fifodata : in std_logic_vector(63 downto 0);  -- ufix64
        in_iord_bl_do_i_fifovalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_add_one_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_add_one_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_add_one_B1_start_stall_region;

architecture normal of bb_add_one_B1_start_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_iord_bl_do_unnamed_add_one1_add_one12 is
        port (
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iord_bl_do_i_fifodata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_iord_bl_do_i_fifovalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_iord_bl_do_o_fifoready : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c0_wt_entry_add_one_c0_enter_add_one is
        port (
            in_unnamed_add_one0_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_add_one_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_add_one_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component add_one_B1_start_merge_reg is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_iowr_bl_return_unnamed_add_one2_add_one13 is
        port (
            in_i_data : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iowr_bl_return_i_fifoready : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_return_o_fifodata : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_iowr_bl_return_o_fifovalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_ack : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_add_add_one_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_out_iord_bl_do_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_add_one_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_add_one_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal add_one_B1_start_merge_reg_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal add_one_B1_start_merge_reg_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal c_i64_1gr_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_add_add_one_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_add_one_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_add_one_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_add_one_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_iowr_bl_return_unnamed_add_one2_add_one_out_iowr_bl_return_o_fifodata : STD_LOGIC_VECTOR (63 downto 0);
    signal i_iowr_bl_return_unnamed_add_one2_add_one_out_iowr_bl_return_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_return_unnamed_add_one2_add_one_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_return_unnamed_add_one2_add_one_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_add_one_B1_start_merge_reg_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_add_one_B1_start_merge_reg_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_add_one_B1_start_merge_reg_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_add_one_B1_start_merge_reg_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_add_one_B1_start_merge_reg_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_add_one_B1_start_merge_reg_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_add_one_B1_start_merge_reg_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_add_one_B1_start_merge_reg_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_add_one_B1_start_merge_reg_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_add_one_B1_start_merge_reg_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_add_one_B1_start_merge_reg_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_add_one_B1_start_merge_reg_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_add_one_B1_start_merge_reg_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iowr_bl_return_unnamed_add_one2_add_one_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iowr_bl_return_unnamed_add_one2_add_one_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- SE_out_i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x(STALLENABLE,47)
    -- Valid signal propagation
    SE_out_i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_V0 <= SE_out_i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_backStall <= in_stall_in or not (SE_out_i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_wireValid <= i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_out_o_valid;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x(BLACKBOX,15)@1
    -- in in_i_stall@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going_add_one_exiting_stall_out@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going_add_one_exiting_valid_out@20000000
    -- out out_o_stall@20000000
    -- out out_pipeline_valid_out@20000000
    thei_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x : i_sfc_c0_wt_entry_add_one_c0_enter_add_one
    PORT MAP (
        in_unnamed_add_one0_0 => GND_q,
        in_i_stall => SE_out_i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_backStall,
        in_i_valid => SE_out_add_one_B1_start_merge_reg_V1,
        in_pipeline_stall_in => in_pipeline_stall_in,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_add_one_exiting_stall_out => i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_add_one_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_add_one_exiting_valid_out => i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_add_one_exiting_valid_out,
        out_o_stall => i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_out_o_valid,
        out_pipeline_valid_out => i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_stall_entry(STALLENABLE,53)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= add_one_B1_start_merge_reg_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- add_one_B1_start_merge_reg(BLACKBOX,16)@0
    -- in in_stall_in@20000000
    -- out out_data_out@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    theadd_one_B1_start_merge_reg : add_one_B1_start_merge_reg
    PORT MAP (
        in_data_in => GND_q,
        in_stall_in => SE_out_add_one_B1_start_merge_reg_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_stall_out => add_one_B1_start_merge_reg_out_stall_out,
        out_valid_out => add_one_B1_start_merge_reg_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_add_one_B1_start_merge_reg(STALLENABLE,49)
    SE_out_add_one_B1_start_merge_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_add_one_B1_start_merge_reg_fromReg0 <= (others => '0');
            SE_out_add_one_B1_start_merge_reg_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_add_one_B1_start_merge_reg_fromReg0 <= SE_out_add_one_B1_start_merge_reg_toReg0;
            -- Succesor 1
            SE_out_add_one_B1_start_merge_reg_fromReg1 <= SE_out_add_one_B1_start_merge_reg_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_add_one_B1_start_merge_reg_consumed0 <= (not (i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_out_o_stall) and SE_out_add_one_B1_start_merge_reg_wireValid) or SE_out_add_one_B1_start_merge_reg_fromReg0;
    SE_out_add_one_B1_start_merge_reg_consumed1 <= (not (i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_out_o_stall) and SE_out_add_one_B1_start_merge_reg_wireValid) or SE_out_add_one_B1_start_merge_reg_fromReg1;
    -- Consuming
    SE_out_add_one_B1_start_merge_reg_StallValid <= SE_out_add_one_B1_start_merge_reg_backStall and SE_out_add_one_B1_start_merge_reg_wireValid;
    SE_out_add_one_B1_start_merge_reg_toReg0 <= SE_out_add_one_B1_start_merge_reg_StallValid and SE_out_add_one_B1_start_merge_reg_consumed0;
    SE_out_add_one_B1_start_merge_reg_toReg1 <= SE_out_add_one_B1_start_merge_reg_StallValid and SE_out_add_one_B1_start_merge_reg_consumed1;
    -- Backward Stall generation
    SE_out_add_one_B1_start_merge_reg_or0 <= SE_out_add_one_B1_start_merge_reg_consumed0;
    SE_out_add_one_B1_start_merge_reg_wireStall <= not (SE_out_add_one_B1_start_merge_reg_consumed1 and SE_out_add_one_B1_start_merge_reg_or0);
    SE_out_add_one_B1_start_merge_reg_backStall <= SE_out_add_one_B1_start_merge_reg_wireStall;
    -- Valid signal propagation
    SE_out_add_one_B1_start_merge_reg_V0 <= SE_out_add_one_B1_start_merge_reg_wireValid and not (SE_out_add_one_B1_start_merge_reg_fromReg0);
    SE_out_add_one_B1_start_merge_reg_V1 <= SE_out_add_one_B1_start_merge_reg_wireValid and not (SE_out_add_one_B1_start_merge_reg_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_add_one_B1_start_merge_reg_wireValid <= add_one_B1_start_merge_reg_out_valid_out;

    -- SE_out_i_iowr_bl_return_unnamed_add_one2_add_one(STALLENABLE,52)
    -- Backward Stall generation
    SE_out_i_iowr_bl_return_unnamed_add_one2_add_one_backStall <= "0";
    -- Computing multiple Valid(s)
    SE_out_i_iowr_bl_return_unnamed_add_one2_add_one_wireValid <= i_iowr_bl_return_unnamed_add_one2_add_one_out_o_valid;

    -- c_i64_1gr(CONSTANT,19)
    c_i64_1gr_q <= "0000000000000000000000000000000000000000000000000000000000000001";

    -- bubble_join_i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x(BITJOIN,37)
    bubble_join_i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_q <= i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_out_o_data_0;

    -- bubble_select_i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x(BITSELECT,38)
    bubble_select_i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_q(63 downto 0));

    -- i_add_add_one(ADD,25)@1
    i_add_add_one_a <= STD_LOGIC_VECTOR("0" & bubble_select_i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_b);
    i_add_add_one_b <= STD_LOGIC_VECTOR("0" & c_i64_1gr_q);
    i_add_add_one_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_add_one_a) + UNSIGNED(i_add_add_one_b));
    i_add_add_one_q <= i_add_add_one_o(64 downto 0);

    -- bgTrunc_i_add_add_one_sel_x(BITSELECT,2)@1
    bgTrunc_i_add_add_one_sel_x_b <= i_add_add_one_q(63 downto 0);

    -- i_iowr_bl_return_unnamed_add_one2_add_one(BLACKBOX,26)@1
    -- in in_i_stall@20000000
    -- out out_iowr_bl_return_o_fifodata@20000000
    -- out out_iowr_bl_return_o_fifovalid@20000000
    -- out out_o_stall@20000000
    thei_iowr_bl_return_unnamed_add_one2_add_one : i_iowr_bl_return_unnamed_add_one2_add_one13
    PORT MAP (
        in_i_data => bgTrunc_i_add_add_one_sel_x_b,
        in_i_stall => SE_out_i_iowr_bl_return_unnamed_add_one2_add_one_backStall,
        in_i_valid => SE_out_i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_V0,
        in_iowr_bl_return_i_fifoready => in_iowr_bl_return_i_fifoready,
        out_iowr_bl_return_o_fifodata => i_iowr_bl_return_unnamed_add_one2_add_one_out_iowr_bl_return_o_fifodata,
        out_iowr_bl_return_o_fifovalid => i_iowr_bl_return_unnamed_add_one2_add_one_out_iowr_bl_return_o_fifovalid,
        out_o_stall => i_iowr_bl_return_unnamed_add_one2_add_one_out_o_stall,
        out_o_valid => i_iowr_bl_return_unnamed_add_one2_add_one_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x(STALLENABLE,45)
    -- Valid signal propagation
    SE_out_i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_V0 <= SE_out_i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_backStall <= i_iowr_bl_return_unnamed_add_one2_add_one_out_o_stall or not (SE_out_i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_wireValid <= i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_out_o_valid;

    -- i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x(BLACKBOX,14)@1
    -- in in_i_stall@20000000
    -- out out_iord_bl_do_o_fifoready@20000000
    -- out out_o_stall@20000000
    thei_iord_bl_do_unnamed_add_one1_add_one_aunroll_x : i_iord_bl_do_unnamed_add_one1_add_one12
    PORT MAP (
        in_i_stall => SE_out_i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_backStall,
        in_i_valid => SE_out_add_one_B1_start_merge_reg_V0,
        in_iord_bl_do_i_fifodata => in_iord_bl_do_i_fifodata,
        in_iord_bl_do_i_fifovalid => in_iord_bl_do_i_fifovalid,
        out_o_data_0 => i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_out_o_data_0,
        out_iord_bl_do_o_fifoready => i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_out_iord_bl_do_o_fifoready,
        out_o_stall => i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_out_o_stall,
        out_o_valid => i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,4)
    out_iord_bl_do_o_fifoready <= i_iord_bl_do_unnamed_add_one1_add_one_aunroll_x_out_iord_bl_do_o_fifoready;

    -- dupName_0_sync_out_x(GPOUT,8)@1
    out_valid_out <= SE_out_i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_V0;

    -- dupName_1_ext_sig_sync_out_x(GPOUT,9)
    out_iowr_bl_return_o_fifodata <= i_iowr_bl_return_unnamed_add_one2_add_one_out_iowr_bl_return_o_fifodata;
    out_iowr_bl_return_o_fifovalid <= i_iowr_bl_return_unnamed_add_one2_add_one_out_iowr_bl_return_o_fifovalid;

    -- ext_sig_sync_out(GPOUT,24)
    out_aclp_to_limiter_i_acl_pipeline_keep_going_add_one_exiting_valid_out <= i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_add_one_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going_add_one_exiting_stall_out <= i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_add_one_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,30)
    out_pipeline_valid_out <= i_sfc_c0_wt_entry_add_one_c0_enter_add_one_aunroll_x_out_pipeline_valid_out;

    -- sync_out(GPOUT,34)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
