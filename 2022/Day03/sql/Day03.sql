/***** DAY 3 *****/
/* SETUP */

/* FIND COLLATIONS IN DB */
--SELECT * FROM sys.fn_helpcollations()
--WHERE name LIKE 'SQL_Latin%';
/*****/
/* SQL_Latin1_General_CP1_CS_AS */

DECLARE @inp varchar(max) = 'sfDRhjhHsHhgWPJvPmmQnmPqnW
pTddGVwcpMTTCdnQJqqQqqqVtVms
MdZCZGdcrCNRFZRhFssL
CttWnSnNfSnCHsWrTlTPPpPCTRrLpl
DgqqghjqJBVgDMTPGVlRGwbfLLGP
cgqBBhjqcBdMcWQcQNnNzsfv
lnDWMgTLlTFlHHgDDgngWFnlBWNcBQrdjcrrdQrPBrdjhWhj
JqSVRRVmmRqJJbZGGJqJvbmBNcjPNQNssQPhSSdwPwwwQr
bCRJqGJJmzmJZRCmFNTLTttTzfFfLglf
SPWvWMvCSPcjzjDbcwfjTl
lLNRNLqhhQVQJlRjrjrDwTzzqzzfrb
GRnRVhRJLFnnhtJQNVdLdLgWCmmZlMlgSCSWSgpZtPBM
pTGFrLFTFWFprLDBmLbSbtmBDb
MqjwqJwZlqJjHlqjHHPmSbsffDmsStDnHnQmsm
ZPJjVPZbVMRRPZwMJZVMNJMcGWpWFcWFFNFGrWTzWzFrzG
MffZZtMTnTtSZLdfgSMtCHSbmWsGwbHGSqvmCqWb
lzpQhrhphhlzDDhRPmBvqHGRbBbwbbssCB
JJljpvhFrrjhptnddMJfdtgnMT
drCtpNLCLpTpJSdswQhvDbHZHDLDHQ
WmWgBWRcRzVVWVBgBBnnlfgWHjmvjQhwbbbshQvZDQQjsHZC
fqBzggWPPzBWBzffcfnMJdtFtrpqrGMpdCCTdM
JwJWqNBNNdzzBSzGsqbdNJbVMpptPmZMrVZrrZMtPmPwDp
THgfgffffHRhQRLVMGVQmGtLDGmM
TjGchhlHhGfhRHgRgWJSqzJWWlqNSzsWSJ
dNmPlzdvdspsFWwQmG
bhZSbVJBJnLNTnwWVHMGwQsGMFFw
RnnbbTnSnSSTTnLfRCCPqDPDNDlfCfDDcr
lhhTcnPchPPHCCStwWTHbS
GDRFNqlQJsGJqGJDqVNsqssDQBSZWHQBCZHHwbZbtHtwCbZW
RNJrFJFJDrmqsVjNmDvrvfzfffcvdpMrvlfh
DtLdNGHNfwBJQwgCrncgpSpcnlfC
sGqWPMPTvPPhTjjsqRqPvSlzFFpjnnSrjczprgllFF
vVPGPGMbPGqTRWsMqZhqvbZNLLmLQddQdmBtBwBNBwNB
ChVzhwpdpqHhtNmHHNHt
QsjGTQcTWQjfjbssQDPmHgfrrVrPZnntZD
jTGJSGvWJwqlvlCBqV
pRVcSRffTPfBWfNVfWBWdJdwhvvwGjjFmGvhLTdh
qsrHqtbDZqsnsZqCQDtHnQQLwFvJFhGJwddvwLcCwJJJdv
sgcqHnzqqzgnHnqrstZzqsnSPllRlVVSNpWVNVRgMBlVPW
WRQTtHrTrrDRvQDHrbtJlpdhLdGsDllfspLpphhs
GzCSqCSmSmVSpsljphlpsL
gVwCVGzmNmCNRQTvJQJHnvwQ
psBDsswNjBcqtHtsTHsqtM
vQrPqZPmvgQZrfgmPrfJQlLvnLzVHLnSnnTLTnnHMt
PRCJRPgmqrmZmmqQQDDRwwNwjwDwpFjDDW
VtBgCqbVjPbSbHtPRdrssZMFZlrRsBRw
LzWmhcDqTDvnDWTFMrwRvwFrGZdGlZ
zJLczJDnWDpDNzmDczWLzWzWNCbbttHPCHbSVbqgHSCjffQf
TjTfvJjjvcjTQcDzMDfQTLLbLgVVVhMrWWblghbbLN
dZHFSpqpqpbWrhhlWh
dFwPBHqFSqwZSmZmSlqZjTvvJTmzcJsTTTjfvsfQ
qqqNTlfjzbMGJlHMSZtZzZgRZDgZDzdS
nLCCVVcmgCdZdSlg
cmQscBVpFsppsVlffQGJHjlWHJGq
whwVGGZhVLwhsFFDCTrDccCctrcctL
CzSSvPSzTBStSWND
HllCHvHJPPqjCPvbfdvvbsmhdRRRsmZhsRdMFQMRFQ
gFCfCVfCsLCftsBsDbSHrbJRJJtrmrddrd
hqQpqWhlNlpMlppfdTRhmbmTdbdHJH
NGvvjvpvpfGgGGDCZZBg
rmBtgdddtqmmrqBGbLGJlmctWWvbNzvfpsVVfzzSVSTsWNpz
RPDRjMhDFljvsvzlSs
wDChhnCQwDwmgJclqrgm
WHrrDbWHQPzNrrRVMQJMQGvvsvvjnDLvfsjsvwfGws
dhdhZhcphZZZmtFFTcZSmcZsnfqjLRnngnpwnGfqfvvnRs
FZcZhtmhFCttldFlSSmlSthQJzNVMbRPWWPJzrbbJCNMPH
wMFBpvTppLpwfNfjggmNmGTj
ddSDDbGHnRDQDZRHSZSdRZDQzjjrzNNNfnmNrllhgglhfgWg
bCQqsJqGDZCHbppwvtVMMvJcLL
pSpSVdLDFCvDDvCFvJgwjsJbNtmtJgSjmj
ZcWNNBQfwjsttsbc
WNQMBflQQNGQrFpFVVRDHpCMDR
PfPvqLphWpWLtZSWpWLPjwJbmDwJbbDbmJVjPQ
lQQnRGMllMjswrmwJM
ggRGFFGGdlGGzFFzzFFcNBvSfLQZShZTtdLWWZWSWZSp
lCfgHsVHJDdswNRmsMRQ
vccvvFVrPcvQNRdnmqdR
rctPBrPBTTpPFBLZZcCCgVHJHVjjbLHfCjfS
dfGdsGGrlFFlbWjfgblhJhLDLDDMLNvJNLLBnmLB
tSppwQQHSSVtwStSpZZVqRJmBDzLvwPmzJznBDDmLBBJ
cHvtpRSvptCRbbjrrcfjrWjf
BBdHdjgQdjMMsHJscFnrzLpLgznLFzcF
wvllmNmVvZfvmZWqcPptPztFSWLFGrrFnt
ZbCvqqmNvflfVTbZfNllsjHdjdhhHDTHRBJjjMsc
FNCPtPtgLFJwPwflFwSrLFcMczQZTbMVmzzVZMcNVVVb
DhRDdhpWQDZmzVSQ
vnhBSHppjRBHqpWvrPFtJLJlLvfLPF
nmcSnnWjmfCTcHPHJCvh
zdDdlrrzGFFLPtPhBBhH
NGNGrzrRrzphwwwMmqqfnsfZZNbSjQSN
lgznQGWQLQWlnSzHSQlwnlDhCbZhZhZChPChwDcDphcb
jTRvVVrMvmLCPNcNZhRNcD
jfftvsrVJLsVvJqsmfqjfjlQgzlQWFzHFGGBQgtFgnnH
sllpwssrsCwrTRgCHGCTcnZD
jjzJtSdhdzbJWhdQqLdzqSHmDZBGZmmcGGgBGTDRBQTD
SVjgVhgtbVzJPfFpvvNrNswV
StzdmmnnjSRRdhPPdZZd
VbTbCqFFMbZTFcNQLgRgQbvvRh
pGsqGGGfHGfZVffzwtrHnmJHllznrS
NLWJvtLjtLzBjNSvSMDCHfwHSlDMlSSHfZ
RTPTVmhpnprfcfgZwgRD
PnPGFhGsTphsFpdPnpVdmhwFvBJzbdWNtJJjtNJNjbvJtttN
RvmgjDqqjqRgZRMRDpQjQhWsbPLPFnPFFbVVLbdSbnPSvP
NwczHBrJTzcBJHrfWJBCJcrCdnPPPNSlLnsnbFnnLlbSFddS
rGJwCCCJHwBGGctGDtphQQMppQWZmRpD
RPhhSMqRccBDZPPPRhPcNZSzzTLJrWZLmVVQLWZdTQQJWL
nwggfwCvbjwvbwpzWLpWVLdrrrQVTm
vgnGGCsCtntbFsgqlRVMSqNVBDtPSc
mtstjJmvTNBcjRRCHCfH
gLpglwwlgHbZbgpgFrdBBBfdfSPBLSSrcS
GQGglGWWgMglQFHgbmTmNtDqnDDVJMDMNJ
ZMbBZfvVfFfBbMvfMhgbfDsrSTTszcldmTTPmcPFDz
QqQQnwrqWQpwRWWpWwJRwNzTTSPpzPPdTPpSPmdSscmS
GjjtJRWtwGQjRZVChZMjVCrMMf
fJNPTvDPTpHHTPwvjNNHDfTWthhgQQGdBddtlvMsMQMvQh
rFbZVZrLmLdGrrhMBQWg
FmnzVRFLqVqqVLVRRFZSFmTwfHHjHCNCCDGwjnCDDfNH
gQHHQJgCnNJnQFQPRbDQzLRR
mwrdpctWtrMvvrrWwGMmGWWPLzFFLSbLnDFsLPdDFbZRLz
vGcmGwBBMGtmmrvlMrGlqNghlVjCCnTHHCHgCCjh
LmLvVjVjsrmrtmmr
tfcnbScRnlMZtHQPCgSQssPdHC
RGGGGnRfcwnGbbJRBRcwJfnGtBDhhVptNhDvLLhVvvjBWNvT
dZWNQZgQbbNvdWGgZvbTfLrjtrPlGJfrLqLJlj
TMmDpwzmVMHpBLfrcccMfqLjct
SwnSBTDDTwwzwnnsFSZdRNbQZWRvgSCvbQ
WPgZgQLLbMgdBrdnGqqfdhVVvR
HzssNTzwlwHHcczwFjMFHjVGrqRqnVThVqrGrGTRqvrf
zFzcHFNlzJBLgMQLJCZL
nPLNcWtNtlLMccLlWdTjzzbBfBQSzqzBqPqS
RbbDZZrGRJhJjgJQSjCfqQCC
rrmRbDDwvZDpprbGrbDvtctlVVVHvdtlcMtWHMHV
DWrZJrQjWwFcrhzVzbpmpcVqhb
MFnFHMNSqbMpMMmG
FNngNRBRCgnHCCHRPvLNdgJWwJDlJJDssZDLWWlWQlsl
BQqNsGrbBCNbNCrMpGpbHhthRCDRDRJCmDVRhRJP
nfvWvcnSWncSTdzzFLJtRmhHmPPVPVTwwHHtTh
WfLfnfSJZJvdLFZWngfBMGMppGMrNBbGMpZjrj
rccMjBMVJcjjjNNqmmCf
LLspTTGsTGntsntTFwnNNfFqQmmNgNqfNQmZvQ
tpDTwlGDTGPPsbtsLsnnqGTJzJrJBzHzMVrMRzBMlShVBR
PsrNPRjjPbjzjLRWLbjmvtCnMntnpfmtNZNCNv
dDlfwwJllhJTcllScSCQvmtCnmtCmQmQmG
TTFcdhJwhBFfwJJHhdchVclrsbWsbzqLgbzrrjgVRgsqgW
vvcvvDJFcDZPTzwfcwSLczzScz
VNnnVVsqGNntsqtBRblqBndSfzCCRzwRfCHSjdfSjzSH
pppsMVlGGhhrZwMMDP
LltNHMZNHMfNnfgtLHWWbhWjcblSbVbcTWVP
vFmCZsqRRBqrVPWsWTWPWb
mQBqJRdqQBqQzzRQztgLgntGZttddLMggw
ZTCCrCWfGLGBWSwHvHHmHvmTTH
bllhnsbjDlqFfqjhnFRppwmvJppmpRRwMNSmmw
FlnFDjdtqhDdfZZBrtBrrPLt
CRCTHHJcCmJgTSTRcSMcRMVstssSrtprppVFtdrdspNb
jjllnvgBLqdsGprtqtFG
vQjzWnWZWjBLhjgwcccRJgZPCmJm
VRNmBBRNRFcCRcFVRSVSqZLLvvlLqvLfzfMhjJLC
TdHsHbDsbHMJLqlLzl
bgQGsgWWGGgbDgwGzBNSFrFtVSmwRRNFtn
pCCggQPPzWnvlDcWVHGJcNBl
LhsLMrwwGlnMBlNG
mmhwZmqSLwjLttnFbvgFTpPtPtgFCz
TtZSJzFZhZzTFcgFFcmRRmJJQllCHvPshVQsCrshsCssHVHW
GjGGDGqdGfbpDBjMdjpBjBNbVHtsWWPHlMlrrrrWWlVlVsCs
dBdDdfqLdBjjFRFScRStmLnL
GtVppGGPbVgTVFQrZzfrJfJJtMJr
DslmNmLsnmNHNNnnqQRZSJSQfqrJzSJn
BNljDHsHlvhmBshDljWsDWlHdgvpVTFggVgGcTTpvFPTzGCV
GRcnTRtcQTcBTsNtpvhFCmmFhZvFPC
bBJMgqWfdwBJfMPPPmvPqhmjvvPC
SMJMdJbdfwJgVglMWWVdcQnBzSQDzGGQzRQDTQSB
mvjVzLgTzVzvVjJrJgrlMhZRFTtRlRhMRRRtFZ
HGqnNNqfnHNGGfCHndBqnqfFlcppsJMZplMFpMtlscRlpC
qSnPGqqbnSdVrvQrrSJjSV
lWFSWZZvVqnqfnSrJzMcPDjJBJcBMPFJ
NGppNgHdHbRsHPbsgGspTwHTMcmMDdJMMmzBDcMBMDQmjMBd
TGGLRGwHsGtpHgHpNbpttwrvCnvCrqSSLvWqPqSSnWvn
jwcqBNNdZLjSfvPdddRlfb
CDVmsgMHCnnDnhVghmDnDCzRRrSrbrlTbsSTlzzlvzPb
gCCFmCWDnChGCFHnGCLBcwwjvZQZNtGqqNZc
LBDcNstdNJscccVDhLHNDHVtFvdldlFvCSnSvjSSbblgvZjF
rWznQqGMMrmmRZbbwvSFgjwbwm
RQnTQfWqqTzTLJJLVtBTsc
SvwCTHqCqqqHtwtnnHHDtWgrBQLzzVLLzSQVFhbrSFLL
cZmPNmPJdmPjPdcclRPPdhBCFVVVrQzQCCLbcgVbBV
fNlmfZfpfWMCtGGpnM
bSNssNssbPHVccPhclPGpP
ffQfZdZZBDDZgLvhmhzVmVppmlpGgh
jdQQQJRljSFFTWCT
lvlLtvnhnfvMgtrvWjmTmPPzjHcrmdcjdd
qCbssCJbppQZQbRJDQSZCJRpzhmcQjdcTBmmGzmdcmjGmdmT
SqwSbJZSpwwFJFDDbqtNVMwVMMlVNgNVlLhV
DqGFQGNMGMQwCcgtCJcr
sVfjWlzzVsmzVZsdVlHrhjppcgpjrhpphcSJ
LRdLsZBWWmlZldZRmzPDvDTTDMGTPFPvBTTc
jzzzpjgBzTDQQHPH
gLLtZVdCdsLfnbZCbdZtHDfHTJJPPmJJfmHQDJqD
bVtWndLtcZgnhsvMSBrMFrvBWNrB
sfqhLDcqfqRRqQhQRqMcvlJpJwFgzwpjplwbgpwzLz
CrGttnhTWtmSnGrtTtSCZGFzbgHHFFFjljHjZHHFwgwl
mBnrrTmWWCGStVCmMcDPcPBqcsRhcvPR
GLZLBNrGZdGGVgMVJVhnvn
dmWlcqcQMWCJVhMn
cdpPqtQbcHlmQjmZswFfTRFpBTfwwT
ZhtZpvbnbpPbtLHLvdsNdcRLNd
jDDjlCflGwsHfdrfTLrrdN
MzmljBMBWPtsbtSQtW
GHrzPSrNLFnMtSBZjZBB
WWbfDmVmwmmlbVDldWslNnBMJJNZZJCtJJJn
vwDfffVvmDwdTvDRQvpLNpLpcRFpphhHLPHg
scsTslgcnCTCScSTcqLLWlFWLLqbGvRbpL
NZMBdBPtNbbrLGqqqGvqZF
NttdbhMPfjQfNtbMbMmNjhNcCzczSSCSJTSzTCScnfnzwC
pjdjCGGGWPCMSDfS
JhFMFcrgBHPnSnWFWDDn
HVBBJctBccghsJhgrbwLGTTdtjLdbmTMMb
DtGHgDPfGfPhfLwNWSSJQcpHcr
dvlMCzdnMRFCCTjnZNpNQJcSbrWzrpSQWS
TVvFJJMjJdlMvRvMClllZZgPtPGsftfDqtGfVGsGtqqq
jSmmcjmJqcBgwmWMCLLzCsMz
TnTQVDGQTpZGNQHDZDHHQDwsCCdLrflsrCVzVrwWzwrr
zDFpppnNQtnTQQvZZZNvnhqqjtRccRbgqqbSSSjPRg
FwClNSwCFstWZLDLvhvjvtjhhD
TmsHmsmrggzmqnnGGvPGjTbbRGBhbB
cHVqgcrVzrQqzHmMcrMnczzcWFVCCFNJZWJZswwFCZWwffwS
mzbsmbmLRCZTRbSJFvPLPJPJpJffcP
QqWqNVNNNllnnWTglqTVlGNPJDvwcJpwfwccPgccPJDfJF
HMGnNMltqGMjHGqMzmTSmzTsRSszSm
qlGDfljllCTgqCTvCDfBHHQsbrSZZHSHWtvWZB
NzpnNpRnLLwRpdwpVhtqQbSbsWQWbSWnrrnH
cFqwFNpLdVcDJlDgccTD
BRqjnSBNBpRHHpjpBSnHnRBQfQzzCvzWrsWCTvfsvCsCCsfC
ZMVbhqbMdlbLTdsWvfPdPC
hlZVDMZcwJNSgjJgJFnq
CZwZssQQZrmsCmNNDpDGFblclD
HMjWMbBVfnnbMbnzMpFhlNSNFFSDcDGSzN
LnLLqjnBMjMngHbnWrTgZsCsgZvvvQrvQs
RCFCCJQbCQcprRlHHPpHhd
tWWLwvswfvZshgqDpdpBgfdf
mZtvZtMpjZzwWFjJTcQQbjjnSQ
fBfVwtttLDFctDtwFPWfTppWfmHCHdJhdChT
bGMRsbsvMQSSzMzZSNzsZvRNWTZJlmgZTJJdhhmppHTJCgTg
jssjNSSGMsQHbsRvHNPjtDcDcLPPPPDwLDDV
pClhQjJccrpbpqHhMhVhSMqHPt
dBZGZdgBzRsBsvMwGGVPVqMGwtVH
ZvDddZvDBdDdDmgCmVmbbCNpCCbljW
DTMCpdCnwRDwdfMCDDCssfZmGrBrjpttjrNrgctmGpGr
VVqJQgSSWzhPGGrPtNNQtm
bFvhgWzHJlDdffswTvRd
jwCCPPTtCswCCNTsqRNbMqQMVvVzMMMQSGvQqn
hprHlmFcHcdhWWLchZzHrLMvvnBvJJSBJMVMnnmMnMMJ
WppLcZdHWHplZWlDHhHTfzRzCCsTTtNNgtjgDw
vhmDFcDZmczMrwcqrMrmDFrvggtVSWgtSNwsjBtNVSnBsjsS
dbbRJHbpCWBBpZVgSS
LZLdHlClPmqLGDvMDv
mFbWsvsJVtbbRwfTSP
BGpQllhLGqhplBGZBfLMTSTLwwfwMJwMPT
GlDnDpQZlZZpZBlpWDNcmrgrWmNdNJvc
zbtqTtHQbZZpqbPpvGJdvQdhrhQjdQGs
qDFLLSNqcWwsGhGDJh
LgBcfnFCSFnLccggSVCVtHZlpqPPtTRMftHMbMzb
hzrrWnzRZRnbWVRzjcRHMDdqqQdNMHqHQQjlHM
sGCpCtppBfCTgwBBCwPBCssQqMQvNlSMMQDQNqHGHvDSbQ
tpLFPgfbCsfbzzcnJhRhZLhc
qzzGqfpFvWFmRSPjPjRP
cwwVssBMtNMNLngstgVBnrsPmHSJJmjllhQdQldmhdrjQJ
nDVSsLwcVcMnBGzTDDCvpvfzGT
bcTbbcZGZLPgTMWZpLLDQnrvPVnVmmjmRPFVrF
HJCJqlzBdsSjzCJRmlrlrnVQQDFnVF
BfwffNdNswLtbWbNcpjt
smJwSNNFMzFNDrvbrbfJHvbl
BRQjqZQcBhrbTsbTnfcn
ZLQRZRBjjPWSsmCdSWMgSN
NhwlDpbWggdSBvBggLFg
fRrZsVfjqljmsQQVmmsnFMFSBLLRvFTFMBSvFF
QfqVVzcsQmcQqrcsNwzzzPphHlwNppPH
nnFdsjVdmpBsBVFHzjpvlTfQdPcQQPGPcvlGPv
DWMDCCWbNJhLtMgJMNLgtMgQflZQlfQGjZZhQZGhTfQcQP
rCrtJJgLLMbgDgMDWNRrWRnzsjpFzBzSHmmqHmqnHH
rmjjJmmdwSmGhdsjJtsgGNzFWQFnBFVWHdFQcLLcNz
RCCbfRlvvPfvCTnHLLnNbNLczHnQ
lqZTllRRpDMlpfZRvgQpSmwwtggQjJgtpS
LDsGvTSSsswCwTrLZDqQWHMWbphlHMpGGpQz
RRPfPRccBdVjPcFlpMpMQWzMWfpF
RjPRjRtczcNBJRSCtLDTvTSDCCST
pqQNgNnSntwgqzzQCzNwCNBRcWtBjZcZGrBMcHMGvWcr
mmJdJPFVbJbPPGZbMRbvvrjcMj
lTMVVlLPfLNQhpgqLSLn
HlBHFrgBvlfzFzqvnvFqpCJbJfQpQpLcmhbcmtmm
jDjPGsRRTMMPjdJmjmLpCLth
MRMZMWsNpFFFVFHW
RGgwWcppGSWcWSRWmGdWcttHQFJHfbQwBQJTJQBQfJ
njjZZCMlCZjqMBFbJQZHJHBQft
DsjCPDDvjFNsMNjNqpGspcsGSmcpccrGWS
cVwMZGVZwHNPgPwRZwHttThlHllvlzQpptzppl
DsCWdqLdDCnfJLSCqsqWRsBdlhjlhzlttzQhhtvlhnhhhbzT
JCWWRWCrLDDdBdLsSsLLSCrCNZMVcmMZMFwMZwNZPZVGFPmr
hhPzDzPhPNbfpzhBbdNbDhttzqWtwttHWwntjqmwmWFm
LgGZSdMMrgTLrZLdgLSgsGTFFjrWtFFmmmFtWjqHFnFtjn
vZgdLvZLZQLRQZQQdMZLdQvVpRhNNPfJDbcBbbhVNJNNhf
';


DECLARE @CRLF varchar(10) = char(13) + char(10) ;
DECLARE @inStr varchar(max) = REPLACE(@inp,@CRLF,'|')

DROP TABLE IF EXISTS #tmpBackpacks
CREATE TABLE #tmpBackpacks (
  id int identity
, backpack varchar(max) COLLATE SQL_Latin1_General_CP1_CS_AS
, pocket1 varchar(max) COLLATE SQL_Latin1_General_CP1_CS_AS
, pocket2 varchar(max) COLLATE SQL_Latin1_General_CP1_CS_AS
, commons varchar(10) COLLATE SQL_Latin1_General_CP1_CS_AS
, score int
, p2Relation int
)

INSERT INTO #tmpBackpacks (backpack)
SELECT value FROM STRING_SPLIT(@inStr,'|')

UPDATE #tmpBackpacks
SET pocket1 = LEFT(backpack,len(backpack)/2)
    , pocket2 = RIGHT(backpack,len(backpack)/2)

--SELECT * FROM #tmpBackpacks

DECLARE @thisRow int = 1
DECLARE @maxRow int = ( SELECT count(*) FROM #tmpBackpacks )

/*
DROP TABLE IF EXISTS #bp_pocket1
CREATE TABLE #bp_pocket1 (contents varchar(1) COLLATE SQL_Latin1_General_CP1_CS_AS)
DROP TABLE IF EXISTS #bp_pocket2
CREATE TABLE #bp_pocket2 (contents varchar(1) COLLATE SQL_Latin1_General_CP1_CS_AS)
*/
--SELECT LEN(pocket1) FROM #tmpBackpacks

/* PART 1 */

/*
THOUGHTS:
Iterate backpack contents into tables then INTERSECT the SELECT from the tables.
*/

DROP TABLE IF EXISTS #tmpPos
CREATE TABLE #tmpPos (id int identity, poschar varchar(1))

/* Starting Position */

WHILE @thisRow <= @maxRow 
BEGIN
    DECLARE @thisRecord varchar(max) = ( SELECT pocket1 FROM #tmpBackpacks WHERE id = @thisRow ) ;
    DECLARE @moves int = 1 ;
    DECLARE @maxMove int = LEN(@thisRecord) ;
    DECLARE @repeatChar varchar(1)

    WHILE @moves <= @maxMove
    BEGIN
        DECLARE @thisChar varchar(1) = SUBSTRING(@thisRecord,@moves,1)
        SET @repeatChar = ( SELECT SUBSTRING(pocket2,CHARINDEX(@thisChar, pocket2),1) FROM #tmpBackpacks WHERE id = @thisRow AND ( CHARINDEX(@thisChar, pocket2) > 0 ) ) ;
        SET @moves += 1 ;

        UPDATE #tmpBackpacks 
        SET commons = @repeatChar
        WHERE id = @thisRow
            AND commons IS NULL
    END

    SET @thisRow += 1 ;
END

--SELECT *, ascii(commons) AS c,CASE WHEN ascii(commons) BETWEEN 97 AND 122 THEN ascii(commons) - 96 ELSE ascii(commons)-38 END FROM #tmpBackpacks

UPDATE #tmpBackpacks 
SET score = CASE WHEN ascii(commons) BETWEEN 97 AND 122 THEN ascii(commons) - 96 ELSE ascii(commons)-38 END

SELECT sum(score) FROM #tmpBackpacks
--DROP TABLE IF EXISTS #tmpBackpacks
-- 8053 = right answer
GO

/* PART 2 */

UPDATE #tmpBackpacks
SET p2Relation = ceiling(id/3.0)

--SELECT * FROM #tmpBackpacks

DROP TABLE IF EXISTS #tmpRucks
CREATE TABLE #tmpRucks ( p2Relation int, p1 varchar(max), p2 varchar(max), p3 varchar(max) )

; WITH p2 AS ( 
    SELECT p2Relation, backpack, ROW_NUMBER() OVER ( PARTITION BY p2Relation ORDER BY backpack ) AS rn
    FROM #tmpBackpacks )
INSERT INTO #tmpRucks
SELECT p2Relation, [1] AS p1, [2] AS p2, [3] AS p3 
FROM ( 
    SELECT p2Relation, backpack, rn
    FROM p2
) s1
PIVOT (
    MAX(backpack)
    FOR rn IN ([1],[2],[3])
) p1

--SELECT * FROM #tmpRucks

DECLARE @thisRow2 int = 1
DECLARE @maxRow2 int = ( SELECT count(*) FROM #tmpRucks )

DROP TABLE IF EXISTS #ruckPulls
CREATE TABLE #ruckPulls ( item varchar(1), score int )

WHILE @thisRow2 <= @maxRow2
BEGIN
    DECLARE @p1 varchar(max) = ( SELECT p1 FROM #tmpRucks WHERE p2Relation = @thisRow2 ) ;
    DECLARE @p2 varchar(max) = ( SELECT p2 FROM #tmpRucks WHERE p2Relation = @thisRow2 ) ;
    DECLARE @p3 varchar(max) = ( SELECT p3 FROM #tmpRucks WHERE p2Relation = @thisRow2 ) ;

    DROP TABLE IF EXISTS #p1Relation
    CREATE TABLE #p1Relation (r int, bp varchar(max))
    DROP TABLE IF EXISTS #p2Relation
    CREATE TABLE #p2Relation (r int, bp varchar(max))
    DROP TABLE IF EXISTS #p3Relation
    CREATE TABLE #p3Relation (r int, bp varchar(max))

    DECLARE @p1_thisPos int = 1
    DECLARE @p1_moves int = 1 ;
    DECLARE @p1_maxMove int = LEN(@p1) ;
   
    WHILE @p1_moves <= @p1_maxMove
    BEGIN
        DECLARE @p1_thisChar varchar(1) = SUBSTRING(@p1,@p1_moves,1)
        INSERT INTO #p1Relation(bp) VALUES (@p1_thisChar)
        SET @p1_moves += 1 ;
    END

    DECLARE @p2_thisPos int = 1
    DECLARE @p2_moves int = 1 ;
    DECLARE @p2_maxMove int = LEN(@p2) ;
   
    WHILE @p2_moves <= @p2_maxMove
    BEGIN
        DECLARE @p2_thisChar varchar(1) = SUBSTRING(@p2,@p2_moves,1)
        INSERT INTO #p2Relation(bp) VALUES (@p2_thisChar)
        SET @p2_moves += 1 ;
    END
    
    DECLARE @p3_thisPos int = 1
    DECLARE @p3_moves int = 1 ;
    DECLARE @p3_maxMove int = LEN(@p3) ;
   
    WHILE @p3_moves <= @p3_maxMove
    BEGIN
        DECLARE @p3_thisChar varchar(1) = SUBSTRING(@p3,@p3_moves,1)
        INSERT INTO #p3Relation(bp) VALUES (@p3_thisChar)
        SET @p3_moves += 1 ;
    END

    SET @thisRow2 += 1 ;
    
    INSERT INTO #ruckPulls (item)
    SELECT bp COLLATE SQL_Latin1_General_CP1_CS_AS FROM #p1Relation
    INTERSECT
    SELECT bp COLLATE SQL_Latin1_General_CP1_CS_AS FROM #p2Relation
    INTERSECT
    SELECT bp COLLATE SQL_Latin1_General_CP1_CS_AS FROM #p3Relation    
    
    DROP TABLE IF EXISTS #p1Relation
    DROP TABLE IF EXISTS #p2Relation
    DROP TABLE IF EXISTS #p3Relation
END

UPDATE #ruckPulls
SET score = CASE WHEN ascii(item) BETWEEN 97 AND 122 THEN ascii(item) - 96 ELSE ascii(item)-38 END

SELECT sum(score) FROM #ruckPulls

-- 2425 = right answer

DROP TABLE IF EXISTS #tmpBackpacks
DROP TABLE IF EXISTS #bp_pocket1
DROP TABLE IF EXISTS #bp_pocket2
DROP TABLE IF EXISTS #ruckPulls

/*
NOTES:
Part 1:
By default, SQL Server isn't case-sensitive, but this problem requires checks for case-sensitivity. It required me to 
change collation on the columns, so that case did matter. 

The first part wanted the contents split into two pockets, or halves of the strings. That part was easy. 

Then I just iterated through Pocket 1 to see which characters were in Pocket 2. 

Part 2:
The second part required me to compare contents of consecutive packs. That changed the calculations a bit, but I was 
able to group the backpacks into threes then split those rows into individual temp tables of characters, then use an 
INTERSECT to determine the common characters in those 3 packs. 

It was a lot more complicated that I expected, and I initially gave up on Day 3 Part 2. I didn't get back to finish it
until the 5th.

SQL isn't the best for processing these problems.

*/