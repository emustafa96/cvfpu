
// Populate parameter structure with values specific to the current configuration
localparam cvw::cvw_t P = '{ 
  XLEN :                 XLEN,  
  IEEE754 :              IEEE754, 
  IDIV_BITSPERCYCLE :        IDIV_BITSPERCYCLE,
  IDIV_ON_FPU :        IDIV_ON_FPU,
  RADIX :        RADIX,
  DIVCOPIES :        DIVCOPIES,
  A_SUPPORTED : A_SUPPORTED,
  B_SUPPORTED : B_SUPPORTED,
  C_SUPPORTED : C_SUPPORTED,
  D_SUPPORTED : D_SUPPORTED,
  E_SUPPORTED : E_SUPPORTED,
  F_SUPPORTED : F_SUPPORTED,
  I_SUPPORTED : I_SUPPORTED,
  M_SUPPORTED : M_SUPPORTED,
  Q_SUPPORTED : Q_SUPPORTED,
  S_SUPPORTED : S_SUPPORTED,
  U_SUPPORTED : U_SUPPORTED,
  LOG_XLEN : LOG_XLEN,
  Q_LEN : Q_LEN,
  Q_NE : Q_NE,
  Q_NF : Q_NF,
  Q_BIAS : Q_BIAS,
  Q_FMT : Q_FMT,
  D_LEN : D_LEN,
  D_NE : D_NE,
  D_NF : D_NF,
  D_BIAS : D_BIAS,
  D_FMT : D_FMT,
  S_LEN : S_LEN,
  S_NE : S_NE,
  S_NF : S_NF,
  S_BIAS : S_BIAS,
  S_FMT : S_FMT,
  H_LEN : H_LEN,
  H_NE : H_NE,
  H_NF : H_NF,
  H_BIAS : H_BIAS,
  H_FMT : H_FMT,
  FLEN : FLEN,
  LOGFLEN : LOGFLEN,
  NE   : NE  ,
  NF   : NF  ,
  FMT  : FMT ,
  BIAS : BIAS,
  FPSIZES : FPSIZES,
  FMTBITS : FMTBITS,
  LEN1  : LEN1 ,
  NE1   : NE1  ,
  NF1   : NF1  ,
  FMT1  : FMT1 ,
  BIAS1 : BIAS1,
  LEN2  : LEN2 ,
  NE2   : NE2  ,
  NF2   : NF2  ,
  FMT2  : FMT2 ,
  BIAS2 : BIAS2,
  CVTLEN : CVTLEN,
  LLEN : LLEN,
  LOGCVTLEN : LOGCVTLEN,
  NORMSHIFTSZ : NORMSHIFTSZ,
  LOGNORMSHIFTSZ : LOGNORMSHIFTSZ,
  FMALEN : FMALEN,
  LOGR        : LOGR,
  RK          : RK,
  FPDUR       : FPDUR,
  DURLEN      : DURLEN,
  DIVb        : DIVb,
  DIVBLEN     : DIVBLEN,
  INTDIVb     : INTDIVb
};