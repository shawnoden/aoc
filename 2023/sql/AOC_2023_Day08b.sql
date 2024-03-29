/***** --- Day 8: Haunted Wasteland --- *****/
/* https://adventofcode.com/2023/day/8 */
/* SETUP */

DECLARE @inpDir varchar(max) = 'LLLLRLRLRRLRRRLRRLRLRRLRLLRRRLRRLRRRLRLLLRLRRLRLLRRRLRRLRLRRLLRRRLRRRLRLRRLRRRLRRLRRLLRRRLLLLRRLRRLRRLRRRLLLRLRLRLRRLRRRLRLRRRLRLRRRLRRLRRLLRRLLRLRRRLRLRRRLLLRLRRRLRLRRRLRRLRLRRLRRRLRRRLRRLLLRRRLRRLRRLRRLRRRLLLRRLRLRRRLLLLRRRLRRLRRRLLRLRLRRLLRRRLLRLRLRLRRLRRLRRRLRRLLRLRRLRRLLLLRRLRLRRLLRRLLRRLRRLRRRLLLRRRR'
DECLARE @inp varchar(max) = 'BRR = (LVC, FSJ)
BHX = (GMG, QTN)
TJD = (HQF, PBJ)
JGN = (JXR, DGK)
NMC = (VPC, CRF)r
DVJ = (KMM, DFJ)
LML = (MTG, KNX)
JKL = (LRX, FRD)
FJR = (MHX, SBX)
LMC = (QNB, QCK)
LJF = (KCJ, HCT)
KTL = (XTG, NGM)
GJB = (KTQ, KTQ)
BXR = (TDR, KMK)
GKB = (VXT, NQR)
PJL = (FPL, TFX)
LNZ = (CJC, DQL)
KCG = (KDL, LMF)
PGG = (NDL, XXC)
PMS = (XQM, DFG)
CJF = (MCG, RTJ)
JTH = (PGS, SGZ)
QBS = (JSC, KMT)
DQL = (KRR, PBL)
HSF = (SNP, KJR)
XVQ = (VQR, HSX)
QKF = (PBT, XLC)
DNA = (DQL, CJC)
LNF = (RVC, TJD)
MKT = (LDX, CGC)
BXP = (RGX, TTR)
SBX = (PGT, JGN)
JQK = (HDQ, BHQ)
MHL = (TLX, JDN)
BBD = (QNJ, BRM)
MTT = (BVK, DXB)
FVR = (VLN, PRV)
RVC = (HQF, PBJ)
LDX = (LRS, KBV)
BKF = (PXH, TNB)
BRM = (XTV, NGH)
DDL = (JNG, SFF)
BBT = (BQJ, BCN)
GPK = (CVK, DDL)
TLX = (BDN, XNT)
JHL = (BRX, QBT)
NTL = (HSR, DJD)
XBH = (PJX, JQK)
PPF = (LCT, BJL)
SFF = (FVR, NFG)
HNA = (CTC, BSG)
CNG = (DXM, QFN)
GML = (NRD, TVN)
RHH = (NBT, LJH)
LDM = (DDN, TRN)
XSK = (PLB, NVJ)
NCQ = (MDN, XGT)
FCQ = (HCT, KCJ)
DRC = (JKL, JNM)
SHR = (KLX, VLH)
FTP = (DRN, DKV)
QBF = (GVS, NXK)
GXK = (XDK, LVF)
KMK = (VXV, XCS)
PKK = (QNJ, BRM)
NJH = (TKL, PQK)
BRX = (MNM, HVC)
VTD = (BJK, LML)
QVX = (DVJ, DSF)
GRM = (JCV, SQB)
RDQ = (HCG, XMB)
RGX = (FCN, TPD)
HBH = (FPR, DHX)
PHM = (JSP, RCR)
NBT = (FRG, CMJ)
XRH = (HCB, FBM)
GMR = (FDJ, NJD)
MVG = (RDJ, QSD)
BDL = (JSB, TFN)
VXT = (MBM, JND)
TXC = (QDG, LTV)
SRL = (RRX, NDS)
SGN = (MPL, CBB)
HVH = (SLJ, CBC)
VPC = (CCG, QSJ)
KCJ = (CKC, TTD)
RLT = (LLT, VVL)
RXV = (KXQ, VBR)
FQS = (STP, BHX)
SGC = (RLJ, QGB)
XLX = (HRG, DGV)
XKV = (QQB, TNQ)
SLJ = (GTB, MPF)
PKV = (CQN, THS)
RPP = (QFT, TNK)
DKL = (MFC, MFC)
BCG = (FXM, GPR)
RFV = (DRC, MPD)
VVC = (FGN, CVL)
HQB = (QNT, VVC)
RRP = (VVC, QNT)
TRS = (RCM, GHN)
QBT = (HVC, MNM)
XKS = (SCC, VXX)
TPS = (FMH, KFN)
MTS = (VXT, NQR)
FXM = (LDM, FQT)
LNB = (XJV, SJN)
HVF = (QXC, RBH)
LSG = (QHM, TSM)
JMP = (HBH, NQK)
NGM = (KDP, HHP)
HCG = (SLR, TSC)
HGX = (DFG, XQM)
DLG = (BVN, GMM)
DJD = (VGP, VML)
HBT = (XKL, JBQ)
NVJ = (GKX, PKS)
CPS = (PKJ, RSV)
SKN = (NBT, LJH)
CCK = (TTJ, SLV)
DXM = (CBN, BXR)
RJD = (XJH, SKH)
RDJ = (CNF, TTG)
PKJ = (BCM, XKC)
FQL = (SRV, DFC)
KDS = (MFB, CLQ)
QKR = (VGD, CXK)
XXC = (NFD, SPS)
PSQ = (NJH, BLR)
BLR = (PQK, TKL)
LMX = (DGV, HRG)
GCK = (CSR, CSR)
GKJ = (JHL, PNN)
GVS = (TLN, LJX)
FPR = (JCH, GKD)
VQV = (DGB, GGN)
CPF = (VMH, JQQ)
GKD = (SGF, PHM)
JNM = (LRX, FRD)
CXV = (LNF, HGF)
TNK = (RRD, HKC)
DXX = (LMC, ZZZ)
DGG = (PPF, TRR)
MLH = (TVL, PBR)
LBC = (LJL, FTR)
FVQ = (TBC, LKB)
LTF = (CBC, SLJ)
TVH = (XMS, GJS)
SFB = (TTJ, SLV)
LVF = (MBT, SJB)
XPP = (QDM, PJL)
BVK = (RPV, JMP)
VGD = (MRX, FJR)
FRD = (XBH, CDN)
LKM = (CMF, XNS)
TCJ = (MMS, PGG)
DHQ = (MTT, BKS)
HDQ = (GPH, XKH)
KTJ = (QQT, MKR)
NMQ = (VFK, VSD)
RSK = (QDM, PJL)
XQC = (KFP, HVB)
LQN = (NGM, XTG)
TKG = (XDQ, XDQ)
KBB = (VQR, HSX)
TQQ = (QDG, LTV)
SQN = (TDQ, XKV)
TSM = (TSH, MRP)
KPH = (THS, CQN)
HCB = (DVL, RTV)
MLR = (GHT, NSN)
BFM = (GCK, SLX)
GXQ = (QKM, JJL)
GNF = (HRQ, XTK)
TRR = (BJL, LCT)
AAA = (QNB, QCK)
SDL = (KJX, LSN)
DKV = (KBB, XVQ)
RMR = (MQR, CPR)
MQC = (CBV, SRP)
PRV = (KDS, FBX)
GTB = (CCK, SFB)
SNP = (PXX, SHR)
NTR = (VHT, KXK)
MKJ = (DDL, CVK)
LSQ = (HSF, RMN)
TTJ = (CBH, QKF)
DNH = (MVG, JCJ)
KMM = (KPH, PKV)
NTT = (RQK, PFK)
QMF = (BFM, PJB)
RJB = (RBH, QXC)
LRS = (MJT, BVM)
CJG = (RMR, BMN)
DVQ = (GXM, DDH)
MFC = (LMC, LMC)
XTG = (HHP, KDP)
HKB = (RDQ, TVT)
PKS = (JQM, DGG)
BJK = (KNX, MTG)
TVT = (XMB, HCG)
JNR = (JHG, JLN)
VFK = (XKS, QBH)
NPC = (PKK, BBD)
PXX = (KLX, VLH)
XLC = (NST, BXP)
CBB = (LMX, XLX)
KLX = (MSH, LCF)
CLQ = (JNF, JNC)
TSS = (MKR, QQT)
SSS = (RMQ, RCS)
QSD = (TTG, CNF)
NHG = (DVQ, VNB)
CTC = (VCN, RJD)
THS = (QRH, GPT)
KDR = (RTK, GKJ)
NTD = (CGG, SPN)
GHP = (NCQ, FCD)
KXQ = (RLS, VRM)
GNV = (BQJ, BCN)
DXQ = (QHC, FXN)
RQB = (FVQ, TNF)
CNF = (TXC, TQQ)
BGB = (QQS, LRV)
ZZZ = (QCK, QNB)
NFM = (MGV, VTD)
MFD = (DBF, KSN)
NST = (RGX, TTR)
XJV = (LGL, LGL)
TRQ = (TVH, KJL)
PPV = (CJP, VHH)
DNV = (DBM, VGJ)
JBQ = (MHL, RFN)
HRG = (JFD, VQP)
RMB = (JKJ, JGJ)
RGQ = (RSK, XPP)
KHF = (TJG, KPX)
HPZ = (BSG, CTC)
LFJ = (TSN, NMB)
MBT = (XRC, PJR)
QFN = (CBN, BXR)
QSJ = (BRS, BKF)
XJH = (RSF, VNP)
GST = (LVF, XDK)
DDN = (NMS, RLT)
CXK = (FJR, MRX)
PHH = (FPB, TCJ)
XHV = (KTJ, TSS)
VHT = (NPC, DMG)
RNL = (NHG, DVN)
TKL = (KPN, FKX)
DGB = (GPJ, QMF)
PNN = (QBT, BRX)
TBC = (NTR, FKG)
PGS = (QDT, JQL)
SLX = (CSR, LNB)
BVV = (LVC, FSJ)
JQL = (MLH, GSC)
PXH = (CJF, CKM)
LHM = (DSF, DVJ)
NND = (NTD, DTB)
MFB = (JNF, JNC)
TTR = (FCN, TPD)
HRQ = (JTD, JTD)
SLR = (TXT, JSN)
VQP = (XPK, XGB)
QHM = (MRP, TSH)
RTJ = (PXB, TLP)
QQT = (RRL, QHQ)
CSR = (XJV, XJV)
CJP = (CJG, HQQ)
RMC = (MPD, DRC)
XMS = (LXX, GPN)
HSR = (VGP, VML)
MNM = (VSS, QXR)
SJN = (LGL, LNZ)
KBV = (MJT, BVM)
KFN = (NRC, VSG)
JNC = (RHR, LFJ)
MPF = (SFB, CCK)
QVK = (GNK, BCG)
NJD = (KCG, LDB)
DBM = (MJG, MFD)
NKF = (GGN, DGB)
BCN = (JNR, MHK)
GNK = (FXM, GPR)
KMT = (HFC, CPS)
FDJ = (KCG, LDB)
LVD = (PHH, QDR)
FCN = (VDP, MQC)
QQB = (GJB, GJB)
PLF = (JNL, HBT)
QDM = (FPL, TFX)
GXM = (CLD, NNL)
MRV = (BCG, GNK)
LKB = (NTR, FKG)
TTG = (TQQ, TXC)
GFD = (VSD, VFK)
RCS = (KQQ, DNH)
QXR = (FCQ, LJF)
HMQ = (RJQ, FQL)
VCN = (SKH, XJH)
QQG = (HSR, DJD)
HGF = (RVC, TJD)
XMB = (TSC, SLR)
PJB = (GCK, SLX)
HFC = (RSV, PKJ)
JJL = (GXK, GST)
QTN = (JLV, SGX)
KDP = (GNV, BBT)
VRF = (TFN, JSB)
GPN = (CPF, SRQ)
TSC = (TXT, JSN)
CRF = (QSJ, CCG)
TNF = (TBC, LKB)
VLH = (LCF, MSH)
BCV = (JSC, KMT)
NNL = (KVX, FQS)
RVT = (HCB, FBM)
QHC = (QKV, NCJ)
VDP = (CBV, SRP)
CBV = (VQV, NKF)
CMF = (XHV, TPR)
TRN = (RLT, NMS)
JSB = (XTH, TRS)
CFC = (TVT, RDQ)
KDL = (TKG, TKG)
TTD = (BBC, GHP)
KJR = (PXX, SHR)
MTV = (GVS, NXK)
BVN = (KDR, PVP)
DXB = (RPV, JMP)
FSJ = (QPQ, GML)
PBJ = (LQN, KTL)
PXB = (BDL, VRF)
NDS = (BGB, NGX)
CBN = (KMK, TDR)
NFG = (VLN, PRV)
JTD = (PGS, PGS)
MKR = (QHQ, RRL)
JSN = (RFV, RMC)
CVK = (SFF, JNG)
FGN = (BVQ, XQC)
HHF = (RPS, QQF)
PLB = (PKS, GKX)
BJB = (QMC, GPG)
STP = (QTN, GMG)
DGK = (RKK, BVT)
JJM = (VGD, CXK)
LTS = (QPN, BCL)
LVC = (QPQ, GML)
QNB = (GJN, RVB)
RBH = (HMQ, HPS)
NQK = (DHX, FPR)
MRP = (BDT, SGN)
JQM = (TRR, PPF)
TSH = (BDT, SGN)
JLN = (JCC, FCB)
BRP = (LDX, CGC)
SJC = (HRQ, HRQ)
LJL = (BVB, PPV)
SPN = (SDL, VHM)
SDM = (DDF, LTS)
LJH = (FRG, CMJ)
CMG = (MKD, JGT)
GPR = (LDM, FQT)
QPQ = (NRD, TVN)
JCJ = (RDJ, QSD)
HSX = (CMG, SHF)
VML = (RMB, MHC)
DHX = (JCH, GKD)
MTG = (FPX, SPD)
BDT = (MPL, CBB)
CJC = (PBL, KRR)
JLS = (LJL, FTR)
HQF = (LQN, KTL)
HQQ = (RMR, BMN)
QMC = (RBP, PXD)
RPV = (HBH, NQK)
JHG = (JCC, FCB)
TPD = (VDP, MQC)
BHQ = (XKH, GPH)
XKC = (HDD, GXR)
RPS = (KJP, KJP)
QNT = (CVL, FGN)
JSC = (HFC, CPS)
KXG = (DTB, NTD)
CKM = (RTJ, MCG)
FTD = (KPX, TJG)
VSD = (XKS, QBH)
MCG = (TLP, PXB)
XKH = (HLP, CXV)
TNB = (CJF, CKM)
XTH = (RCM, GHN)
DFN = (GMR, DSS)
LMF = (TKG, XST)
FMH = (NRC, VSG)
XCS = (JTS, GRM)
GVF = (NDS, RRX)
CXM = (HGX, PMS)
VRM = (XJT, DXQ)
JLV = (QVX, LHM)
JCH = (PHM, SGF)
NMS = (VVL, LLT)
BHS = (XJR, LKM)
CKC = (BBC, GHP)
CBH = (XLC, PBT)
PRL = (QFT, TNK)
SDF = (VTD, MGV)
RVB = (MLR, XHT)
GPT = (PLF, MJX)
KRR = (RVT, XRH)
GXR = (BVV, BRR)
NSN = (RGQ, JMQ)
KJX = (TCR, MSL)
PHL = (TSM, QHM)
MQR = (MTS, GKB)
XDK = (SJB, MBT)
NRC = (DGN, BJB)
JQQ = (LBC, JLS)
JTS = (JCV, SQB)
RLJ = (JJM, QKR)
DTB = (CGG, SPN)
BRS = (PXH, TNB)
SRV = (SPC, DNV)
MNP = (JJL, QKM)
KTQ = (XSK, XSK)
FPX = (SJC, GNF)
VBR = (VRM, RLS)
KSN = (HQB, RRP)
RJQ = (SRV, DFC)
BKS = (BVK, DXB)
BVB = (VHH, CJP)
XTK = (JTD, JTH)
PBT = (BXP, NST)
PVP = (RTK, GKJ)
QPN = (BCV, QBS)
QQF = (KJP, HPZ)
QRH = (PLF, MJX)
GHS = (BKN, TPS)
RCM = (MNP, GXQ)
DCT = (DDF, LTS)
JLC = (HGX, PMS)
VNC = (XSK, CXZ)
BQJ = (MHK, JNR)
SHF = (JGT, MKD)
FXN = (QKV, NCJ)
FPB = (PGG, MMS)
JGJ = (KXG, NND)
VBM = (PSQ, QKN)
GKX = (DGG, JQM)
DSF = (KMM, DFJ)
CMJ = (GPK, MKJ)
NCJ = (SDM, DCT)
MKD = (GQG, DHQ)
CFZ = (RQB, SHH)
RQK = (DKL, DKL)
XGT = (HPQ, VRQ)
SRP = (NKF, VQV)
BSG = (VCN, RJD)
XRC = (NFM, SDF)
DVL = (SRL, GVF)
HVB = (HXS, MLD)
MPD = (JNM, JKL)
JSP = (PHL, LSG)
BCR = (XJR, LKM)
PQK = (KPN, FKX)
FCD = (XGT, MDN)
MDL = (JLC, CXM)
FBX = (CLQ, MFB)
VNP = (RGM, GHS)
HMK = (RMN, HSF)
SJB = (PJR, XRC)
JFD = (XPK, XGB)
HHP = (GNV, BBT)
TVN = (VBM, KJN)
DMG = (PKK, BBD)
RGM = (BKN, TPS)
TRF = (KXQ, VBR)
XHT = (NSN, GHT)
DFJ = (KPH, PKV)
KJP = (CTC, BSG)
LLT = (NTS, LVD)
RMN = (SNP, KJR)
GSC = (TVL, PBR)
RSV = (XKC, BCM)
TLP = (VRF, BDL)
GGN = (GPJ, QMF)
XJR = (CMF, XNS)
GQG = (BKS, MTT)
JPN = (MRV, QVK)
RSF = (RGM, GHS)
QQS = (DLG, JPV)
DGV = (VQP, JFD)
JDN = (XNT, BDN)
LMA = (QDT, JQL)
QDG = (QGC, DTX)
HDD = (BVV, BRR)
RRD = (CNG, XLJ)
QBH = (VXX, SCC)
GPH = (HLP, CXV)
CVN = (MRV, QVK)
RLS = (XJT, DXQ)
QKN = (NJH, BLR)
NRD = (VBM, KJN)
NMB = (HVF, RJB)
XNT = (RXV, TRF)
XNS = (XHV, TPR)
SGX = (LHM, QVX)
NTS = (PHH, QDR)
SPS = (LTF, HVH)
KPX = (BCR, BHS)
GNM = (RPS, RPS)
CXZ = (NVJ, PLB)
VVL = (LVD, NTS)
VTC = (NHG, DVN)
PXD = (BHH, SSS)
TVL = (MKT, BRP)
TPR = (KTJ, TSS)
MJX = (JNL, HBT)
BKN = (FMH, KFN)
MBM = (BVC, FTP)
RTV = (GVF, SRL)
GPG = (PXD, RBP)
KXK = (DMG, NPC)
JPV = (GMM, BVN)
LXP = (VPC, CRF)
RMQ = (DNH, KQQ)
DRN = (KBB, XVQ)
MMS = (XXC, NDL)
GMG = (SGX, JLV)
MJT = (KHF, FTD)
XJT = (QHC, FXN)
JMQ = (XPP, RSK)
QCS = (TVH, KJL)
BVC = (DRN, DKV)
SPC = (DBM, VGJ)
SHH = (TNF, FVQ)
VGA = (PLB, NVJ)
RKK = (JPN, CVN)
SCC = (TRQ, QCS)
CDN = (JQK, PJX)
VSS = (LJF, FCQ)
JNF = (LFJ, RHR)
VGP = (MHC, RMB)
VGJ = (MJG, MFD)
QGC = (RHH, SKN)
RKJ = (KTQ, VNC)
DTX = (SKN, RHH)
HPQ = (VDR, SGC)
CCG = (BRS, BKF)
VLN = (FBX, KDS)
BHH = (RMQ, RCS)
BBC = (FCD, NCQ)
JCV = (GNM, GNM)
TNQ = (GJB, RKJ)
QNJ = (NGH, XTV)
GHT = (RGQ, JMQ)
LJX = (CFC, HKB)
TLN = (HKB, CFC)
PFK = (DKL, LFL)
PJR = (SDF, NFM)
JNG = (NFG, FVR)
PJX = (BHQ, HDQ)
VHH = (CJG, HQQ)
RTK = (PNN, JHL)
XGB = (MLN, SQN)
JCC = (NQX, NTT)
BVT = (CVN, JPN)
HPS = (RJQ, FQL)
TCR = (DFN, RHS)
LLA = (SHH, RQB)
NGX = (QQS, LRV)
SLV = (CBH, QKF)
BMN = (CPR, MQR)
XKL = (RFN, MHL)
CGG = (VHM, SDL)
KJN = (PSQ, QKN)
LDB = (KDL, LMF)
SPD = (SJC, GNF)
VDR = (RLJ, QGB)
DDF = (QPN, BCL)
KQQ = (MVG, JCJ)
DSS = (FDJ, NJD)
NFD = (HVH, LTF)
GPJ = (BFM, PJB)
LGL = (DQL, CJC)
TDQ = (QQB, TNQ)
RCR = (PHL, LSG)
SKH = (VNP, RSF)
DGN = (QMC, GPG)
NGH = (RNL, VTC)
TSN = (HVF, RJB)
MGV = (LML, BJK)
QHQ = (LXP, NMC)
KJL = (GJS, XMS)
RBP = (BHH, SSS)
QDR = (FPB, TCJ)
RHR = (NMB, TSN)
NXK = (LJX, TLN)
FCB = (NQX, NTT)
TFN = (TRS, XTH)
MJG = (KSN, DBF)
BVQ = (KFP, HVB)
GMM = (PVP, KDR)
MDN = (VRQ, HPQ)
LTV = (DTX, QGC)
LRV = (DLG, JPV)
MHC = (JKJ, JGJ)
DFC = (DNV, SPC)
LXV = (SHH, RQB)
PBL = (RVT, XRH)
BDN = (RXV, TRF)
JKJ = (KXG, NND)
MSH = (MTV, QBF)
NDL = (SPS, NFD)
FKG = (VHT, KXK)
PBR = (MKT, BRP)
VSG = (BJB, DGN)
RRX = (BGB, NGX)
NQR = (JND, MBM)
MRX = (MHX, SBX)
DVN = (DVQ, VNB)
HKC = (CNG, XLJ)
PGT = (JXR, DGK)
DBF = (HQB, RRP)
FRG = (GPK, MKJ)
DFG = (NMQ, GFD)
QDT = (MLH, GSC)
KVX = (STP, BHX)
LCT = (MDL, KCL)
LSN = (TCR, MSL)
TXT = (RMC, RFV)
MXM = (LXV, CFZ)
TJG = (BHS, BCR)
BCM = (GXR, HDD)
FKX = (NTL, QQG)
SRQ = (JQQ, VMH)
BCL = (BCV, QBS)
LRX = (CDN, XBH)
RHS = (DSS, GMR)
CLD = (FQS, KVX)
XLJ = (DXM, QFN)
KCL = (CXM, JLC)
HXS = (PRL, RPP)
JND = (BVC, FTP)
VQR = (SHF, CMG)
VNB = (DDH, GXM)
QGB = (JJM, QKR)
CVL = (BVQ, XQC)
RFN = (JDN, TLX)
FBM = (DVL, RTV)
TFX = (LSQ, HMK)
XQM = (NMQ, GFD)
BJL = (KCL, MDL)
FTR = (PPV, BVB)
KNX = (FPX, SPD)
MHK = (JHG, JLN)
TDR = (XCS, VXV)
HVC = (VSS, QXR)
QXC = (HPS, HMQ)
RRL = (NMC, LXP)
MLD = (PRL, RPP)
LCF = (MTV, QBF)
VXV = (JTS, GRM)
XTV = (RNL, VTC)
LFL = (MFC, DXX)
CBC = (GTB, MPF)
CQN = (GPT, QRH)
DDH = (NNL, CLD)
GHN = (GXQ, MNP)
JGT = (DHQ, GQG)
HCT = (CKC, TTD)
QCK = (GJN, RVB)
SGF = (JSP, RCR)
MPL = (XLX, LMX)
XDQ = (LXV, LXV)
MLN = (TDQ, XKV)
SGZ = (JQL, QDT)
VRQ = (SGC, VDR)
FPL = (LSQ, HMK)
SQB = (GNM, HHF)
MHX = (PGT, JGN)
QFT = (HKC, RRD)
LXX = (CPF, SRQ)
CPR = (GKB, MTS)
HLP = (LNF, HGF)
GJS = (GPN, LXX)
QKV = (DCT, SDM)
XST = (XDQ, MXM)
VXX = (QCS, TRQ)
KFP = (HXS, MLD)
MSL = (RHS, DFN)
NQX = (RQK, PFK)
CGC = (LRS, KBV)
FQT = (TRN, DDN)
VMH = (LBC, JLS)
VHM = (LSN, KJX)
JXR = (BVT, RKK)
KPN = (QQG, NTL)
QKM = (GST, GXK)
JNL = (XKL, JBQ)
BVM = (KHF, FTD)
XPK = (SQN, MLN)
GJN = (MLR, XHT)'


/**** TEST ****/
/*
DECLARE @inpDir varchar(max) = 'LLR'
DECLARE @inp varchar(max) = 'AAA = (BBB, BBB)
BBB = (AAA, ZZZ)
ZZZ = (ZZZ, ZZZ)'
*/
/**** TEST - PART 2 ****/
/*
DECLARE @inpDir varchar(max) = 'LR'
DECLARE @inp varchar(max) = '11A = (11B, XXX)
11B = (XXX, 11Z)
11Z = (11B, XXX)
22A = (22B, XXX)
22B = (22C, 22C)
22C = (22Z, 22Z)
22Z = (22B, 22B)
XXX = (XXX, XXX)'
*/
--SELECT  @inp
DECLARE @CRLF varchar(10) = char(13) + char(10) ;
DECLARE @inStr varchar(max) = REPLACE(@inp,@CRLF,'|')

--SELECT @inStr

/* Instructions table. */
DROP TABLE IF EXISTS #tmpInstructions
CREATE TABLE #tmpInstructions (id int identity, instr varchar(max), inp varchar(100), lInp varchar(100), rInp varchar(100))

INSERT INTO #tmpInstructions (instr)
SELECT value FROM STRING_SPLIT(@inStr,'|')

/* Directions table. */
DROP TABLE IF EXISTS #tmpDirections
CREATE TABLE #tmpDirections (id int identity, direction varchar(1) )

INSERT INTO #tmpDirections (direction)
SELECT SUBSTRING(t1.chars, v.number+1, 1) 
FROM (SELECT @inpDir chars) t1
INNER JOIN master..spt_values v on v.number < len(t1.chars)
WHERE v.type = 'P'

--SELECT * FROM #tmpDirections
--SELECT * FROM #tmpInstructions WHERE RIGHT(inp,1) = 'Z'

/* Parse out instructions. */
UPDATE #tmpInstructions
SET inp = SUBSTRING(instr,1, 3 )
	, lInp = SUBSTRING(instr,8,3)
	, rInp = SUBSTRING(instr,13,3)

DROP TABLE IF EXISTS #startNodes
CREATE TABLE #startNodes (id int identity, nodeID varchar(5))
INSERT INTO #startNodes (nodeID)
SELECT inp FROM #tmpInstructions
WHERE RIGHT(inp,1) = 'A'

--SELECT *  FROM #tmpInstructions
--SELECT * FROM #tmpDirections
--SELECT * FROM #startNodes

/* Create table to track current moves */
DROP TABLE IF EXISTS #moves
CREATE TABLE #moves (id int identity, nodeStart varchar(5), nodeEnd varchar(5), turn int, startBlock int, movesToZState int)

INSERT INTO #moves (nodeStart, turn, startBlock)
SELECT nodeID, 1, ROW_NUMBER() OVER (ORDER BY id)
FROM #startNodes

--SELECT * FROM #moves
--SELECT * FROM #tmpDirections
--SELECT * FROM #tmpInstructions


/* 
Up to this point, we've generated our temp definition tables, and inserted our first set of rows into our work table. 
Next we need to solve ZState for our first input row.
*/

SET NOCOUNT ON --- No need to return counts of each insert here. 

/* How many starting points do we have? */
DECLARE @workSets int = ( SELECT max(id) FROM #moves WHERE turn = 1 )

DECLARE @workSetsCounter int = 1 /* Outer loop */
DECLARE @moveCounter int = 1 /* Inner loop */

/* How do we know when to reset directions list? */
DECLARE @directionsCount int = (SELECT max(id) FROM #tmpDirections)

/* For all of the work sets... */
WHILE @workSetsCounter <= @workSets
BEGIN 
	DECLARE @thisTurn int = 1  -- Tracker for which move we're on in the work set. Reset for each set.
	DECLARE @thisNodeStart varchar(5)
	DECLARE @thisNodeEnd varchar(5)

	DECLARE @thisMove varchar(1)
	
	DECLARE @moves int = 1
	DECLARE @currentCounts int = 0

	WHILE 1 = 1
	BEGIN
		/* Calc all moves for each nodeStart. */
		SET @thisNodeStart = ( SELECT nodeStart FROM #moves WHERE turn = @moves AND startBlock = @workSetsCounter AND nodeEnd IS NULL AND movesToZState IS NULL)
		SET @thisMove = (SELECT direction FROM #tmpDirections WHERE id = @moveCounter)
		SET @thisNodeEnd = ( SELECT CASE WHEN @thisMove = 'L' THEN lInp ELSE rInp END FROM #tmpInstructions WHERE inp = @thisNodeStart )

		UPDATE #moves 
		SET nodeEnd = @thisNodeEnd
		WHERE nodeStart = @thisNodeStart AND nodeEnd IS NULL AND turn = @thisTurn AND startBlock = @workSetsCounter
		

		/* If nodeEnd = 'z' then break. */
		IF RIGHT(@thisNodeEnd,1) = 'Z'
		BEGIN
			UPDATE #moves
			SET movesToZState = @moves
			WHERE turn = 1
				AND startBlock = @workSetsCounter
			
			RAISERROR( 'Hit a Z',0,1) WITH NOWAIT
			
			/* Cleanup work table */
			DELETE FROM #moves
			WHERE turn > 1
				AND startBlock = @workSetsCounter

			SET @moveCounter = 1
			break
		END
		ELSE 
		BEGIN
			SET @thisTurn = @thisTurn+1

			INSERT INTO #moves (nodeStart, turn, startBlock)
			VALUES( @thisNodeEnd, @thisTurn, @workSetsCounter )

			SET @moves = @moves+1
			SET @currentCounts = @currentCounts+1
			SET @moveCounter = @moveCounter+1

			/* If we've run out of directions, re-insert the list back into #tmpDirections */
			DECLARE @msg varchar(50) = ''
			IF @thisTurn > ( SELECT COUNT(*) FROM #tmpDirections )
			BEGIN
				SET @msg = CONCAT('Adding directions at ',getDATE())
				RAISERROR( @msg,0,1) WITH NOWAIT
				INSERT INTO #tmpDirections (direction)
				SELECT direction
				FROM #tmpDirections
				WHERE id <=  @directionsCount
			END
		END
	END
	
	SET @workSetsCounter = @workSetsCounter+1

	IF @workSetsCounter > @workSets
	BEGIN
	  break
	END
END



/*
SELECT CEILING(sqrt(13201))

; WITH base AS (
	SELECT * FROM #moves
)
, factors AS (
	SELECT *
	FROM base b
	CROSS APPLY (
		/* Jeff Moden's Tally Table function - https://www.sqlservercentral.com/scripts/create-a-tally-function-fntally */
			SELECT counter = t.N
			FROM dbo.fnTally(1, b.movesToZState) t
			WHERE t.N <= b.movesToZState
				AND t.N > 1
				AND (t.N=2 OR t.N%2!=0)
				AND (t.N=3 OR t.N%3!=0)
				AND (t.N=5 OR t.N%5!=0)
				AND (t.N=7 OR t.N%7!=0)
				AND (t.N=11 OR t.N%11!=0)
	)c
)
SELECT counter, count(*) AS cnt 
FROM factors
GROUP BY counter
HAVING count(*) = 6

(
	SELECT startBlock, movesToZState, counter 
	FROM factors f1
	WHERE startBlock = 1
) s1
INNER JOIN (
	SELECT startBlock, movesToZState, counter 
	FROM factors f1
	WHERE startBlock = 2
) s2 ON s1.counter = s2.counter
INNER JOIN (
	SELECT startBlock, movesToZState, counter 
	FROM factors f1
	WHERE startBlock = 2
) s3 ON s1.counter = s2.counter
	AND s2.counter = s3.counter



; with detailedSet as 
(
    select 
        turn,
        movesToZState,
        biggest=max(movesToZState) over (partition by turn),
        orderRank= row_number() over (partition by turn order by movesToZState),
        totalNumbers= count(1) over (partition by turn)
    from #moves
    )
SELECT *
from detailedSet b
cross apply (
	/* Jeff Moden's Tally Table function - https://www.sqlservercentral.com/scripts/create-a-tally-function-fntally */
		SELECT counter = t.N * biggest
		FROM dbo.fnTally(1, 10000000) t
)c
where  c.counter < 10000000000000
	and c.counter%movesToZState =0
group by turn, counter
having count(1)=max(totalNumbers)


SELECT CEILING(Sqrt(22411))


/* Factorization */
SELECT x FROM generate_series(1, 12) x WHERE 12 % x = 0;

--------------------------------------------------------------------------------------------
/* PRIME NUMBERS */

SELECT * FROM #moves

--SELECT 22411*22411 = 502,252,921

/* https://stackoverflow.com/questions/52283165/how-to-calculate-lcm-value-using-sql-server */

; with detailedSet as 
(
    select 
        turn,
        movesToZState,
        biggest=max(movesToZState) over (partition by turn),
        orderRank= row_number() over (partition by turn order by movesToZState),
        totalNumbers= count(1) over (partition by turn)
    from #moves
    )
--, possibleLCMValues as 
--(
    select turn, counter
    from detailedSet b
    cross apply (
		/* Jeff Moden's Tally Table function - https://www.sqlservercentral.com/scripts/create-a-tally-function-fntally */
		SELECT counter = t.N * biggest
		FROM dbo.fnTally(1, biggest*biggest) t
	)c
	where  c.counter <biggest*biggest
		and c.counter%movesToZState =0
	group by turn, counter
	having count(1)=max(totalNumbers)
)
, LCMValues as
(
    select 
        turn,
        LCM=min(counter) 
    from possibleLCMValues
    group by turn
)
select * from LCMValues
*/

------------------------------------------------------------------------------------------------------------

/* PART 1 */
--SELECT count(*) AS moveCount FROM #tmpTracks
/* 
Attempt 1: 14429 << CORRECT
*/

/* PART 2 */

/*https://www.calculatorsoup.com/calculators/math/lcm.php*/

/* 
ATTEMPT 1: TIME OUT
ATTEMPT 2: 10,921,547,990,923 CORRECT! <<< Used online calculator above.
*/

/*
NOTES:
Parsing again. But this looks like it could be a set problem. 
Part 1:
I started with just building up the two tables I needed: Directions and Mappings.

Then I just iterated through the directions, starting with 'AAA', and just 
chose the Left or Right match for the input of the next iteration. Then I 
incremented a counter to keep track of which instruction I was on. 

I read the directions again about just looping back over the Directions if you
ran out before reaching 'ZZZ', and based on past years, I knew this was going 
to happen, so I coded for it. 

This was a lot of loops, and I'm fairly certain I can set-based it, which I'll
probably have to do in Part 2. For now, Part 1 is complete, on my first try.

ATTEMPT 1: 14429 << CORRECT!

Part 2:
Par two is interesting. 

So if I understand it correctly, I start with a set of points and traverse each 
one at the same time until they all end with a 'Z'. 

I will need to change my stepping from individual to group, and apply each 
direction to each input to come up with the next batch. This is going to make my
temp table explode in size. 

There's also a bit of a trick. The example shows only two branches running
simultaneously, but looking at the data, I think I saw 6 or so starting points. 

....

I had to rewrite my entire algorithm for Part 2. It'll probably also work for 
Part 1. I'll check that later. 

Because SQL can work in a set-based theme, it wasn't that difficult to track
multiple paths at once. I just JOINed the tables I needed on the columns I
needed and could easily pull out the matches. Then I just INSERTed new 
records into my base table and ran it again until all end nodes had the 
correct matching character. 

As suspected, it was very slow. 

ATTEMPT 1: Ran for 35 minutes before I killed it. 

I added indexes onto my temp tables, and that seems to have sped them up
quite a bit, but it's still extremely slow. Brute force is clearly not the
way to solve this one. 

I've got some errands to run, so I'll let it go and see how far it gets 
before it either returns a result or crashes. Or I get back home and see 
it's been running for a couple of hours. We'll see.

NOTE: One thought I had is that it would probably be much easier to just
calculate how many times it takes each input to get to a "Z" state and 
then just calculate the least common multiple of those attempts. That
would be MUCH faster than my brute force method. Also, thanks to some of
the people in Working Code Discord for pointing me towards this direction
that worked for them in their languages. Seems it may be the best SQL way
also.
.......

Loops 1-7 = < 1min
Loop 8 = 1 min
Loop 9 = 5 min
Loop 10 = 9 min
Loop 11 = 37 min
Loop 12 = 2h 21 min
Loop 13 = 9h 20 min
Loop 14 = 5 h 32 min
... After running over 22 hours, power went out and crashed the machine. I
may try running again just to see when it completes, but not right now. 
.....

At this point, I'm giving up on my original solution. I need to do the LCM 
method and calculate for the starting points. However, I'm curious how long 
this will take to actually complete, so I'm just gonna let it keep running.

...

My LCM solution completed in a little over 11.5 minutes.

FINAL ATTEMPT: 10,921,547,990,923 CORRECT! < Used online LCM calculator 
to check this answer. Now to do it in SQL.

NOTE: LCM(LCM(LCM(LCM(LCM( 1,2 ),3),4),5),6)

To find the LCMs, I first created a Tally Table that was a list of Prime 
factors. <<< CORRECTION - I started down this path, but quickly realized 
that I'd be dealing with a number around 10T, so pretty large. 

I think I'd be better off just calculating multiples of the numbers 
themselves. 

DECLARE @num1 bigint = 20569
DECLARE @num2 bigint = 18727
DECLARE @num3 bigint = 14429
DECLARE @num4 bigint = 13201
DECLARE @num5 bigint = 18113
DECLARE @num6 bigint = 22411
------------------
I looked at some solutions online for calculating LCM of a group of numbers
including https://rextester.com/IUKS35837. While that works very well 
for small numbers, the numbers I needed to get to with this problem were
around 10T or so. This thing fell on its face. Back to the drawing board.
...

I'm giving up on this one for now. I cheated and used an online calculator 
to calc the LCM, but I can't figure out how to do it in SQL right now.
I'll look at it again later. Probably.

to improve upon loops:
https://www.sqlservercentral.com/articles/the-numbers-or-tally-table-what-it-is-and-how-it-replaces-a-loop-1
https://www.sqlservercentral.com/articles/hidden-rbar-counting-with-recursive-ctes
https://www.sqlservercentral.com/scripts/create-a-tally-function-fntally
https://www.sqlservercentral.com/blogs/tally-tables-in-t-sql
https://davegugg.wordpress.com/2017/08/24/tally-tables/
https://www.itprotoday.com/sql-server/virtual-auxiliary-table-numbers
https://sqlsunday.com/2013/03/11/a-prime-number-challenge/

*/

/*
1	DNA	DQL	1	1	20569
2	HNA	CTC	1	2	18727
3	AAA	QNB	1	3	14429
4	LMA	QDT	1	4	13201
5	VGA	PLB	1	5	18113
6	LLA	SHH	1	6	22411
*/
