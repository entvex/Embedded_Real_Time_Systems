-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Wed Oct  3 14:53:50 2018
-- Host        : DESKTOP-MBD2KSK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_iosc_0_0_sim_netlist.vhdl
-- Design      : design_1_iosc_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_controlOutLeds is
  port (
    \outLeds_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    v_assign_fu_104_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \v_assign_fu_104_reg[0]_0\ : out STD_LOGIC;
    \v_assign_fu_104_reg[0]_1\ : out STD_LOGIC;
    grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld : out STD_LOGIC;
    v_assign_fu_10401_in : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \_ctrl_reg[1]\ : in STD_LOGIC;
    \_ctrl_reg[7]\ : in STD_LOGIC;
    inSwitch : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_controlOutLeds;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_controlOutLeds is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^outleds_reg[3]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal v_assign_fu_104 : STD_LOGIC;
  signal \v_assign_fu_104[0]_i_4_n_0\ : STD_LOGIC;
  signal \v_assign_fu_104[0]_i_5_n_0\ : STD_LOGIC;
  signal \v_assign_fu_104[0]_i_6_n_0\ : STD_LOGIC;
  signal \v_assign_fu_104[0]_i_7_n_0\ : STD_LOGIC;
  signal \v_assign_fu_104[4]_i_2_n_0\ : STD_LOGIC;
  signal \v_assign_fu_104[4]_i_3_n_0\ : STD_LOGIC;
  signal \v_assign_fu_104[4]_i_4_n_0\ : STD_LOGIC;
  signal \v_assign_fu_104[4]_i_5_n_0\ : STD_LOGIC;
  signal \^v_assign_fu_104_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^v_assign_fu_104_reg[0]_0\ : STD_LOGIC;
  signal \^v_assign_fu_104_reg[0]_1\ : STD_LOGIC;
  signal \v_assign_fu_104_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \v_assign_fu_104_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \v_assign_fu_104_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \v_assign_fu_104_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \v_assign_fu_104_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \v_assign_fu_104_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \v_assign_fu_104_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \v_assign_fu_104_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \v_assign_fu_104_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \v_assign_fu_104_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \v_assign_fu_104_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \v_assign_fu_104_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \v_assign_fu_104_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \v_assign_fu_104_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \v_assign_fu_104_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_v_assign_fu_104_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
begin
  Q(0) <= \^q\(0);
  \outLeds_reg[3]\(3 downto 0) <= \^outleds_reg[3]\(3 downto 0);
  v_assign_fu_104_reg(3 downto 0) <= \^v_assign_fu_104_reg\(3 downto 0);
  \v_assign_fu_104_reg[0]_0\ <= \^v_assign_fu_104_reg[0]_0\;
  \v_assign_fu_104_reg[0]_1\ <= \^v_assign_fu_104_reg[0]_1\;
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      I1 => ap_CS_fsm_state2,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \^q\(0),
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => SR(0)
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => \^q\(0),
      R => SR(0)
    );
\outLeds[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \_ctrl_reg[7]\,
      O => grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld
    );
\outLeds[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => inSwitch(1),
      I1 => inSwitch(0),
      I2 => inSwitch(2),
      I3 => inSwitch(3),
      O => \^v_assign_fu_104_reg[0]_0\
    );
\outLeds[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => inSwitch(7),
      I1 => inSwitch(6),
      I2 => inSwitch(5),
      I3 => inSwitch(4),
      O => \^v_assign_fu_104_reg[0]_1\
    );
\v_assign_fu_104[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFDFD02000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \_ctrl_reg[1]\,
      I2 => \_ctrl_reg[7]\,
      I3 => \^v_assign_fu_104_reg[0]_0\,
      I4 => \^v_assign_fu_104_reg[0]_1\,
      I5 => ap_CS_fsm_state2,
      O => v_assign_fu_104
    );
\v_assign_fu_104[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^outleds_reg[3]\(3),
      O => \v_assign_fu_104[0]_i_4_n_0\
    );
\v_assign_fu_104[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^outleds_reg[3]\(2),
      O => \v_assign_fu_104[0]_i_5_n_0\
    );
\v_assign_fu_104[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^outleds_reg[3]\(1),
      O => \v_assign_fu_104[0]_i_6_n_0\
    );
\v_assign_fu_104[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^outleds_reg[3]\(0),
      O => \v_assign_fu_104[0]_i_7_n_0\
    );
\v_assign_fu_104[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^v_assign_fu_104_reg\(3),
      O => \v_assign_fu_104[4]_i_2_n_0\
    );
\v_assign_fu_104[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^v_assign_fu_104_reg\(2),
      O => \v_assign_fu_104[4]_i_3_n_0\
    );
\v_assign_fu_104[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^v_assign_fu_104_reg\(1),
      O => \v_assign_fu_104[4]_i_4_n_0\
    );
\v_assign_fu_104[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^v_assign_fu_104_reg\(0),
      O => \v_assign_fu_104[4]_i_5_n_0\
    );
\v_assign_fu_104_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => v_assign_fu_10401_in,
      D => \v_assign_fu_104_reg[0]_i_3_n_7\,
      Q => \^outleds_reg[3]\(0),
      R => v_assign_fu_104
    );
\v_assign_fu_104_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \v_assign_fu_104_reg[0]_i_3_n_0\,
      CO(2) => \v_assign_fu_104_reg[0]_i_3_n_1\,
      CO(1) => \v_assign_fu_104_reg[0]_i_3_n_2\,
      CO(0) => \v_assign_fu_104_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \v_assign_fu_104_reg[0]_i_3_n_4\,
      O(2) => \v_assign_fu_104_reg[0]_i_3_n_5\,
      O(1) => \v_assign_fu_104_reg[0]_i_3_n_6\,
      O(0) => \v_assign_fu_104_reg[0]_i_3_n_7\,
      S(3) => \v_assign_fu_104[0]_i_4_n_0\,
      S(2) => \v_assign_fu_104[0]_i_5_n_0\,
      S(1) => \v_assign_fu_104[0]_i_6_n_0\,
      S(0) => \v_assign_fu_104[0]_i_7_n_0\
    );
\v_assign_fu_104_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => v_assign_fu_10401_in,
      D => \v_assign_fu_104_reg[0]_i_3_n_6\,
      Q => \^outleds_reg[3]\(1),
      R => v_assign_fu_104
    );
\v_assign_fu_104_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => v_assign_fu_10401_in,
      D => \v_assign_fu_104_reg[0]_i_3_n_5\,
      Q => \^outleds_reg[3]\(2),
      R => v_assign_fu_104
    );
\v_assign_fu_104_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => v_assign_fu_10401_in,
      D => \v_assign_fu_104_reg[0]_i_3_n_4\,
      Q => \^outleds_reg[3]\(3),
      R => v_assign_fu_104
    );
\v_assign_fu_104_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => v_assign_fu_10401_in,
      D => \v_assign_fu_104_reg[4]_i_1_n_7\,
      Q => \^v_assign_fu_104_reg\(0),
      R => v_assign_fu_104
    );
\v_assign_fu_104_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_assign_fu_104_reg[0]_i_3_n_0\,
      CO(3) => \NLW_v_assign_fu_104_reg[4]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \v_assign_fu_104_reg[4]_i_1_n_1\,
      CO(1) => \v_assign_fu_104_reg[4]_i_1_n_2\,
      CO(0) => \v_assign_fu_104_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v_assign_fu_104_reg[4]_i_1_n_4\,
      O(2) => \v_assign_fu_104_reg[4]_i_1_n_5\,
      O(1) => \v_assign_fu_104_reg[4]_i_1_n_6\,
      O(0) => \v_assign_fu_104_reg[4]_i_1_n_7\,
      S(3) => \v_assign_fu_104[4]_i_2_n_0\,
      S(2) => \v_assign_fu_104[4]_i_3_n_0\,
      S(1) => \v_assign_fu_104[4]_i_4_n_0\,
      S(0) => \v_assign_fu_104[4]_i_5_n_0\
    );
\v_assign_fu_104_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => v_assign_fu_10401_in,
      D => \v_assign_fu_104_reg[4]_i_1_n_6\,
      Q => \^v_assign_fu_104_reg\(1),
      R => v_assign_fu_104
    );
\v_assign_fu_104_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => v_assign_fu_10401_in,
      D => \v_assign_fu_104_reg[4]_i_1_n_5\,
      Q => \^v_assign_fu_104_reg\(2),
      R => v_assign_fu_104
    );
\v_assign_fu_104_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => v_assign_fu_10401_in,
      D => \v_assign_fu_104_reg[4]_i_1_n_4\,
      Q => \^v_assign_fu_104_reg\(3),
      R => v_assign_fu_104
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_slv0_if is
  port (
    s_axi_slv0_RVALID : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \outLeds_reg[0]\ : out STD_LOGIC;
    \outLeds_reg[0]_0\ : out STD_LOGIC;
    v_assign_fu_10401_in : out STD_LOGIC;
    \outLeds_reg[4]\ : out STD_LOGIC;
    s_axi_slv0_RDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_slv0_AWREADY : out STD_LOGIC;
    s_axi_slv0_WREADY : out STD_LOGIC;
    s_axi_slv0_BVALID : out STD_LOGIC;
    s_axi_slv0_ARREADY : out STD_LOGIC;
    aclk : in STD_LOGIC;
    \v_assign_fu_104_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \inSwitch[4]\ : in STD_LOGIC;
    \inSwitch_3__s_port_]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_slv0_WDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_slv0_WSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    inSwitch : in STD_LOGIC_VECTOR ( 3 downto 0 );
    aresetn : in STD_LOGIC;
    s_axi_slv0_ARVALID : in STD_LOGIC;
    s_axi_slv0_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_slv0_AWVALID : in STD_LOGIC;
    s_axi_slv0_WVALID : in STD_LOGIC;
    s_axi_slv0_BREADY : in STD_LOGIC;
    s_axi_slv0_RREADY : in STD_LOGIC;
    s_axi_slv0_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_slv0_if;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_slv0_if is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \_ctrl0\ : STD_LOGIC;
  signal \_ctrl[0]_i_1_n_0\ : STD_LOGIC;
  signal \_ctrl[1]_i_1_n_0\ : STD_LOGIC;
  signal \_ctrl[2]_i_1_n_0\ : STD_LOGIC;
  signal \_ctrl[3]_i_1_n_0\ : STD_LOGIC;
  signal \_ctrl[4]_i_1_n_0\ : STD_LOGIC;
  signal \_ctrl[5]_i_1_n_0\ : STD_LOGIC;
  signal \_ctrl[6]_i_1_n_0\ : STD_LOGIC;
  signal \_ctrl[7]_i_2_n_0\ : STD_LOGIC;
  signal \_ctrl[7]_i_3_n_0\ : STD_LOGIC;
  signal aw_hs : STD_LOGIC;
  signal \inSwitch_3__s_net_1\ : STD_LOGIC;
  signal \outLeds[0]_i_2_n_0\ : STD_LOGIC;
  signal \outLeds[1]_i_2_n_0\ : STD_LOGIC;
  signal \outLeds[2]_i_2_n_0\ : STD_LOGIC;
  signal \outLeds[3]_i_2_n_0\ : STD_LOGIC;
  signal \^outleds_reg[0]\ : STD_LOGIC;
  signal \^outleds_reg[0]_0\ : STD_LOGIC;
  signal \rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \rstate[0]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_slv0_rvalid\ : STD_LOGIC;
  signal sig_iosc_ctrl : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal waddr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wstate : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \wstate[0]_i_1_n_0\ : STD_LOGIC;
  signal \wstate[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \_ctrl[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \_ctrl[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \_ctrl[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \_ctrl[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \_ctrl[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \_ctrl[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \_ctrl[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \_ctrl[7]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \_ctrl[7]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \outLeds[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \outLeds[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \outLeds[7]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rstate[0]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of s_axi_slv0_ARREADY_INST_0 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of s_axi_slv0_AWREADY_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of s_axi_slv0_BVALID_INST_0 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of s_axi_slv0_WREADY_INST_0 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \v_assign_fu_104[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wstate[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wstate[1]_i_1\ : label is "soft_lutpair4";
begin
  SR(0) <= \^sr\(0);
  \inSwitch_3__s_net_1\ <= \inSwitch_3__s_port_]\;
  \outLeds_reg[0]\ <= \^outleds_reg[0]\;
  \outLeds_reg[0]_0\ <= \^outleds_reg[0]_0\;
  s_axi_slv0_RVALID <= \^s_axi_slv0_rvalid\;
\_ctrl[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_slv0_WDATA(0),
      I1 => s_axi_slv0_WSTRB(0),
      I2 => sig_iosc_ctrl(0),
      O => \_ctrl[0]_i_1_n_0\
    );
\_ctrl[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_slv0_WDATA(1),
      I1 => s_axi_slv0_WSTRB(0),
      I2 => sig_iosc_ctrl(1),
      O => \_ctrl[1]_i_1_n_0\
    );
\_ctrl[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_slv0_WDATA(2),
      I1 => s_axi_slv0_WSTRB(0),
      I2 => sig_iosc_ctrl(2),
      O => \_ctrl[2]_i_1_n_0\
    );
\_ctrl[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_slv0_WDATA(3),
      I1 => s_axi_slv0_WSTRB(0),
      I2 => sig_iosc_ctrl(3),
      O => \_ctrl[3]_i_1_n_0\
    );
\_ctrl[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_slv0_WDATA(4),
      I1 => s_axi_slv0_WSTRB(0),
      I2 => sig_iosc_ctrl(4),
      O => \_ctrl[4]_i_1_n_0\
    );
\_ctrl[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_slv0_WDATA(5),
      I1 => s_axi_slv0_WSTRB(0),
      I2 => sig_iosc_ctrl(5),
      O => \_ctrl[5]_i_1_n_0\
    );
\_ctrl[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_slv0_WDATA(6),
      I1 => s_axi_slv0_WSTRB(0),
      I2 => sig_iosc_ctrl(6),
      O => \_ctrl[6]_i_1_n_0\
    );
\_ctrl[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => waddr(1),
      I1 => waddr(0),
      I2 => waddr(3),
      I3 => \_ctrl[7]_i_3_n_0\,
      O => \_ctrl0\
    );
\_ctrl[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_slv0_WDATA(7),
      I1 => s_axi_slv0_WSTRB(0),
      I2 => sig_iosc_ctrl(7),
      O => \_ctrl[7]_i_2_n_0\
    );
\_ctrl[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => waddr(2),
      I1 => waddr(4),
      I2 => s_axi_slv0_WVALID,
      I3 => wstate(0),
      I4 => wstate(1),
      O => \_ctrl[7]_i_3_n_0\
    );
\_ctrl_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \_ctrl0\,
      D => \_ctrl[0]_i_1_n_0\,
      Q => sig_iosc_ctrl(0),
      R => '0'
    );
\_ctrl_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \_ctrl0\,
      D => \_ctrl[1]_i_1_n_0\,
      Q => sig_iosc_ctrl(1),
      R => '0'
    );
\_ctrl_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \_ctrl0\,
      D => \_ctrl[2]_i_1_n_0\,
      Q => sig_iosc_ctrl(2),
      R => '0'
    );
\_ctrl_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \_ctrl0\,
      D => \_ctrl[3]_i_1_n_0\,
      Q => sig_iosc_ctrl(3),
      R => '0'
    );
\_ctrl_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \_ctrl0\,
      D => \_ctrl[4]_i_1_n_0\,
      Q => sig_iosc_ctrl(4),
      R => '0'
    );
\_ctrl_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \_ctrl0\,
      D => \_ctrl[5]_i_1_n_0\,
      Q => sig_iosc_ctrl(5),
      R => '0'
    );
\_ctrl_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \_ctrl0\,
      D => \_ctrl[6]_i_1_n_0\,
      Q => sig_iosc_ctrl(6),
      R => '0'
    );
\_ctrl_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \_ctrl0\,
      D => \_ctrl[7]_i_2_n_0\,
      Q => sig_iosc_ctrl(7),
      R => '0'
    );
\outLeds[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF2A0000002A"
    )
        port map (
      I0 => \v_assign_fu_104_reg[3]\(0),
      I1 => \inSwitch[4]\,
      I2 => \inSwitch_3__s_net_1\,
      I3 => \^outleds_reg[0]\,
      I4 => \^outleds_reg[0]_0\,
      I5 => \outLeds[0]_i_2_n_0\,
      O => D(0)
    );
\outLeds[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => inSwitch(0),
      I1 => sig_iosc_ctrl(0),
      O => \outLeds[0]_i_2_n_0\
    );
\outLeds[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF2A0000002A"
    )
        port map (
      I0 => \v_assign_fu_104_reg[3]\(1),
      I1 => \inSwitch[4]\,
      I2 => \inSwitch_3__s_net_1\,
      I3 => \^outleds_reg[0]\,
      I4 => \^outleds_reg[0]_0\,
      I5 => \outLeds[1]_i_2_n_0\,
      O => D(1)
    );
\outLeds[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => inSwitch(1),
      I1 => sig_iosc_ctrl(1),
      O => \outLeds[1]_i_2_n_0\
    );
\outLeds[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF2A0000002A"
    )
        port map (
      I0 => \v_assign_fu_104_reg[3]\(2),
      I1 => \inSwitch[4]\,
      I2 => \inSwitch_3__s_net_1\,
      I3 => \^outleds_reg[0]\,
      I4 => \^outleds_reg[0]_0\,
      I5 => \outLeds[2]_i_2_n_0\,
      O => D(2)
    );
\outLeds[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => inSwitch(2),
      I1 => sig_iosc_ctrl(2),
      O => \outLeds[2]_i_2_n_0\
    );
\outLeds[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF2A0000002A"
    )
        port map (
      I0 => \v_assign_fu_104_reg[3]\(3),
      I1 => \inSwitch[4]\,
      I2 => \inSwitch_3__s_net_1\,
      I3 => \^outleds_reg[0]\,
      I4 => \^outleds_reg[0]_0\,
      I5 => \outLeds[3]_i_2_n_0\,
      O => D(3)
    );
\outLeds[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => inSwitch(3),
      I1 => sig_iosc_ctrl(3),
      O => \outLeds[3]_i_2_n_0\
    );
\outLeds[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22202020"
    )
        port map (
      I0 => Q(0),
      I1 => \^outleds_reg[0]_0\,
      I2 => \^outleds_reg[0]\,
      I3 => \inSwitch_3__s_net_1\,
      I4 => \inSwitch[4]\,
      O => \outLeds_reg[4]\
    );
\outLeds[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sig_iosc_ctrl(7),
      I1 => sig_iosc_ctrl(6),
      I2 => sig_iosc_ctrl(5),
      I3 => sig_iosc_ctrl(4),
      O => \^outleds_reg[0]_0\
    );
\outLeds[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sig_iosc_ctrl(1),
      I1 => sig_iosc_ctrl(0),
      I2 => sig_iosc_ctrl(3),
      I3 => sig_iosc_ctrl(2),
      O => \^outleds_reg[0]\
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8AAAAAAAAAA"
    )
        port map (
      I0 => \rdata[7]_i_2_n_0\,
      I1 => s_axi_slv0_ARADDR(3),
      I2 => s_axi_slv0_ARADDR(0),
      I3 => s_axi_slv0_ARADDR(4),
      I4 => s_axi_slv0_ARADDR(1),
      I5 => s_axi_slv0_ARADDR(2),
      O => \rdata[7]_i_1_n_0\
    );
\rdata[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_slv0_ARVALID,
      I1 => \^s_axi_slv0_rvalid\,
      O => \rdata[7]_i_2_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rdata[7]_i_2_n_0\,
      D => sig_iosc_ctrl(0),
      Q => s_axi_slv0_RDATA(0),
      R => \rdata[7]_i_1_n_0\
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rdata[7]_i_2_n_0\,
      D => sig_iosc_ctrl(1),
      Q => s_axi_slv0_RDATA(1),
      R => \rdata[7]_i_1_n_0\
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rdata[7]_i_2_n_0\,
      D => sig_iosc_ctrl(2),
      Q => s_axi_slv0_RDATA(2),
      R => \rdata[7]_i_1_n_0\
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rdata[7]_i_2_n_0\,
      D => sig_iosc_ctrl(3),
      Q => s_axi_slv0_RDATA(3),
      R => \rdata[7]_i_1_n_0\
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rdata[7]_i_2_n_0\,
      D => sig_iosc_ctrl(4),
      Q => s_axi_slv0_RDATA(4),
      R => \rdata[7]_i_1_n_0\
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rdata[7]_i_2_n_0\,
      D => sig_iosc_ctrl(5),
      Q => s_axi_slv0_RDATA(5),
      R => \rdata[7]_i_1_n_0\
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rdata[7]_i_2_n_0\,
      D => sig_iosc_ctrl(6),
      Q => s_axi_slv0_RDATA(6),
      R => \rdata[7]_i_1_n_0\
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rdata[7]_i_2_n_0\,
      D => sig_iosc_ctrl(7),
      Q => s_axi_slv0_RDATA(7),
      R => \rdata[7]_i_1_n_0\
    );
\rstate[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^sr\(0)
    );
\rstate[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => s_axi_slv0_RREADY,
      I1 => \^s_axi_slv0_rvalid\,
      I2 => s_axi_slv0_ARVALID,
      O => \rstate[0]_i_2_n_0\
    );
\rstate_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rstate[0]_i_2_n_0\,
      Q => \^s_axi_slv0_rvalid\,
      R => \^sr\(0)
    );
s_axi_slv0_ARREADY_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_slv0_rvalid\,
      O => s_axi_slv0_ARREADY
    );
s_axi_slv0_AWREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wstate(1),
      I1 => wstate(0),
      O => s_axi_slv0_AWREADY
    );
s_axi_slv0_BVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wstate(1),
      I1 => wstate(0),
      O => s_axi_slv0_BVALID
    );
s_axi_slv0_WREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wstate(0),
      I1 => wstate(1),
      O => s_axi_slv0_WREADY
    );
\v_assign_fu_104[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020202"
    )
        port map (
      I0 => Q(0),
      I1 => \^outleds_reg[0]\,
      I2 => \^outleds_reg[0]_0\,
      I3 => \inSwitch_3__s_net_1\,
      I4 => \inSwitch[4]\,
      O => v_assign_fu_10401_in
    );
\waddr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_slv0_AWVALID,
      I1 => wstate(0),
      I2 => wstate(1),
      O => aw_hs
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_hs,
      D => s_axi_slv0_AWADDR(0),
      Q => waddr(0),
      R => '0'
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_hs,
      D => s_axi_slv0_AWADDR(1),
      Q => waddr(1),
      R => '0'
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_hs,
      D => s_axi_slv0_AWADDR(2),
      Q => waddr(2),
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_hs,
      D => s_axi_slv0_AWADDR(3),
      Q => waddr(3),
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_hs,
      D => s_axi_slv0_AWADDR(4),
      Q => waddr(4),
      R => '0'
    );
\wstate[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0454"
    )
        port map (
      I0 => wstate(1),
      I1 => s_axi_slv0_AWVALID,
      I2 => wstate(0),
      I3 => s_axi_slv0_WVALID,
      O => \wstate[0]_i_1_n_0\
    );
\wstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0838"
    )
        port map (
      I0 => s_axi_slv0_WVALID,
      I1 => wstate(0),
      I2 => wstate(1),
      I3 => s_axi_slv0_BREADY,
      O => \wstate[1]_i_1_n_0\
    );
\wstate_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wstate[0]_i_1_n_0\,
      Q => wstate(0),
      R => \^sr\(0)
    );
\wstate_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wstate[1]_i_1_n_0\,
      Q => wstate(1),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc is
  port (
    \outLeds_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \v_assign_fu_104_reg[0]\ : out STD_LOGIC;
    \v_assign_fu_104_reg[0]_0\ : out STD_LOGIC;
    outLeds : out STD_LOGIC_VECTOR ( 7 downto 0 );
    v_assign_fu_10401_in : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \_ctrl_reg[1]\ : in STD_LOGIC;
    \_ctrl_reg[7]\ : in STD_LOGIC;
    inSwitch : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ap_CS_fsm_reg[2]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc is
  signal grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld : STD_LOGIC;
  signal v_assign_fu_104_reg : STD_LOGIC_VECTOR ( 7 downto 4 );
begin
grp_iosc_controlOutLeds_fu_92: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_controlOutLeds
     port map (
      Q(0) => Q(0),
      SR(0) => SR(0),
      \_ctrl_reg[1]\ => \_ctrl_reg[1]\,
      \_ctrl_reg[7]\ => \_ctrl_reg[7]\,
      aclk => aclk,
      grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld => grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld,
      inSwitch(7 downto 0) => inSwitch(7 downto 0),
      \outLeds_reg[3]\(3 downto 0) => \outLeds_reg[3]_0\(3 downto 0),
      v_assign_fu_10401_in => v_assign_fu_10401_in,
      v_assign_fu_104_reg(3 downto 0) => v_assign_fu_104_reg(7 downto 4),
      \v_assign_fu_104_reg[0]_0\ => \v_assign_fu_104_reg[0]\,
      \v_assign_fu_104_reg[0]_1\ => \v_assign_fu_104_reg[0]_0\
    );
\outLeds_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld,
      D => D(0),
      Q => outLeds(0),
      R => '0'
    );
\outLeds_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld,
      D => D(1),
      Q => outLeds(1),
      R => '0'
    );
\outLeds_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld,
      D => D(2),
      Q => outLeds(2),
      R => '0'
    );
\outLeds_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld,
      D => D(3),
      Q => outLeds(3),
      R => '0'
    );
\outLeds_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld,
      D => v_assign_fu_104_reg(4),
      Q => outLeds(4),
      R => \ap_CS_fsm_reg[2]\
    );
\outLeds_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld,
      D => v_assign_fu_104_reg(5),
      Q => outLeds(5),
      R => \ap_CS_fsm_reg[2]\
    );
\outLeds_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld,
      D => v_assign_fu_104_reg(6),
      Q => outLeds(6),
      R => \ap_CS_fsm_reg[2]\
    );
\outLeds_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld,
      D => v_assign_fu_104_reg(7),
      Q => outLeds(7),
      R => \ap_CS_fsm_reg[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_top is
  port (
    s_axi_slv0_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_slv0_AWVALID : in STD_LOGIC;
    s_axi_slv0_AWREADY : out STD_LOGIC;
    s_axi_slv0_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_slv0_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_slv0_WVALID : in STD_LOGIC;
    s_axi_slv0_WREADY : out STD_LOGIC;
    s_axi_slv0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_slv0_BVALID : out STD_LOGIC;
    s_axi_slv0_BREADY : in STD_LOGIC;
    s_axi_slv0_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_slv0_ARVALID : in STD_LOGIC;
    s_axi_slv0_ARREADY : out STD_LOGIC;
    s_axi_slv0_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_slv0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_slv0_RVALID : out STD_LOGIC;
    s_axi_slv0_RREADY : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    inSwitch : in STD_LOGIC_VECTOR ( 7 downto 0 );
    outLeds : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute C_S_AXI_SLV0_ADDR_WIDTH : integer;
  attribute C_S_AXI_SLV0_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_top : entity is 5;
  attribute C_S_AXI_SLV0_DATA_WIDTH : integer;
  attribute C_S_AXI_SLV0_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_top : entity is 32;
  attribute RESET_ACTIVE_LOW : integer;
  attribute RESET_ACTIVE_LOW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_top : entity is 1;
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_top : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_top is
  signal \<const0>\ : STD_LOGIC;
  signal dout : STD_LOGIC;
  signal \grp_iosc_controlOutLeds_fu_92/ap_CS_fsm_state3\ : STD_LOGIC;
  signal \grp_iosc_controlOutLeds_fu_92/v_assign_fu_10401_in\ : STD_LOGIC;
  signal \grp_iosc_controlOutLeds_fu_92/v_assign_fu_104_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal grp_iosc_controlOutLeds_fu_92_outLeds : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal iosc_U_n_5 : STD_LOGIC;
  signal iosc_U_n_6 : STD_LOGIC;
  signal iosc_slv0_if_U_n_6 : STD_LOGIC;
  signal iosc_slv0_if_U_n_7 : STD_LOGIC;
  signal iosc_slv0_if_U_n_9 : STD_LOGIC;
  signal \^s_axi_slv0_rdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  s_axi_slv0_BRESP(1) <= \<const0>\;
  s_axi_slv0_BRESP(0) <= \<const0>\;
  s_axi_slv0_RDATA(31) <= \<const0>\;
  s_axi_slv0_RDATA(30) <= \<const0>\;
  s_axi_slv0_RDATA(29) <= \<const0>\;
  s_axi_slv0_RDATA(28) <= \<const0>\;
  s_axi_slv0_RDATA(27) <= \<const0>\;
  s_axi_slv0_RDATA(26) <= \<const0>\;
  s_axi_slv0_RDATA(25) <= \<const0>\;
  s_axi_slv0_RDATA(24) <= \<const0>\;
  s_axi_slv0_RDATA(23) <= \<const0>\;
  s_axi_slv0_RDATA(22) <= \<const0>\;
  s_axi_slv0_RDATA(21) <= \<const0>\;
  s_axi_slv0_RDATA(20) <= \<const0>\;
  s_axi_slv0_RDATA(19) <= \<const0>\;
  s_axi_slv0_RDATA(18) <= \<const0>\;
  s_axi_slv0_RDATA(17) <= \<const0>\;
  s_axi_slv0_RDATA(16) <= \<const0>\;
  s_axi_slv0_RDATA(15) <= \<const0>\;
  s_axi_slv0_RDATA(14) <= \<const0>\;
  s_axi_slv0_RDATA(13) <= \<const0>\;
  s_axi_slv0_RDATA(12) <= \<const0>\;
  s_axi_slv0_RDATA(11) <= \<const0>\;
  s_axi_slv0_RDATA(10) <= \<const0>\;
  s_axi_slv0_RDATA(9) <= \<const0>\;
  s_axi_slv0_RDATA(8) <= \<const0>\;
  s_axi_slv0_RDATA(7 downto 0) <= \^s_axi_slv0_rdata\(7 downto 0);
  s_axi_slv0_RRESP(1) <= \<const0>\;
  s_axi_slv0_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
iosc_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc
     port map (
      D(3 downto 0) => grp_iosc_controlOutLeds_fu_92_outLeds(3 downto 0),
      Q(0) => \grp_iosc_controlOutLeds_fu_92/ap_CS_fsm_state3\,
      SR(0) => dout,
      \_ctrl_reg[1]\ => iosc_slv0_if_U_n_6,
      \_ctrl_reg[7]\ => iosc_slv0_if_U_n_7,
      aclk => aclk,
      \ap_CS_fsm_reg[2]\ => iosc_slv0_if_U_n_9,
      inSwitch(7 downto 0) => inSwitch(7 downto 0),
      outLeds(7 downto 0) => outLeds(7 downto 0),
      \outLeds_reg[3]_0\(3 downto 0) => \grp_iosc_controlOutLeds_fu_92/v_assign_fu_104_reg\(3 downto 0),
      v_assign_fu_10401_in => \grp_iosc_controlOutLeds_fu_92/v_assign_fu_10401_in\,
      \v_assign_fu_104_reg[0]\ => iosc_U_n_5,
      \v_assign_fu_104_reg[0]_0\ => iosc_U_n_6
    );
iosc_slv0_if_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_slv0_if
     port map (
      D(3 downto 0) => grp_iosc_controlOutLeds_fu_92_outLeds(3 downto 0),
      Q(0) => \grp_iosc_controlOutLeds_fu_92/ap_CS_fsm_state3\,
      SR(0) => dout,
      aclk => aclk,
      aresetn => aresetn,
      inSwitch(3 downto 0) => inSwitch(3 downto 0),
      \inSwitch[4]\ => iosc_U_n_6,
      \inSwitch_3__s_port_]\ => iosc_U_n_5,
      \outLeds_reg[0]\ => iosc_slv0_if_U_n_6,
      \outLeds_reg[0]_0\ => iosc_slv0_if_U_n_7,
      \outLeds_reg[4]\ => iosc_slv0_if_U_n_9,
      s_axi_slv0_ARADDR(4 downto 0) => s_axi_slv0_ARADDR(4 downto 0),
      s_axi_slv0_ARREADY => s_axi_slv0_ARREADY,
      s_axi_slv0_ARVALID => s_axi_slv0_ARVALID,
      s_axi_slv0_AWADDR(4 downto 0) => s_axi_slv0_AWADDR(4 downto 0),
      s_axi_slv0_AWREADY => s_axi_slv0_AWREADY,
      s_axi_slv0_AWVALID => s_axi_slv0_AWVALID,
      s_axi_slv0_BREADY => s_axi_slv0_BREADY,
      s_axi_slv0_BVALID => s_axi_slv0_BVALID,
      s_axi_slv0_RDATA(7 downto 0) => \^s_axi_slv0_rdata\(7 downto 0),
      s_axi_slv0_RREADY => s_axi_slv0_RREADY,
      s_axi_slv0_RVALID => s_axi_slv0_RVALID,
      s_axi_slv0_WDATA(7 downto 0) => s_axi_slv0_WDATA(7 downto 0),
      s_axi_slv0_WREADY => s_axi_slv0_WREADY,
      s_axi_slv0_WSTRB(0) => s_axi_slv0_WSTRB(0),
      s_axi_slv0_WVALID => s_axi_slv0_WVALID,
      v_assign_fu_10401_in => \grp_iosc_controlOutLeds_fu_92/v_assign_fu_10401_in\,
      \v_assign_fu_104_reg[3]\(3 downto 0) => \grp_iosc_controlOutLeds_fu_92/v_assign_fu_104_reg\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    inSwitch : in STD_LOGIC_VECTOR ( 7 downto 0 );
    outLeds : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_slv0_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_slv0_AWVALID : in STD_LOGIC;
    s_axi_slv0_AWREADY : out STD_LOGIC;
    s_axi_slv0_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_slv0_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_slv0_WVALID : in STD_LOGIC;
    s_axi_slv0_WREADY : out STD_LOGIC;
    s_axi_slv0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_slv0_BVALID : out STD_LOGIC;
    s_axi_slv0_BREADY : in STD_LOGIC;
    s_axi_slv0_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_slv0_ARVALID : in STD_LOGIC;
    s_axi_slv0_ARREADY : out STD_LOGIC;
    s_axi_slv0_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_slv0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_slv0_RVALID : out STD_LOGIC;
    s_axi_slv0_RREADY : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_iosc_0_0,iosc_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "iosc_top,Vivado 2017.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute C_S_AXI_SLV0_ADDR_WIDTH : integer;
  attribute C_S_AXI_SLV0_ADDR_WIDTH of inst : label is 5;
  attribute C_S_AXI_SLV0_DATA_WIDTH : integer;
  attribute C_S_AXI_SLV0_DATA_WIDTH of inst : label is 32;
  attribute RESET_ACTIVE_LOW : integer;
  attribute RESET_ACTIVE_LOW of inst : label is 1;
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_top
     port map (
      aclk => aclk,
      aresetn => aresetn,
      inSwitch(7 downto 0) => inSwitch(7 downto 0),
      outLeds(7 downto 0) => outLeds(7 downto 0),
      s_axi_slv0_ARADDR(4 downto 0) => s_axi_slv0_ARADDR(4 downto 0),
      s_axi_slv0_ARREADY => s_axi_slv0_ARREADY,
      s_axi_slv0_ARVALID => s_axi_slv0_ARVALID,
      s_axi_slv0_AWADDR(4 downto 0) => s_axi_slv0_AWADDR(4 downto 0),
      s_axi_slv0_AWREADY => s_axi_slv0_AWREADY,
      s_axi_slv0_AWVALID => s_axi_slv0_AWVALID,
      s_axi_slv0_BREADY => s_axi_slv0_BREADY,
      s_axi_slv0_BRESP(1 downto 0) => s_axi_slv0_BRESP(1 downto 0),
      s_axi_slv0_BVALID => s_axi_slv0_BVALID,
      s_axi_slv0_RDATA(31 downto 0) => s_axi_slv0_RDATA(31 downto 0),
      s_axi_slv0_RREADY => s_axi_slv0_RREADY,
      s_axi_slv0_RRESP(1 downto 0) => s_axi_slv0_RRESP(1 downto 0),
      s_axi_slv0_RVALID => s_axi_slv0_RVALID,
      s_axi_slv0_WDATA(31 downto 0) => s_axi_slv0_WDATA(31 downto 0),
      s_axi_slv0_WREADY => s_axi_slv0_WREADY,
      s_axi_slv0_WSTRB(3 downto 0) => s_axi_slv0_WSTRB(3 downto 0),
      s_axi_slv0_WVALID => s_axi_slv0_WVALID
    );
end STRUCTURE;
