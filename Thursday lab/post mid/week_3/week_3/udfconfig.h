/*
 *
 * Copyright 2003-2011 ANSYS, Inc.
 * All Rights Reserved
 */

#define UDF_COMPILER 1

#define EOF (-1)
#define NULL (0)

#define const
#define register


typedef unsigned long size_t;

typedef long int64_t;



/* config.h */

#define RP_2D 1
#define RP_3D 0
#define RP_HOST 0
#define RP_NODE 0
#define RP_DOUBLE 0
#define RP_NETWORK 1

#define STRUCT_OFF(t,offset,type)((type*)((char *)(t)+offset))
#define STRUCT_REF(t,offset,type)(*STRUCT_OFF(t,offset,type))

#define DOMAIN_C(t)STRUCT_REF(t,0,Thread *)
#define DOMAIN_NOSOLVE_C(t)STRUCT_REF(t,8,Thread *)
#define DOMAIN_NOSOLVE_EXT_C(t)STRUCT_REF(t,16,Thread *)
#define DOMAIN_F(t)STRUCT_REF(t,24,Thread *)
#define DOMAIN_NOSOLVE_F(t)STRUCT_REF(t,32,Thread *)
#define DOMAIN_ID(t)STRUCT_REF(t,2128,int)
#define PHASE_DOMAIN_INDEX(t)STRUCT_REF(t,2132,int)
#define DOMAIN_N_DOMAINS(t)STRUCT_REF(t,2140,int)
#define DOMAIN_SUPER_DOMAIN(t)STRUCT_REF(t,2320,Domain *)
#define DOMAIN_SUB_DOMAIN(t,i)(STRUCT_OFF(t,2144,Domain *)[i])

#define THREAD_STORE(t,nv)(STRUCT_OFF(t,58552,struct store_struct *)[nv])
#define THREAD_STORAGE(t,nv)(STRUCT_OFF(t,856,void *)[nv])
#define THREAD_T0(t)STRUCT_REF(t,344,Thread *)
#define THREAD_T1(t)STRUCT_REF(t,352,Thread *)
#define THREAD_NEXT(t)STRUCT_REF(t,480,Thread *)
#define THREAD_SHADOW(t)STRUCT_REF(t,488,Thread *)
#define THREAD_ID(t)STRUCT_REF(t,792,int)
#define THREAD_NAME(t)STRUCT_REF(t,72,char *)
#define THREAD_N_ELEMENTS(t)STRUCT_REF(t,332,int)
#define THREAD_FLAGS(t)STRUCT_REF(t,796,int)
#define THREAD_SUB_THREAD(t,i)(STRUCT_OFF(t,576,Thread *)[i])
#define THREAD_SUB_THREADS(t)STRUCT_OFF(t,576,Thread *)
#define THREAD_SUPER_THREAD(t)STRUCT_REF(t,544,Thread *)
#define THREAD_DOMAIN(t)STRUCT_REF(t,848,Domain *)
#define THREAD_HEAD(t)STRUCT_REF(t,0,Thread_Head *)
#define THREAD_MATERIAL(t)(STRUCT_REF(THREAD_HEAD(t),138880,Material *))

#define NODE_COORD(v)STRUCT_OFF(v,24,real)


#define P_INIT_DIAM(p)STRUCT_REF(p,488,real)
#define P_INIT_MASS(p)STRUCT_REF(p,496,real)
#define P_INIT_RHO(p)STRUCT_REF(p,492,real)
#define P_INIT_TEMP(p)STRUCT_REF(p,500,real)
#define P_INIT_LMF(p)STRUCT_REF(p,508,real)
#define P_VF(p)STRUCT_REF(p,1528,real)
#define P_CF(p)STRUCT_REF(p,1532,real)
#define P_VFF(p)STRUCT_REF(p,1536,real)
#define P_DF(p)STRUCT_REF(p,1540,real)
#define P_DT(p)STRUCT_REF(p,60,real)
#define P_DIAM(p)STRUCT_REF(p,584,real)
#define P_T(p)STRUCT_REF(p,596,real)
#define P_VEL(p)STRUCT_OFF(p,572,real)
#define P_RHO(p)STRUCT_REF(p,588,real)
#define P_LMF(p)STRUCT_REF(p,604,real)
#define P_MASS(p)STRUCT_REF(p,592,real)
#define P_TIME(p)STRUCT_REF(p,600,real)
#define P_DIAM0(p)STRUCT_REF(p,536,real)
#define P_VEL0(p)STRUCT_OFF(p,524,real)
#define P_T0(p)STRUCT_REF(p,548,real)
#define P_RHO0(p)STRUCT_REF(p,540,real)
#define P_LMF0(p)STRUCT_REF(p,556,real)
#define P_MASS0(p)STRUCT_REF(p,544,real)
#define P_TIME0(p)STRUCT_REF(p,552,real)
#define P_Y_S(p)STRUCT_REF(p,356,real)
#define P_E_IMP(p)STRUCT_REF(p,360,real)
#define P_WEBER_IMP(p)STRUCT_REF(p,364,real)
#define P_CURRENT_LAW_INDEX(p)STRUCT_REF(p,324,int)
#define P_INJECTION(p)STRUCT_REF(p,448,Injection *)
#define P_EVAP_SPECIES_INDEX(p)STRUCT_REF(P_INJECTION(p),4232,int)
#define P_DEVOL_SPECIES_INDEX(p)STRUCT_REF(P_INJECTION(p),4236,int)
#define P_OXID_SPECIES_INDEX(p)STRUCT_REF(P_INJECTION(p),4240,int)
#define P_PROD_SPECIES_INDEX(p)STRUCT_REF(P_INJECTION(p),4244,int)
#define P_LAWS(p,in)STRUCT_OFF(P_INJECTION(p),164,int)[in]

typedef char UDF_Cache_Data[48];

#define MATERIAL_PROPERTY(m)STRUCT_OFF(m,128,Property)
#define PROPERTY_LENGTH 192
#define MATERIAL_PROPERTY_ELEMENT(m,i)((Property *)((char *)MATERIAL_PROPERTY(m)+PROPERTY_LENGTH*i))
#define MATERIAL_PROP(m,i)(STRUCT_REF(MATERIAL_PROPERTY_ELEMENT(m,i),4,float))

#define NW_CELL(n) STRUCT_REF(((char *)network+n*24),16,Network_cell *) 
#define NWC_T(n,c) STRUCT_REF(((char *)NW_CELL(n)+c*456),248,real) 
#define NWE_T(e) STRUCT_REF(((char *)nw_end + e*252),4,real)
