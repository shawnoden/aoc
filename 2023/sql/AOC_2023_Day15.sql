/***** --- Day 15: Lens Library --- *****/
/* https://adventofcode.com/2023/day/15 */
/* SETUP */

DECLARE @inp varchar(max) = 'shn-,hbl-,sdjk-,lz=3,dpg-,hgf=8,cntg-,jzm=5,hl-,rq-,ssbf-,xg=5,gch-,brt=4,qlrl-,fsrmnb=4,nsk-,pzd-,hzx=4,tqs-,dv-,bgbd=7,hzv-,kh-,kg-,xqtx=3,nkd-,hjjl-,xpr=6,rq-,vstm=3,bsl=4,kk-,cm-,mt-,lrv-,nzss=3,lmj-,ck=7,hbl-,znnns-,hz-,qzqc=4,tfnv-,kfqkc-,fsrmnb=4,sln-,mk-,pq=1,dkp-,clcg=7,jgbfh-,lrv=7,vxk=3,hz=2,th=9,fd-,mth-,fsxd-,skv=4,gjn=1,kd=7,qps-,lts=9,bfnpkj=1,jtpk=4,fh-,xn=4,tj-,ks-,ztnxv-,jm=6,bbbmn=1,vv=7,mshz=4,lc-,tlrg-,zgtn=2,shn-,brqs=1,mshz-,lcxp-,bdt=1,sqvp=5,ndrc=1,gszr-,ns-,dtmqg-,nscj=4,frvcs-,nj-,ntvq=9,bsqst-,nhkh-,qcx=7,xx=7,trdj=2,kp-,lmh-,snt=4,ml-,ztnxv-,txcp-,sf=1,bfn-,jzm-,rc-,txn=6,xz-,xddtrm=1,fpl-,xs=9,ntr-,rxp=8,fx-,djtnn=9,br=5,djt=5,shb-,lzdds-,rsv=6,ndrc-,hk=4,jcz-,mshz-,lnzjnj=6,cb=4,gn-,dgzb-,znnns-,nxxr-,ct=1,xn=4,hrkf-,scxnnl-,kld=5,dmc=2,qxdjq=5,vv=8,nprpc=7,kb-,bsx=8,ktq=8,qps-,fpl=4,rrmt-,lts-,dhkfs-,pljt-,kn-,qj=1,vv=7,kfqkc-,gpprmx-,mf=9,frvcs-,nl-,kcz-,ztplk=2,tv=3,xbdqh=3,cxh=4,lc=7,pl=8,tfdk-,ndrc=2,bhhgl=6,vk=3,flc=6,hsrcn-,gsgp-,xhf=3,lts=8,bkv=2,grnnd-,kt=9,zzncf-,zfm-,hslq-,sf=2,sf=5,qjphmx=3,thmdf-,nprpc-,ccj=9,qzb=1,lts-,bsfp-,dn=1,mdn-,ml-,kd=5,kqzb=4,kspd=5,brt-,rpcjf-,lks-,zk=1,qfr=6,hs-,vvfxlc=7,gvl=9,dtd-,qc-,ck=1,fv=5,nntzjr=2,zh-,dgzb=8,vj=7,sqnq-,rpcjf=1,thmdf=6,zjk-,zh-,tssz-,vd=4,sz=6,zzpzjc=5,sr-,pb=4,zqlr-,hzv-,ckjg-,cjv=8,zdp=2,bbbmn=6,sggqk-,kz=7,sqz-,frvcs-,kqx=5,zqlr-,xs-,jpq=5,dbv-,vjk-,kz-,fn-,ptm=1,sqz=6,mfd-,hb-,xhf-,xpp-,jqc=2,dnt=3,vx-,qlcjv=9,djtnn=9,dc-,bnz=8,ckz=7,dn-,pxm=7,pl=8,vstm=4,dpg=2,kdgcf-,ktq=7,hjjl-,xtd-,kpxkh-,st-,djtnn-,gpprmx-,dxf-,xk-,pbr=2,lnq-,xck-,nd=9,lnzjnj=1,gs=6,bbbmn-,bbk=9,bsx=7,bsfp-,xk=3,mfjxq-,qf-,mn-,pp=5,tqn-,ht=3,tznc=3,qps-,jbd=4,vtf-,hrv=4,xsh-,mzt=1,gddx-,bpv-,grnnd-,rms=4,dtmqg=9,mqj-,jzm=9,fcs-,kc-,lfl-,qhsvrp=4,tfnv-,mfd-,jmr-,fdf=2,jm-,lc=1,gxh-,klhc-,mtz-,vjx=5,pzjlk=8,ld=5,zk-,spf-,pk=5,pnn-,txcp=1,gb-,fth-,vfqj=2,vtf-,pljt-,lcxp=1,mj-,ht-,smhk=6,pljt-,rdv-,cg-,qrc=7,bkp-,bz=9,dz=9,ckc=9,qtvpz=8,nhkh=2,dmc=8,tznc-,tx-,str=9,kcz=9,bpv-,ddbzd-,kz-,st=8,zjk-,vj=6,zdbpr=2,mfjxq-,zz=8,nd-,cjv=7,jkf=5,mlzmcc-,dpg=5,rpcjf-,nj=6,zmf-,tj=6,lnzjnj-,grf=5,ks-,vjk=8,brt-,hz=3,rs-,mqj-,zdp=6,jcp=6,smhk-,cxh-,nq-,hcq=2,kb-,vtf-,zh-,kqzb-,jmr-,hzx-,fth-,gvl=8,mdn=7,nkrzr-,dkf=8,xck=4,txlk=1,bkckz=1,grf-,ntr=8,zzpzjc=7,mqj=4,gvdm=1,ps=2,kkt-,xqtx-,brt-,vz-,qdvl-,sqv=4,qb-,gsgp-,hbl-,tm=7,gdd=4,qzmc-,ntvq-,qlg=6,slq=9,dl=5,ssrn=6,hrv=4,ssx=4,kqx=3,hhb-,kdgcf=2,gb-,qjphmx=5,pp-,dtmqg-,jpxg=8,vmml-,hs-,rdzc-,rls-,vz=3,xbdqh=9,rzrt=6,zmf=1,tx-,kxd-,lsf=2,qlkh=4,dnt-,fdf=1,ntr=8,rdv-,zgfr=5,hzvkt-,spf-,gb-,lqnfnv-,dkp-,mvj=1,xsh=1,dzffd=5,xx=3,rq=7,mtz=6,pljt-,sr-,svkscd-,nfnrp=8,vql=9,lcxp=6,rxp=9,tqn-,ssbf=8,dbv=6,ghd-,gtftvc-,shc-,zgtn-,nz=6,gs-,kg=6,mf-,hv-,vv-,nsk=7,xv-,xtd=3,lvrn=8,str=5,qjphmx=6,kp=3,kz=2,fls=9,frr-,ht=1,nxxr=3,mvtrs-,nprpc-,hgf=2,jk-,grnnd=4,hgf-,qbcz-,jlpp-,qfr=7,pzr-,nll-,tdn=5,zz-,tbkk-,sqv=1,lc=2,frr-,kmq-,vql-,vrb-,tznc-,zgfr=9,xddtrm-,bbdl-,db-,gjn-,gtftvc-,fq-,stk=5,bfn=1,kc=8,hslq-,jcp=4,hhb=3,xbdqh-,nll=7,lz=5,tqn=1,cm-,hzx-,fx-,xhf-,xhf-,cm-,tm=2,jcp=8,flc-,vhz-,bn-,sqvp-,xpp-,ntr-,trdj=9,djtnn-,hnvl=6,qlrl-,nxv-,hv=8,nq=7,rd-,ld=8,vv-,ghd-,dhkfs-,jcp-,vxk=6,lj-,ck-,hrkf-,fx=6,nd=7,ptm=1,bsqst=4,tz-,clcg=3,cx=9,tbfhq=6,ddbzd=7,mf=5,hn=7,nfnrp-,qps=4,cf-,kln=4,sqv=1,nkd-,dpg-,nxh-,nxh=1,clmkkc=6,vd=4,dc=8,rs=9,lfn=4,kbp=2,jhm=5,td-,kb=8,rj-,zfm-,rg=7,mdn-,fq=9,xdfj=7,cjv-,kshvc=9,jcz=4,mqj=1,xhf=5,bsl-,dnt-,btm-,qnjqrc=2,bpv-,mzgdd-,pl-,qps=6,mn-,mskdr-,xqtx-,nprpc=1,mb-,jqc-,bsx-,lcnq=1,rnq-,spf-,sv=3,brt-,frr-,mdn-,gddx=1,vz=8,cdzz-,fjjs=3,mn-,pzjlk=1,kspd-,xpp=7,jcz-,scxnnl=2,gddx-,mfd-,dmc-,bd-,rbmvt=5,lc-,vx-,gtftvc-,mt-,brqs-,pp=3,ld-,xbdqh-,gxg-,pb-,lrv-,sgpj=8,vxk=1,tl-,tqs=7,ntr-,bnz-,gsgp-,bfn-,ckc-,jsbh-,hzvkt-,pnn=5,qpkj=9,lfz-,gng-,mk=3,lc-,cl=6,mf=9,gddx-,nz-,bz-,br-,hv-,dhp=2,hbl-,gxh-,hds=8,ktq=9,kzf-,ghd-,hl=2,kb=6,pzjlk=3,zzl-,frvcs-,mlzmcc=2,ptm=8,dgzb-,kmq=7,dnt-,kbt-,kpxkh-,ggz=8,brqs-,bqn-,cjv=7,xtd-,ddtp-,qlkh=1,vks-,nhkh=1,rc=6,nxh=5,bn-,nxh-,bsqst-,nbp=5,hbl-,gvdm-,xdz=1,gxpq=9,kzf-,vks=3,xddtrm=3,gxpq=6,rj=7,ddtp=8,shc-,hgf=7,mfd-,jtpk-,gtp=3,hv-,fdf-,bbk=3,bm-,bqn=3,ks=3,tjcrf-,zsz-,dz-,mth=6,smhk=6,dp-,bhhgl=1,xg-,qzmc=6,jzm=5,sbt=5,pnn=8,qh=5,zfm-,bf-,mjz-,lnzjnj-,mqm-,rrmt-,vstm-,nll=2,tfdk=2,kkt=4,pxm-,br=8,jpxg=5,zdp-,hrv=1,fgfnm-,tjlb=7,pp=9,zz=8,tj-,ns-,bkv=5,cxh-,dpg=5,kz-,nxz-,cz=6,hnvl-,frvcs-,rms=7,hrkf-,zsz=6,qzqc-,lfn-,hn-,lzdds-,hlj-,gv=2,kcz=7,fpl=9,frvcs=2,xg=9,xz-,zcf=7,vtf-,kkt=6,tlbnq-,lmfp=5,cz=8,kfqkc=7,jcp=8,zcf=7,kpxkh-,fx=8,ntvq=5,sggqk=3,hd=2,mb-,thmdf=9,grxkd-,nsk-,lh=5,jbd-,shn=6,bsx=1,bdt-,tbfhq-,bkv=6,kshvc=1,tm=1,chks=3,vhz=8,mzt=7,lcxp=3,rd-,bz=1,sqz=5,hb=6,skv=4,bsl-,qlkh=9,rd-,rls-,mshz=3,nxxr-,hv-,nsk-,bn=3,ns-,xck=7,cl=7,sqvp=4,kxd=5,nfnrp=5,hnvl=4,pds=5,lmh=9,hf=7,lcxp=5,qg=2,hk=3,md-,vxk-,tbkk=1,ndrc=1,nsk=1,rg-,lqnfnv=3,lnq-,kxd-,tjcrf=6,gn-,vqg-,ll-,svkscd=3,kzf=8,rsv=8,lmj=2,hz=1,chks=7,kp-,lmj=9,st=6,sv=8,scxnnl=1,bd=8,kqc=7,jv-,xbdqh=3,qh=5,vd-,fsrmnb=9,gh=2,nd-,cf-,skv=6,vk-,xtd-,ct-,jhm=4,qlrl-,pxsx-,kmq=5,pcg=2,mv=2,qvx-,mlzmcc-,bsl-,vxk=3,klhc=6,tssz=8,xx=3,mfd-,hl-,lz-,klhc=9,ml-,xz=1,tdn-,ccj=7,xsh=1,hzx=3,bfnpkj=7,pxm=8,sgq=3,txlk-,fpl-,qzb-,cg-,nhkh=4,kls-,kbp=1,lf=6,qxdjq-,bsqst-,gn=8,lmh=4,fgfnm-,qh-,fdf-,ct=5,dx=6,ns=1,ssx=9,kdgcf=7,vk-,bfn-,pq-,jhm-,sqvp-,vz=1,dhhfxb-,kkn-,crr-,mzgdd=9,zmf-,dgcs-,hzx=3,mdn-,jqlvzm=5,bsl=3,xpr-,hjj-,nz-,fh=1,bdt-,hgf=6,xx=2,sgpj-,kg=6,kk-,nbp-,kzstgd-,fl-,pnn=4,jfpc-,zsz-,rnq=6,jzm=5,bbk-,dbthvr=9,ntr-,nrmlq-,fdf=3,dx-,fl=9,cm=2,bsfp-,hsrcn-,rd-,gc=7,klhc-,nxv-,cd=8,xk-,pk=9,bm=4,cntg-,ktq=5,vjk=1,qxdjq-,mfd=3,lslg=1,zz-,brt=5,fjjs-,qjphmx=1,qnjqrc=8,nhkh-,nrmlq=6,lnq=5,npq=2,sg-,vdmd-,mvj-,kkn=9,tjlb=9,vstm=6,bkv-,mj=8,dc=4,sggqk=3,rms=6,pzd-,gxh=8,gc=1,tm-,ml=8,kbt-,kk-,fg-,jm=3,pcg=7,zzpzjc=9,dr=6,rq-,lsf-,qh-,fdf=3,lnq=7,gc-,trdj=8,tfnv=1,ggz-,sbt-,fq=5,kdgcf=1,lfn=1,nk=7,kxd=4,nd-,bfnpkj=6,lvrn-,rsv=2,mtz=8,dx-,br=2,cf=2,pxsx=1,pds=7,kzstgd-,sn=9,hlj=2,ng=6,ghd-,dkp-,qbcz=3,jpxg=1,fls=8,rdv-,sp-,mdn=3,fth-,cs=1,bd=1,fh-,qtvpz-,lc=1,lqnfnv=2,hl-,gng-,mn=6,qrc=9,sbt-,hf=4,hzv-,ssrn-,djtnn-,th=5,lsf=3,vdmd=9,cm=9,qjphmx-,gszr=3,nz-,ssbf-,xn=2,nzss-,vb=9,zh-,mb-,cx-,rd=4,cn=8,vnc-,vql-,gtftvc=7,nxh=1,mjz-,nll=8,hgf-,hrv-,spq-,shb=8,qh-,qlkh=7,nxh=9,qc-,bsx-,dhhfxb-,tqs=4,dr=2,qzqc-,ddbzd-,qlrl-,vhz=8,vtf=3,bg=1,fsxd-,jpq=7,jzm-,pzr-,dv-,cqt-,hn=4,cxh-,lnq=1,rxp=4,dxf-,fd=3,nj=7,tdn-,smhk=9,sqnq-,hslq=1,fjx-,ll=6,bbdl-,jqc=3,clmkkc-,rfx=6,bnz-,vz-,hjjl-,zdbpr-,bsl=5,bsfp-,nk=1,kspd=4,cm=1,jcz=3,gn=1,qkt-,kxd=9,gxpq=1,mldd-,mdn=6,ztplk-,cd-,mzgdd=5,vkph=5,hbl=2,fn=4,fx-,jkf-,tf=4,ddtp-,tj-,dc-,klb=4,sgpj=9,xn-,clmkkc=7,kcz-,bbk=4,zh=8,dc-,ccvt-,shn=3,jqc=1,bkckz-,skv-,pb-,slq=1,klhc=3,flc-,vz-,kcz=4,rxp=3,snt-,xdfj-,vvfxlc-,dx-,hsrcn-,xqftjd=4,cqt=3,lks-,db=1,rms-,lcxp=6,xs-,qdvl=8,hsrcn=5,dtmqg=6,sz-,djt-,kld-,nfnrp-,brqs-,ng-,tv-,cs-,hn-,nscj-,sdjk-,dn=5,jqc-,tv-,xz=9,mzt-,rj=3,dgzb-,rms=8,tbfhq=8,sgpj-,bhhgl-,qlkh=6,gddx-,dn=2,vvfxlc-,ckz-,txlk-,lfn-,bdt-,td=3,hv=6,ct=1,bhhgl-,flc=5,spq-,lcnq=1,lks=5,gch=2,qtvpz-,hrv=3,gs=2,btm=8,kt-,td=9,txcp=3,nvbg=2,qbcz-,kshvc-,db=3,dtmqg=9,tlbnq=8,dhp=6,ld-,gsgp=8,ml=1,bsl-,chks-,qfr-,txlk=9,bct=6,nvbg=3,gszr=9,mf-,phv-,kdgcf-,cx=3,rnq=8,hcq-,dhkfs-,dn-,dbthvr=3,lvrn=2,gszr=9,phv=3,gszr-,vjx=2,zl=3,zzl-,mzgdd-,dhkfs=3,bn-,gdd=8,tqn=5,ztnxv-,dcq-,vks-,jgbfh-,mzgdd=8,dpg-,nsh-,ssrn=6,jbd=5,kpxkh-,hzv=5,fbbc-,tm=9,jz=9,lnzjnj-,kg-,hs=8,hds-,dnt-,br=9,tjcrf-,qlcjv-,qvx-,gnv=6,hk=3,lnzjnj=3,ssrn-,hcq=6,vnc-,lfn=6,zh-,ct-,ccj=8,qpkj=5,sqvp=1,tjcrf-,ps=3,dr-,rdv-,vtf-,bvs=7,xddtrm=6,qlrl=2,rc-,pbr-,npq-,gvdm=7,pp-,zgfr=9,svkscd-,kxd-,dtmqg=1,cxh-,hzvkt=8,gxh-,gn=1,pbr=5,bfn-,mv-,ptm=7,snt=4,mvtrs-,nsk-,zfm=8,hjj-,vx-,nfnrp-,hl=5,nkrzr-,zz=9,sdjk=8,cdzz=9,gx=6,mn-,rjtr=2,mk-,qnjqrc=7,hds-,fls-,dl=5,cb=2,zdbpr=6,fth=4,hxp-,jk-,jcz=2,zdp-,thmdf-,qc-,txn-,cb=6,xpr=2,bsl=9,zdp=4,qfr-,bbbmn=5,xn=9,nll-,tbkk-,cn=8,cz=4,cjzkt=7,qg-,sz-,klb=4,ng-,hs=3,fn=6,ct-,hs=5,lts=2,cm=4,zgfr-,vqg-,qdvl=8,sn=1,rj=3,bfn-,jm=8,gvdm=8,dhkfs=2,sggqk=8,dv-,hzv=2,xdz-,nxh=6,rnq=6,nxv=2,zzncf=1,rsv-,tbfhq-,fgfnm-,hhb-,jlpp-,jqlvzm-,mskdr=7,qlg=3,rjtr=1,xg=7,kb=2,rfx=5,tjlb-,zzncf-,ns-,zl-,dmc-,sgpj=8,dhhfxb=4,cgq-,mqj=5,dkc-,lrv-,xv-,qpkj-,dtmqg=4,fq=8,md-,tf=3,mdn-,jkf=1,fx-,nhkh=6,mb-,pxbnl-,zz=5,xz=2,lsf=1,nk-,gvl=5,lmj-,mldd=3,ks-,rxkb=1,ztplk-,hf-,nmg=7,qlrl-,nfnrp=3,bqn=9,fdf=8,sr=8,rxp-,bbdl-,mzgdd-,dmc-,lz=7,fdf-,kh=1,nzss-,klhc-,zcf=3,fdf=1,fh=7,pp=8,sqvp=6,lnq-,cqt=6,xhf-,jbd=7,nscj=7,gng-,ggz-,nvbg=8,zfm-,th=6,spf-,tssz-,ckjg=8,cbv=7,ssbf-,hlj=5,crr=5,nxv-,bnz=8,pxsx-,nsk-,xddtrm-,cl-,xbdqh-,pljt-,rzrt=9,cg=5,sr=9,kspd-,nhkh=7,ccvt-,bf-,zk=6,qh-,xf-,mfd-,zzncf=1,gtp-,svkscd=4,mlzmcc-,fd=7,flc=3,rxp-,djt=5,pxbnl=9,xz=2,gv-,vx=8,zdp-,ntr-,slq-,ddtp=6,sggqk-,hds=7,fdf=8,qdvl=3,sqvp=7,txcp=2,lbcc-,rjtr-,qd=3,lcxp=9,lsf=8,gx=4,xv-,qxdjq-,ntvq-,lmj=9,kd=2,shc-,sln-,gx=2,ks-,xqtx-,gvdm=1,xn=5,rq-,cd-,gb=2,bf-,vd=3,pbr=1,ljbs=9,tqn-,nrmlq-,ft-,mdn-,nntzjr-,kmq=8,lj-,shb=7,sg=6,bdt-,spf-,mzgdd-,fsrmnb-,lnq-,rms-,cg=7,xqt=6,ck=7,sgq=8,db-,gnv=3,bf=4,qzqc=3,cqzl=5,mt=2,zk-,nj=1,fth-,bgbd=4,kc-,tfnv=8,vdmd=9,kfqkc=7,sln=9,lmj-,pxm=7,kqzb-,lc-,shc=2,vx-,tlbnq=8,mb-,skv-,nxh-,cqzl-,cl=4,kdgcf-,zcf=2,xs-,kn=1,nkd-,vb-,ssrn-,hlj-,qjphmx=8,ck=6,dtd-,lvrn=3,vhz-,nxxr=1,ccvt-,ng=7,xqftjd-,qzmc=2,stk=4,shb-,pnc=4,qnjqrc-,ntr=1,ks-,qh-,dx-,pbr=8,pq=6,kcz-,nntzjr=2,fsrmnb-,gsgp-,jk-,vzvb-,hv-,kbjm-,brqs-,xn=3,nbp=1,ml-,kz=9,kd-,jv-,zgtn-,ccvt-,vstm-,rsv=6,vv-,pzr-,bfnpkj=7,jmg-,jzm=8,pt-,pds-,gs-,dl-,jz-,mvtrs-,bc=6,ssbf-,pds-,nj=8,nzss=7,hhb-,kxd-,mfd=7,bdt-,jtpk=6,grnnd=1,hd=1,jbd=6,dx=6,shn=2,bct-,zcf-,vj=6,pt-,gxh-,vz=9,vxk-,kbjm-,gxpq-,jbd=3,lnzjnj-,rpcjf-,ks-,cz=8,xck=1,dpg-,jsbh=2,kp-,nkrzr-,hf-,gxpq-,kld=4,hn=9,gng-,ntvq=4,dz=1,qlg-,dbc-,txn-,djtnn-,kcz=4,zdbpr=7,tfdk-,tssz=5,mb-,jlpp-,cjzkt-,dbc=3,lf=4,lfl=9,dhhfxb-,vzvb=6,pdtzqg=4,lrv-,jqc=7,kld=6,gxpq-,jlpp=3,qkc-,fpl-,fh-,tf-,hrv-,qb-,jgbfh-,tznc=3,ng-,th=9,dl-,mvtrs=8,lzdds-,sz-,zl=6,dr=9,nntzjr-,dnt=6,gx=4,pds=6,zqlr=6,sn=6,qf-,bsfp=6,stk=8,qmbl=5,nprpc=6,vdmd=1,tz-,cqt-,rs=2,zdp-,vstm-,dbthvr-,mf-,kxd=1,ssx-,xdfj=8,vks=8,fgfnm=1,fpl-,vkph=4,dmc-,pt=3,tf-,bhhgl=2,qf=2,hbl=7,kg=1,lcxp-,nxz-,tv-,jgbfh-,tjlb=9,xv=9,klhc-,cfhc-,sggqk=9,btm-,ccvt=2,qvx-,db-,lc=8,sgpj=1,kln-,pq=4,lqnfnv-,rpcjf-,qlrl-,frr-,qzqc=6,mk-,grnnd-,kn=3,st=7,lnzjnj=7,sv=2,xz=1,kt=7,crr-,vjx=4,bhhgl=7,nll-,dz=3,vj=2,lks-,hnvl-,kp=6,lks=1,kqx-,kd-,dl=9,jtpk=3,sp=8,tj-,pk=9,brqs=6,bm-,cntg=7,nxv=8,fpl=4,tm=8,gdd=3,trdj-,brt-,nz=3,lcnq-,smhk-,qpbkdg-,vv-,stk=9,kbp=8,xqftjd-,npq-,gpprmx=8,xn-,flc-,jbd-,fg-,dbc-,jpq-,qj=3,qnjqrc=6,bd=3,hs-,fjjs-,pcg-,xdhj-,qpbkdg=8,tqs=8,cl-,pp-,dn-,dbv=1,nxv=3,vb=4,frr=3,svkscd=4,kqx-,kc=1,kk-,jgbfh-,xqftjd=8,dzffd=5,zzncf-,gnv=5,md=3,lnzjnj=8,xs-,mdn-,nhkh-,ls-,dnt=3,xsh-,th=6,fg=9,dl-,kqx=6,klb-,vd-,dnt-,chks-,fl=1,kc=3,dcq=8,fjjs=2,hjjl-,hf=9,sz=6,kk=5,qzmc=4,pp=6,qlg-,nsh=9,ks=7,mtz-,sqv=9,zk-,hrv-,fl=6,cg-,pxsx-,rpcjf-,tlrg-,zzl=7,jmg=4,kls=6,kls-,djt-,gxpq-,kp=6,qmbl-,vxk-,kmq=2,qkc=5,cqt-,cjv-,kn=6,qnjqrc-,ztnxv-,qj=9,xn=3,xsh=6,sf=1,txcp=5,ktq-,cxh-,nsh-,sqz=6,zh-,pxsx-,bsfp-,mfjxq=1,kn-,vjk=2,cz=1,tznc=4,jcp=9,mj-,phv-,cntg-,qlrl=4,tfnv-,mldd-,ck-,xpp-,fx=6,cs=6,zl-,jqc=2,lfn=7,ndrc=3,xpr-,gng-,dhp-,dmc=3,txcp=1,hzv=4,brqs=1,pxbnl-,br=3,sggqk-,gxpq=3,txlk-,mth-,xn-,bqn=2,vhz-,hz=8,zjk=2,zzpzjc=8,vz-,rfc-,nsh-,zqlr=3,nxv-,hds-,frvcs=9,gb-,zzl-,lf=9,mt-,dhhfxb-,jlpp=1,phqrf=8,nbp=2,cjzkt-,hs=6,rls-,jzm=3,mldd=7,qdvl-,dpg-,gc-,thmdf=5,jkf-,vtf=6,hrkf-,zgfr-,ztplk-,qxdjq=6,jfpc-,db=6,dr=7,kqx=3,crr=5,jv=8,lqnfnv=6,lfl-,ggz=8,vtf-,ml-,bbbmn=9,ssbf-,sqnq-,fv=2,dtmqg=1,hlj=4,ggz=8,qfr-,qlcjv=9,bkv=1,tznc=7,nz=9,ll-,txcp-,kqc=1,tm-,txcp-,ht=8,sqvp-,dbthvr=4,lsf=9,hlj-,qpt-,mn=4,qb=1,ntvq=2,pcg-,trdj=7,nd-,kshvc-,cf=2,spf-,fd=1,tjcrf-,qg-,hnvl-,kmq=8,nprpc=8,rfc-,scxnnl=4,bbdl-,gjn=8,cb=4,zr=8,gvl=2,lfl=5,rnq=7,kb=5,kzf=6,sdjk-,mvtrs=1,qrc-,fd-,qlrl-,zsz-,fq-,zdp-,kld=4,rbmvt-,nll=7,fn=1,vql=6,lz=4,mskdr=6,dp-,gtp=9,jmr-,cb-,jzm-,dr-,vql=9,qh=8,dr=7,kmq=7,sqnq-,sgq=2,md=1,mk-,mzgdd-,sgq=4,nxz-,hjjl-,pds-,mzgdd-,fd-,hrv=5,dgcs=6,ggl=1,vd=7,vv-,tl-,dkp-,kqzb=3,cgq-,gxg=6,xck-,bgbd=3,mtz=3,hxp=9,shb=8,vrb=8,hn=7,sqvp-,fbbc-,jzm=8,nq=8,rdzc-,lmfp-,zdbpr-,fx=6,jhm-,qj=4,kshvc-,lmj-,bc=5,gh-,ckjg=7,sn=2,jcz-,fh-,lnq-,nkd=2,hcq-,nsk=9,kln=5,fx-,tlbnq=6,dhkfs-,mjz=9,mth-,pxm-,gh-,grxkd=8,lks-,zqlr-,lcnq=6,kbt-,rls-,fl=7,sf=5,mldd=9,klb=3,trdj-,kzstgd-,cd=9,cm=6,jtpk-,jsbh-,clmkkc-,dpg=6,pk=2,td=2,nkd-,lcxp-,jlpp=8,dhkfs=5,zcf=4,cfhc=9,shc-,rfx=6,mvj-,jbd=8,fbbc=1,bsx=8,sqvp-,hgkh-,frr=1,clmkkc-,gxh=1,tbfhq-,qlg-,xqtx-,kln=3,gdd-,ggz=9,dgcs=3,txcp-,gjn=5,lrv=4,ck=2,mskdr-,gddx=4,gv=2,ptm-,gnv=1,hd=1,mfjxq=5,spf=5,mdn-,fjx=1,lts-,kzf-,mldd=4,rms=2,pnn=2,rc-,gxg-,nz=1,cz-,rd-,bsx-,pb=1,spf-,kkn-,xck-,jzm-,jz=1,kt=4,bgbd-,kld=5,tm=9,gdd-,vmml=9,zsz-,ns=1,sz-,gnv-,cdzz=8,fgfnm-,nl-,qpbkdg=4,spq=8,jcz-,zm=9,mf=9,vmml-,xn-,nkrzr-,grxkd-,ckjg=6,rfc-,sqv=2,zqlr=4,xf=4,lmh=6,ntr-,rc=4,dnt=5,grxkd-,cd=5,lfz=3,shb-,kkt=9,nhkh=4,qdvl-,nxh=9,mqm-,lh=9,qvx=7,pt-,ktq-,fpl=8,hzx=9,qbcz=2,jzm=5,pds-,pl-,zm=4,cm=6,tqn-,vk-,gch-,lmh-,rdv=7,kz=5,lfz=6,rs=4,tfnv=3,qtvpz=1,qrc=2,mzt=4,qzb=8,sgpj-,tx=9,mzt-,cfhc-,mj-,jmg=9,cxh-,jzm-,jcp-,lts-,npq-,jcz-,sz=9,nj-,mqj-,slq=9,hjjl-,djt-,xtd=6,fjx-,vdmd-,dhhfxb=8,gxpq=8,xdhj-,rfc-,hgkh=3,tbfhq-,svkscd-,bsqst-,rms-,qc-,lmfp=4,grxkd-,jpxg=6,qfr=8,lslg=8,mldd=4,jm-,bgbd-,cm=8,hslq=3,vmml-,mshz-,fjjs=5,bsqst=3,hf-,cm-,ccvt=7,fg-,xqtx=6,rzrt=6,bvs-,xs=6,frr=2,mqm=7,ktq-,hn-,kc-,dzffd=8,br=7,txcp-,ssrn-,bn-,cf-,jqlvzm-,gpprmx=8,lsf=4,nl-,xs-,lj=2,qrc=4,dbv-,kzf=4,mv=4,fls-,gddx=8,bbdl-,rfx=4,cr=3,tdn-,qbcz-,dz=8,sqv=1,ntr-,hbl=5,pcg-,kbjm=4,spf=8,mshz=7,nz-,txcp-,gjn=4,kzf=4,hn=1,qd=2,fd-,bf-,gnv-,cdzz=5,kzstgd=5,hxp-,zqltz=2,xsh-,tz=4,hzvkt-,lcnq-,mj=8,qmbl-,fl-,skv-,xbdqh-,mshz=7,gddx-,tl-,gv-,hn=8,tx-,lfz-,nl=5,hqb=6,kz-,zjk-,kcz-,nkrzr-,cxh=8,kqzb=3,zm=5,dl=9,snt=8,gx=9,frr-,sg-,lcnq=1,hn-,mzgdd=5,bkp=8,zgtn-,kn-,mdn=5,ktq=1,fq=2,kshvc-,jcz-,hsrcn=2,bct=8,jm=5,vzvb-,jcp=6,ks-,qb=4,lfz=4,qlkh=5,tj=2,vvfxlc-,jv=2,zm-,thmdf=3,dhp-,kqc-,hf=6,gch-,nscj-,gxh=2,kh=9,sqnq-,vdmd=6,vmml-,qj=4,dbthvr-,qlg=3,hslq=2,fls-,ntr=9,td=6,scxnnl-,db=2,st-,brt=4,kbjm=6,ccvt-,mzgdd=6,qrc-,jfpc=5,zzncf=8,grxb=3,bhhgl-,cfhc=2,ddbzd-,bvs=2,tl=4,qhsvrp=8,ljbs-,jcz-,fth=1,pzd=5,ct-,kkn=2,vfqj=4,jmg-,nj=7,zmf-,clmkkc=5,gtp-,sqz-,gddx=6,ns-,tjlb-,fg=1,qg-,gng=1,jqlvzm-,hn=8,jbd-,vv-,vk-,lvrn-,djt=7,clcg-,mtz-,qxdjq-,qps-,gnv=4,vnc-,rdzc=1,rbmvt=8,zzncf-,th=3,rfx=4,pnn=4,cxh-,qlcjv-,ck-,cn=1,rrmt=7,bsx=6,dhp=5,fbbc=3,mvtrs-,vzvb=4,zsz=5,bct-,zv=7,ztnxv-,hzx=6,kzstgd=9,grxb-,bnz-,dpg-,jpxg-,gxh-,chks=1,gs-,smhk-,bgbd=1,hslq=5,btm=6,kln-,jv-,dbv-,dzffd=4,sqv-,ssx=7,bsqst-,dcq=4,qfr-,hb=6,qmbl-,rpcjf=3,qhsvrp-,stk=1,qg-,cjv=2,ls=7,qjphmx=2,lfn=6,vdmd=6,kp-,bn-,nprpc=1,qpt=2,qlrl-,gx-,bn-,ntvq-,hhb=2,zzncf-,sbt=1,frr=6,fn=7,ll-,gxh-,jtpk=3,hhb=7,bct-,klb=1,spf=8,vql=2,zfm=3,mqm=6,kzf=1,xdhj=5,hb=2,djt=6,rls-,nvbg=8,zl-,qmbl-,qkc=7,flc-,jtpk-,mshz=2,lbcc=8,qj-,rbmvt=2,cm-,gnv=3,zzpzjc-,frr-,bg-,kh-,vrb=4,fn-,ld=8,kzf=3,zqltz-,rfx=8,gb-,fdf=2,vb-,vz=7,sdjk=1,bfn=2,vzvb=7,grnnd=9,zjk-,rg-,dz=8,vks=5,xqftjd-,fbbc-,ml=3,kld=9,rsv=9,nkrzr=6,hzv-,ljbs-,slq=6,zv=4,tbkk=2,jcp=3,qzmc-,dcq-,bf=5,grf=2,pl=3,bd=5,qzb=9,pzr=8,rd=4,dl-,dbc=1,lslg=7,fx=4,qf-,mzt=7,pzjlk=7,zqltz-,dc-,pcg=6,bhhgl-,zl=7,rd-,dkp=2,xpp=8,qbcz-,gx=2,sqvp=4,pzd-,rxkb=1,jzm-,qlkh=5,brt=4,dkp=5,sqvp-,lbcc=2,jhm-,kshvc=7,qlcjv-,dkc=4,sgq-,ckz-,tj-,tqs-,gc=3,zjk=3,fx=4,rq=3,jz-,hd=7,dnt-,dtd=3,sg-,lmh-,sqz-,qkc-,kshvc-,cqt=4,hgf=4,skv=3,ll-,zk-,xx-,kqzb-,kp-,jgbfh=1,kqzb=8,jz-,bnz=2,xh=3,qc-,xx-,zz-,ztnxv-,bsl=4,hlj-,nz-,vx-,mskdr=3,kls-,rfx-,ndrc-,mjz-,hlj-,txn-,mzt=2,jhm=2,zm-,bsfp-,bc=8,lnzjnj=9,rg-,kmq-,fl=7,mj-,txn-,zmf=9,zgfr=2,vnc-,kp-,gsgp=7,kfqkc-,xbdqh=1,dtmqg=5,djt-,dl-,fsxd-,snt=7,vj=8,zzl-,tlrg=7,bgbd-,zcf-,scxnnl-,rs=8,qb-,lf=6,bkckz=2,gch-,ccvt=4,zzl=2,jqlvzm=2,hjj-,ls-,nq-,shn=9,fth=8,bm=4,lfl=5,nprpc-,ddtp-,pxbnl=9,jqlvzm=1,xk-,dz-,vjx-,vrb=8,gxg-,nfnrp-,cfhc=8,gxpq=7,kbt-,kcz=6,kcz=7,dpg=3,tbkk-,hrkf-,tm-,cx-,ccj=6,mb-,qb-,qh=7,qdvl-,rxp-,ntr-,hd-,gddx-,cd=4,fpl-,mfd=5,gtp=6,fsxd=1,pzd-,hd=9,nz=1,vtf-,qbcz=3,mskdr=7,xck-,cz-,sp=9,qps-,grf-,kbjm-,dcq-,nrmlq-,nq-,hslq=4,mvtrs=4,tqs=5,ns-,rxp-,fjjs-,kbp-,gnv=9,bn=4,xh=9,sdjk-,cgq=1,str-,mb=7,snt=6,nrmlq-,pbr-,kn-,pk-,qj=5,thmdf=4,jlpp=4,txlk-,qcx=4,jk-,lts-,rsv=3,brt-,hzvkt=4,svkscd=3,sg-,hgf=7,hnvl=1,zjk-,bf-,pq=5,qh-,zgv-,bbk=9,mshz=9,dp-,thmdf=3,kqx-,lzdds-,vjk-,zzl=5,phv=6,qkc=7,ps=1,mlzmcc=2,kg-,hf-,qtvpz-,vfqj-,qnjqrc-,dkp=2,fg=2,nll-,grxb-,lrv=5,sv-,nkrzr-,tj-,ptm-,cdzz=5,zfm-,vvfxlc=6,dgcs-,jtpk-,vj-,bd=2,vnc-,gpprmx=3,cxh-,jlpp-,sgq-,vzvb=9,qb=7,xddtrm=4,gx-,crr=2,frr=2,brt-,rms-,zfm-,hslq-,pxsx=5,cz=5,bc=6,dhkx=4,rq-,dkf-,shn=6,bct-,lks=6,ll=4,qf-,jcz=8,dhkx=1,zmf-,zcf=7,sn=6,vjk-,vql=1,zdbpr-,qmbl=3,fh-,nmg=9,rg-,frr=1,mth=9,gxpq-,nd-,lmh=5,jm=7,bc-,bg-,gxg=9,qdvl=2,cr=8,jmr=1,zjk=1,cs=1,vstm-,gddx-,qh-,brt-,rzrt-,jcz=8,fpl-,ct=4,qpbkdg-,hqb-,hrv=2,hnvl=5,cs=2,qhsvrp-,jpxg-,vx-,tdn=9,sqvp-,nkrzr-,btm-,zgfr=9,jpxg=4,vjk-,vql=1,gtftvc=4,grxkd=8,bkp-,jcp=8,dtmqg-,cqzl=2,nz=9,fsxd=7,hzv-,bbdl=1,ztplk-,pds-,ls-,pzjlk=1,vnc-,cd-,nbp-,tfnv-,nsh-,zqltz=3,ll=5,hlj-,zv-,mvtrs-,zcf=7,dnt-,bqn-,mldd-,rs=7,pcg=8,kbp=6,jpxg=4,nfnrp-,bbk=9,ntvq-,bfnpkj-,crr-,ggz=8,dkf=1,jzm=2,nxxr-,dxf-,ll-,rls-,mv=3,ggl=2,hds=6,gszr-,qzb-,skv-,ft=3,bg-,rc=1,nk=5,dkc-,dl-,kpxkh-,ndrc-,txlk-,sg=3,dhp=7,phqrf=2,ckjg=3,hjjl-,fh=4,mqj=5,ckjg-,xv=2,gng-,hzx-,zk-,mf-,dkf-,bbbmn=9,mb=5,mf=6,bkv-,kkn-,fq-,zfm=2,kdgcf=6,rs-,gdd-,lmh=3,hxp=8,xsh=8,dpg=3,kfqkc=2,xv=6,nsh-,pxbnl-,gxh-,rfx=3,pb=2,gc=3,nxv-,qpkj-,spq-,xs-,kbjm=9,jkf=7,dcq-,ckjg-,brqs-,md=3,fd=1,qjphmx=5,ft=8,zcf-,jpq=9,hcq=2,th=6,zl-,dkc=8,ps=7,fsxd=2,frvcs-,spf-,dxf-,rxp=4,mf-,lcnq=6,dkf-,xs-,hjj=9,hv=7,fv=4,zh=9,hjj-,qj-,dtd=6,jm-,cgq=3,rxp-,cx-,tznc-,scxnnl-,lmfp-,ssbf=9,hf=4,zdp-,pbr-,bc-,kn=5,zfm-,xck-,ckc=7,zzl-,pzd-,kbp-,kmq=9,rls=5,dbthvr-,dc-,qkt-,hzx-,bfnpkj=3,qzqc-,lj=2,kp=4,hrv-,qlcjv=6,bsqst-,kmq=6,jsbh=5,sgq=4,sqnq-,ns=6,dkp=4,rdzc=1,mvj-,hz-,kkn=4,gdd=5,qhsvrp-,dmc-,rms-,sdjk-,nkd=1,xz-,pzjlk-,dtd=8,dp=2,zsz=4,xpp-,hb-,dpg=7,znnns=1,ssx=5,hn-,dgcs=5,rxp-,vnc=6,bpv-,ck=1,pljt=4,vzvb=3,sdjk=3,dmc-,nz=4,tx-,cntg-,bct=1,cqzl-,qzqc-,hz-,xbdqh-,tj-,qxdjq-,hslq=3,kdgcf=5,nsh-,ck-,rj=8,mzt-,gtp-,ntr=2,vvfxlc-,lrv-,mskdr=9,gvdm=6,hv=4,ssrn-,lz-,zgfr-,kkt=7,ntvq-,rzrt-,hgf-,hsrcn=9,grxkd-,pbr-,lz-,kpxkh-,vv-,qj=3,mth-,kspd=8,hjjl=3,kn-,zdbpr=9,nj=6,bqn=7,txn-,jcz=5,kkn=1,zgv-,dhhfxb=6,mqj-,xqt-,jbd=9,tqn-,dl=1,frr=3,hjj=6,nj=8,qkc=9,lmj=3,qxdjq=8,ld-,th=8,sbt=9,qpbkdg=4,lrv-,dhhfxb=8,dhkx-,cb-,xn=3,nxxr-,zr-,kls=2,lcxp-,qhsvrp=7,br=3,kpxkh=7,pl-,sz-,gsgp-,klhc-,bgbd-,kkt-,hzv=5,zgfr-,xbdqh-,zr=6,zk=7,lnq=1,md-,fsrmnb=2,hqb-,pt-,hlj=4,ggz-,ct-,rjtr=3,gxh-,ljbs=4,zv-,xpp-,rzrt=8,xdz-,pb=7,sbt-,dbthvr=1,jzm=7,qjphmx-,bz-,gc-,dv-,mldd=8,gng=9,qvx-,gb-,vkph=7,rzrt=6,zl-,zgtn=1,dmc-,btm-,tjcrf=5,dchn-,txcp-,pt=5,pcg-,cjv-,rbmvt-,brqs=7,mzgdd-,kmq-,fdf=7,dbv=1,dchn=7,hnvl=3,kt-,lrv=4,pt-,ndrc=5,tlbnq=5,bz-,brt=6,gh=2,vx-,vd-,vrb-,tssz-,dkp-,sz=8,nmg=4,hz=1,bpv-,jsbh=7,hl-,gch-,npq=4,dbv-,qc=5,kbp=7,sqv-,hf-,gb-,md-,vk=5,ssbf=1,dl=8,gvl=5,xbdqh=8,bsx=2,lrv-,qf-,klhc-,nrmlq-,bg=2,gvl=4,fx=1,xdhj=4,vb-,rj=8,dr-,nhkh-,vb=5,xs-,gszr=3,cn-,shn=7,jfpc-,gs=5,sln=4,tv-,kqx=4,vkph-,kn-,pzjlk=1,shn=9,nkd-,hs-,dmc=6,bd=8,dxf=3,tbkk-,tssz=9,st=6,vstm-,rxp-,rfc-,bsfp=6,qlg=6,lmfp-,zgtn=6,ng-,qvx=8,rnq=5,qkt=3,nkrzr=8,kmq=1,tx=2,kbjm-,cqzl=6,pzjlk=6,sln=8,qcx=7,xqt-,nscj=9,pxsx-,chks-,tlbnq-,zqltz=3,gb=4,gsgp-,qmbl-,qkt-,qc-,nxv=5,pt=1,gvdm=1,xh-,fx=7,vnc=7,kp-,qpkj=3,rxkb-,gng=2,cbv-,tf=7,dzffd-,sg-,hk-,mqm-,btm-,lmj-,md-,xck=4,kkn-,sln-,lz=3,cqzl=9,xck=5,zzl=3,bqn-,sggqk=9,grxkd-,ntr-,hnvl-,gch-,qmbl-,kln=2,gs=8,tlrg=9,slq=8,kmq-,xh-,hs-,qpt-,rrmt-,qkc-,sf=7,jhm=4,bkp-,qxdjq=7,snt-,ddtp=1,hjjl=3,fjx=8,qcx-,pl=6,jpq=4,stk=4,kc-,gs-,kzstgd-,pzjlk=7,fq-,jzm-,mzt=9,tz-,rls-,kxd=5,th=9,sv-,cqzl-,lcnq=1,zmf-,tlrg-,qrc-,kbp=1,djt-,hsrcn-,xx-,thmdf=7,gnv-,mldd-,mtz-,dl=1,lj-,qlkh-,lrv-,cb=8,pk-,gx=9,vdmd=2,cntg=2,zzncf=2,fjx=3,bf=5,kqx-,qpt-,gxh=8,sdjk-,nxz=1,vks=5,bg-,mzgdd-,sp-,dhhfxb=7,kcz-,fx=7,cxh-,ssx=6,bbk=2,sp-,tx=5,frr=3,sqvp-,zgv-,tl-,fsxd-,db-,cf=1,kbjm=5,nfnrp-,rrmt-,fjx-,ggl=3,mf-,rms-,ztplk=7,ssx=1,mqj=8,xs-,gvdm=7,kqc=4,bbdl=1,xqtx=5,gtp=3,trdj=4,sln-,dbthvr=8,bz-,dr=5,gvl=2,dr=2,gtp=3,vb=7,nfnrp=7,sz=6,qkc=6,cg=2,hd-,kmq=1,dchn=7,bkckz=2,hlj=2,ccj-,hz=7,ckjg=2,gpprmx-,zgv-,shb=5,qzb=1,spq-,mlzmcc=1,fdf-,qps=6,hzx-,sqz=1,bg=8,tssz-,lfl-,frr-,vvfxlc=1,pljt=2,txn=4,xbdqh-,ck-,xk-,frr-,bbk-,gh-,lmh-,ld=1,grnnd-,jv=9,lqnfnv=5,jcp-,gszr=5,ssrn=9,gdd=6,ckc-,cb=7,lfn=4,fsxd-,mb-,hrv=8,klb=9,cdzz-,klb-,tbfhq=3,rxkb-,vdmd-,cfhc-,zzl=4,qpt=7,ls-,cz=6,kt=1,xx-,kkn-,bg-,tlbnq=6,bhhgl-,kqx-,cjzkt=8,jgbfh=6,jbd-,qf-,hf=1,tm-,xtd-,xs-,mqm-,nz=2,xk=9,sgpj-,rnq=9,gszr=3,qfr-,ll=3,dxf-,tznc=8,gxg-,grxkd-,ct=8,lsf-,xdz-,ck-,sn-,qdvl=1,qmbl=9,mzgdd-,xx-,zsz-,fjjs=4,vvfxlc=4,gxh=7,qnjqrc=5,vhz=2,mjz-,ccj=1,mf-,hb-,vqg-,tx-,rsv=5,ndrc=7,txn-,gvl=1,sdjk-,ld=7,mb=7,qzb=4,gs=9,ns=1,mqm=4,zcf=7,tqs-,klb-,ld=8,md=3,ccvt=1,nhkh-,pnn-,cd=5,nd=5,rrmt=5,jfpc-,kn=8,qmbl-,flc=1,nk-,flc=1,ll-,cntg=9,cqzl=7,cxh-,mk-,qpt-,hzv=8,lnzjnj-,sp-,cqzl-,fd=2,vb-,kh=2,gsgp=5,sdjk-,kp-,jpq=5,xx=4,mlzmcc-,mth-,bn=8,xqtx=7,rrmt=4,xpp-,kg-,kmq-,vv-,pp-,zcf-,shc=9,ssx-,qzb-,gxg-,lsf-,qf-,mvj=5,cb-,lcxp-,ztnxv-,bm-,thmdf=5,vks-,tm=4,vkph-,nxxr-,gs=4,hzx-,sdjk=1,kspd=4,ntvq=6,pljt=9,zsz-,tv-,bm-,pxsx-,cn-,jbd-,fcs=7,kshvc-,vjk-,nj=2,lmh=1,tfnv=8,kls-,xtd=5,qpt=6,tx-,gxh=2,chks-,mzhdgc-,jmg=8,cz=2,tjcrf=9,tznc-,pxsx-,dv-,nxz-,dp=5,dgzb=7,pljt-,rjtr=5,zfm=6,kcz=1,zzpzjc-,txn-,dkf-,lf=2,bsl-,jqc=4,dgcs=2,lmh-,fpl=7,qxdjq=8,nrmlq-,hjj=8,dp-,mdn=5,vzvb-,mn-,xdfj=6,cx-,lvrn=1,rg-,zmf-,nsh-,ld=5,kkt=8,sp-,sg-,gszr-,vxk=5,mf-,kfqkc-,dbc=4,bbdl=6,tl-,xqt=6,qjphmx-,hsrcn=4,nscj=1,bkv-,pnc-,hlj=1,ll-,bm-,mjz=9,klb-,ntvq-,lqnfnv-,bsx=3,vxk-,sn=7,vjk=7,zzpzjc=7,zcf-,dhkx-,hgf=3,ck=8,lzdds-,bsfp=4,shb=1,lc=8,zqltz-,vrb-,dhkfs-,vks=2,nntzjr=5,jqlvzm-,bkp=7,mj-,ztplk=5,vstm-,lzdds-,phv=4,cgq=5,bdt=4,ckz=5,fsxd-,lmj=3,ck-,dhp-,lfz=2,sqvp=3,hrv-,xg-,lzdds-,nj=7,pzjlk-,kqc=8,pds-,dtd-,fd-,gdd-,jpq-,mk-,fth-,ddbzd-,phv=4,btm-,vrb-,cqt-,sr=5,qf-,ft-,bsx=5,fjx=4,cg-,ljbs-,lslg-,zjk-,cjv=9,qtvpz-,gnv-,td=8,cdzz=4,jm-,skv-,slq=7,tjcrf-,npq=8,nhkh=8,nxh=6,gb-,rfx-,hzv=3,cjv=5,nsh=4,sr=7,bsqst-,tfdk-,vjk-,ndrc=9,rdv=9,bbdl=8,gnv=9,hxp=8,txcp=5,hrkf-,jzm-,gh=1,zgv=7,bpv=4,grnnd=3,fbbc-,vx-,smhk=4,sqv-,dnt-,sn-,nzss=4,nsk-,pxsx=3,nprpc-,cx-,tz-,rls-,kcz-,hrkf=5,chks=6,xz=2,gb-,jzm=8,bbbmn-,cl=7,bpv=4,pbr-,tqs-,jcp=7,dl-,rbmvt=1,rs-,xqt=1,xddtrm-,lmfp=2,nxz-,crr=2,mshz=1,hslq=5,vrb-,tx-,vql=2,jhm-,vrb=1,dc=8,ft-,hbl-,tssz-,lslg-,bn-,lzdds=8,pdtzqg=4,ztplk=7,nsk=1,zm-,hrv=5,bsx-,dnt=5,mjz-,trdj=1,fh=8,sz-,hbl=5,lcxp=2,bdt-,gc-,qtvpz-,gxg-,lts=3,brqs=7,stk=7,tfdk-,nxxr-,jpxg=4,vrb-,gtftvc=6,zsz-,jhm=7,ft=5,dkp=2,qkc=6,vks=2,ccvt=1,pbr-,clmkkc=4,fth-,nz=4,pnc=3,kzf-,brt-,jm-,nsh=4,zv-,mskdr-,pk=7,vjx-,hds=2,vhz-,rfx-,qjphmx-,mzt=7,hgkh=3,rxp-,kk=1,hk-,mb=9,kshvc-,ccvt=1,qfr=5,mfd=1,spf=1,mshz-,dgcs=2,vjk=2,sln-,rs-,fv-,dx-,kqzb-'
/**** TEST */
--DECLARE @inp varchar(max) = 'rn=1,cm-,qp=3,cm=2,qp-,pc=4,ot=9,ab=5,pc-,pc=6,ot=7'


--SELECT  @inp
--DECLARE @CRLF varchar(10) = char(13) + char(10) ;
DECLARE @inStr varchar(max) = REPLACE(@inp,',','|')

--SELECT @inStr

/* Instructions table. */
DROP TABLE IF EXISTS #tmpInstructions
CREATE TABLE #tmpInstructions (id int identity, instr varchar(max), iLabel varchar(100), iBoxID int, iOperation varchar(5), iFocalLength int  )

INSERT INTO #tmpInstructions (instr)
SELECT value FROM STRING_SPLIT(@inStr,'|')


UPDATE #tmpInstructions
SET 
	  iLabel = SUBSTRING(instr,1,PATINDEX('%[^A-Za-z]%',instr)-1)
	, iOperation = SUBSTRING(instr,PATINDEX('%[=-]%',instr), 1)
	, iFocalLength = CASE WHEN SUBSTRING(instr,PATINDEX('%[=-]%',instr), 1) = '=' THEN RIGHT(instr,1) ELSE NULL END


/* LensBox table. */
DROP TABLE IF EXISTS #tmpBoxes
CREATE TABLE #tmpBoxes (id int identity, boxRow int, boxNum int, lensLabel varchar(20), lensFocalLength int, lensFocalValue int )

DECLARE @boxRowNum int = 0

WHILE @boxRowNum <= 255
BEGIN
	INSERT INTO #tmpBoxes (boxRow, boxNum)
	SELECT @boxRowNum, n
	FROM ( VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9) ) v(n)

	SET @boxRowNum = @boxRowNum+1
END

--SELECT * FROM #tmpBoxes
--SELECT * FROM #tmpInstructions

/*
Determine the ASCII code for the current character of the string.
Increase the current value by the ASCII code you just determined.
Set the current value to itself multiplied by 17.
Set the current value to the remainder of dividing itself by 256.
*/

DECLARE @loopCount int = 1
DECLARE @maxLoopCount int = (SELECT max(ID) FROM #tmpInstructions)
WHILE @loopCount <= @maxLoopCount
BEGIN

	DECLARE @thisValue int = 0
	DECLARE @codeStr varchar(20) = ( SELECT iLabel FROM #tmpInstructions WHERE id = @loopCount )
	
	WHILE 1=1
	BEGIN
		--SELECT @codeStr, @thisValue, @thisValue+ASCII(@codeStr), (@thisValue+ASCII(@codeStr))*17, ((@thisValue+ASCII(@codeStr))*17)%256
	
		SET @thisValue = ((@thisValue+ASCII(@codeStr))*17)%256
		SET @codeStr = RIGHT(@codeStr,LEN(@codeStr)-1)
		IF LEN(@codeStr) < 1 
		BEGIN
			break
		END
	END
	/* Which box does it go in? */
	UPDATE #tmpInstructions 
	SET iBoxID = @thisValue
	WHERE id = @loopCount

	SET @loopCount = @loopCount+1
END

/*
SELECT * FROM #tmpInstructions
SELECT * FROM #tmpBoxes
*/


/* Flatten #tmpInstructions. Get rid of DELETEs and rows that will be deleted. Allow rest of process to work normally. */
; WITH base AS (
	SELECT *
		, ( SELECT count(*) FROM #tmpInstructions ti2 WHERE ti2.iLabel = s1.iLabel AND ti2.id < s1.maxid ) AS idLT
		, ( SELECT count(*) FROM #tmpInstructions ti2 WHERE ti2.iLabel = s1.iLabel AND ti2.id > s1.maxid ) AS idGT
	FROM (
		SELECT iLabel, max(id) AS maxID
		FROM #tmpInstructions ti1
		WHERE iOperation = '-'
		GROUP BY iLabel
	) s1
)
, deletes AS (
	SELECT t1.id 
	FROM #tmpInstructions t1
	INNER JOIN base t2 ON t1.iLabel = t2.iLabel	
		AND t1.id <= t2.maxID
)

DELETE 
FROM #tmpInstructions
WHERE id IN ( SELECT id FROM deletes )


/* PROCESS INSTRUCTIONS INTO BOXES */
/* Loop through each instruction to find the operations */
DECLARE @loopInstr int = 1
DECLARE @maxLoopInstr int = (SELECT MAX(id) FROM #tmpInstructions)
--DECLARE @maxLoopInstr int = (SELECT MAX(id) FROM #troubleshootInstructions)

WHILE @loopInstr <= @maxLoopInstr
BEGIN
	/* Magic numbers here. 1 = Add 2 = Delete */
	DECLARE @operationType int
	DECLARE @iLabel varchar(20)
	DECLARE @iBoxID int
	DECLARE @iFocalLength int

	SELECT @operationType = CASE WHEN iOperation = '=' THEN 1 ELSE 2 END
		, @iLabel = iLabel
		, @iBoxID = iBoxID
		, @iFocalLength = iFocalLength
	FROM #tmpInstructions 
		--#troubleshootInstructions
	WHERE id = @loopInstr
	
	DECLARE @minBox int = (	
		SELECT min(boxNum) AS bn
		FROM #tmpBoxes b 
		WHERE b.lensFocalLength IS NULL
			AND b.boxRow = @iBoxID
	)

	IF @operationType = 2 /* DELETE -ish */
	BEGIN
		UPDATE #tmpBoxes 
		SET lensLabel = NULL
			, lensFocalLength = NULL
			, lensFocalValue = NULL
		WHERE boxRow= @iBoxID
			AND lensLabel = @iLabel

		/* NEED TO MOVE ALL EXISTING LENSES IN THE BOX DOWN TO FILL THIS NULL */
		DECLARE @thisRowBlankLabelID int = ISNULL(( SELECT min(id) FROM #tmpBoxes WHERE boxRow = @iBoxID AND lensLabel IS NULL ),99)
		
		IF (SELECT count(*) FROM #tmpBoxes WHERE boxRow = @iBoxID AND id > @thisRowBlankLabelID AND lensLabel IS NOT NULL ) > 0
		BEGIN
			UPDATE #tmpBoxes
			SET boxNum=10
			WHERE id = @thisRowBlankLabelID

			UPDATE #tmpBoxes
			SET boxNum = boxNum-1
			WHERE boxRow = @iBoxID
				AND id > @thisRowBlankLabelID
		END
	END
	ELSE /* INSERT -ish */
	BEGIN
		
	--PRINT CONCAT(@iLabel,' | ', @iBoxID)

		UPDATE #tmpBoxes 
		SET lensLabel = @iLabel
			, lensFocalLength = @iFocalLength
			, lensFocalValue = (@iBoxID+1) * boxNum * @iFocalLength
		WHERE boxRow = @iBoxID
			AND boxNum = ISNULL( ( SELECT boxNum FROM #tmpBoxes tb WHERE boxRow = @iBoxID AND lensLabel = @iLabel ),@minBox ) /* If a Label already exists. */
	
	END
	--SELECT * FROM #tmpBoxes WHERE boxRow <= 3
	SET @loopInstr = @loopInstr+1
END


 

----------------------------------------------------------------------------------------------------------------------------------------------------------------

--SELECT SUM(lensFocalValue) FROM #tmpBoxes WHERE lensFocalValue  IS NOT NULL



/* PART 1 */
--SELECT SUM(instrVal) FROM #tmpInstructions
/* 
Attempt 1: 515210 CORRECT!
*/

/* PART 2 */
/* And calculate that sum */
SELECT SUM(lensFocalValue) FROM #tmpBoxes

/* 
ATTEMPT 1: 273863 << TOO HIGH
ATTEMPT 2: 654095 << TOO HIGH
ATTEMPT 3: -349551 ???????
ATTEMPT 4: 246762 <<< CORRECT!! FINALLY!
Correct Answer: 246762 ???

SELECT 273863-246762
*/

/*
NOTES:
This one looks like a simple parsing and math operation.

Part 1:
First thing: The instructions are one single line, so I won't be dividing them into rows like I normally do. But to work with
this as individual rows, I split on "," instead of line breaks. After that, it was just playing with the algorithm to parse 
the string into the correct number. 

Finding ASCII value was easy, since there's a function for that. Then just multiply that value by 17, then use a MOD function
(%) to get the final value. Fairly straightforward. 

ATTEMPT 1: 515210 CORRECT!

Shockingly this one was pretty easy. 

On to part two. 

Part 2:
There we go. I was lulled into a sense of calm by the ease with which the first one was solved. I'm gonna have to read these
Part 2 directions a few times. 

....

OK, I _think_ I understand what he's asking for. First I'll build a temp table to hold my boxes and their slots, so I can
parse through the instructions and insert the lenses into the boxes. I'll still have to noodle on the instructions a little
bit to make sure I'm inserting mirrors in the right spots. I need to look at the Final Instructions to make sure there 
aren't any surprises. I know they're the same as before, but now they're handled a lot differently. 

...

OK, that was tedious. The instructions were very complex with a lot of steps that depended on the prior step, so I kept 
having to go back and add more to the query. I think I blew up Part 1 with my Part 2 answer, so I'll try to go back and fix
that later (probably). There are multiple loops happening, so I hope it doesn't choke on the Final Input Data. I guess we'll 
see. It looks like Test Data is working. Ha.

ATTEMPT 1: 273863 (13 sec) <<< TOO HIGH. :-(

So which edge case did I miss?

...

ATTEMPT 2: 654095 << TOO HIGH 

I knew that one was worse, but I don't see where I'm screwing this up. Time to really dig in. 

...

I found my error. When I delete a lens, I'm not moving the other lenses backwards. I need to account for that. 

...

When I UPDATE the boxes to remove a box, I can immediately find the id of that box I just moved, and replace the
boxNum with boxNum-1. Since I'm only moving one at a time, this works to fill in NULL rows. This should make
my calcs work now. 

Fingers crossed. 

ATTEMPT 3: -349551 ??????? I'm not even submitting this one. Where did I screw up this time?

...

There are some boxes that seem to have multiple Labels that should be overwritten. Looking at data...

ATTEMPT 4: 246762 <<< CORRECT!! FINALLY!

I added another block to delete all records from #tmpInstructions that would be deleted by '-' entries, then 
ran the rest of the script as normal. This took care of the empty spaces and incorrect rows causing bad
sums. 

FINALLY I'm done with Week 15. The second part of this one ended up being much harder (or more complicated) than
I expected. 

*/

