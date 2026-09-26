package com.google.android.gms.internal.measurement;

import java.lang.reflect.Type;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzc' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes6.dex */
public final class zzir {
    public static final zzir zza;
    private static final zzir zzaa;
    private static final zzir zzab;
    private static final zzir zzac;
    private static final zzir zzad;
    private static final zzir zzae;
    private static final zzir zzaf;
    private static final zzir zzag;
    private static final zzir zzah;
    private static final zzir zzai;
    private static final zzir zzaj;
    private static final zzir zzak;
    private static final zzir zzal;
    private static final zzir zzam;
    private static final zzir zzan;
    private static final zzir zzao;
    private static final zzir zzap;
    private static final zzir zzaq;
    private static final zzir zzar;
    private static final zzir zzas;
    private static final zzir zzat;
    private static final zzir zzau;
    private static final zzir zzav;
    private static final zzir zzaw;
    private static final zzir zzax;
    private static final zzir zzay;
    private static final zzir[] zzaz;
    public static final zzir zzb;
    private static final Type[] zzba;
    private static final /* synthetic */ zzir[] zzbb;
    private static final zzir zzc;
    private static final zzir zzd;
    private static final zzir zze;
    private static final zzir zzf;
    private static final zzir zzg;
    private static final zzir zzh;
    private static final zzir zzi;
    private static final zzir zzj;
    private static final zzir zzk;
    private static final zzir zzl;
    private static final zzir zzm;
    private static final zzir zzn;
    private static final zzir zzo;
    private static final zzir zzp;
    private static final zzir zzq;
    private static final zzir zzr;
    private static final zzir zzs;
    private static final zzir zzt;
    private static final zzir zzu;
    private static final zzir zzv;
    private static final zzir zzw;
    private static final zzir zzx;
    private static final zzir zzy;
    private static final zzir zzz;
    private final zzjk zzbc;
    private final int zzbd;
    private final zzit zzbe;
    private final Class<?> zzbf;
    private final boolean zzbg;

    public final int zza() {
        return this.zzbd;
    }

    static {
        zzit zzitVar = zzit.SCALAR;
        zzjk zzjkVar = zzjk.zze;
        zzir zzirVar = new zzir("DOUBLE", 0, 0, zzitVar, zzjkVar);
        zzc = zzirVar;
        zzjk zzjkVar2 = zzjk.zzd;
        zzir zzirVar2 = new zzir("FLOAT", 1, 1, zzitVar, zzjkVar2);
        zzd = zzirVar2;
        zzjk zzjkVar3 = zzjk.zzc;
        zzir zzirVar3 = new zzir("INT64", 2, 2, zzitVar, zzjkVar3);
        zze = zzirVar3;
        zzir zzirVar4 = new zzir("UINT64", 3, 3, zzitVar, zzjkVar3);
        zzf = zzirVar4;
        zzjk zzjkVar4 = zzjk.zzb;
        zzir zzirVar5 = new zzir("INT32", 4, 4, zzitVar, zzjkVar4);
        zzg = zzirVar5;
        zzir zzirVar6 = new zzir("FIXED64", 5, 5, zzitVar, zzjkVar3);
        zzh = zzirVar6;
        zzir zzirVar7 = new zzir("FIXED32", 6, 6, zzitVar, zzjkVar4);
        zzi = zzirVar7;
        zzjk zzjkVar5 = zzjk.zzf;
        zzir zzirVar8 = new zzir("BOOL", 7, 7, zzitVar, zzjkVar5);
        zzj = zzirVar8;
        zzjk zzjkVar6 = zzjk.zzg;
        zzir zzirVar9 = new zzir("STRING", 8, 8, zzitVar, zzjkVar6);
        zzk = zzirVar9;
        zzjk zzjkVar7 = zzjk.zzj;
        zzir zzirVar10 = new zzir("MESSAGE", 9, 9, zzitVar, zzjkVar7);
        zzl = zzirVar10;
        zzjk zzjkVar8 = zzjk.zzh;
        zzir zzirVar11 = new zzir("BYTES", 10, 10, zzitVar, zzjkVar8);
        zzm = zzirVar11;
        zzir zzirVar12 = new zzir("UINT32", 11, 11, zzitVar, zzjkVar4);
        zzn = zzirVar12;
        zzjk zzjkVar9 = zzjk.zzi;
        zzir zzirVar13 = new zzir("ENUM", 12, 12, zzitVar, zzjkVar9);
        zzo = zzirVar13;
        zzir zzirVar14 = new zzir("SFIXED32", 13, 13, zzitVar, zzjkVar4);
        zzp = zzirVar14;
        zzir zzirVar15 = new zzir("SFIXED64", 14, 14, zzitVar, zzjkVar3);
        zzq = zzirVar15;
        zzir zzirVar16 = new zzir("SINT32", 15, 15, zzitVar, zzjkVar4);
        zzr = zzirVar16;
        zzir zzirVar17 = new zzir("SINT64", 16, 16, zzitVar, zzjkVar3);
        zzs = zzirVar17;
        zzir zzirVar18 = new zzir("GROUP", 17, 17, zzitVar, zzjkVar7);
        zzt = zzirVar18;
        zzit zzitVar2 = zzit.VECTOR;
        zzir zzirVar19 = new zzir("DOUBLE_LIST", 18, 18, zzitVar2, zzjkVar);
        zzu = zzirVar19;
        zzir zzirVar20 = new zzir("FLOAT_LIST", 19, 19, zzitVar2, zzjkVar2);
        zzv = zzirVar20;
        zzir zzirVar21 = new zzir("INT64_LIST", 20, 20, zzitVar2, zzjkVar3);
        zzw = zzirVar21;
        zzir zzirVar22 = new zzir("UINT64_LIST", 21, 21, zzitVar2, zzjkVar3);
        zzx = zzirVar22;
        zzir zzirVar23 = new zzir("INT32_LIST", 22, 22, zzitVar2, zzjkVar4);
        zzy = zzirVar23;
        zzir zzirVar24 = new zzir("FIXED64_LIST", 23, 23, zzitVar2, zzjkVar3);
        zzz = zzirVar24;
        zzir zzirVar25 = new zzir("FIXED32_LIST", 24, 24, zzitVar2, zzjkVar4);
        zzaa = zzirVar25;
        zzir zzirVar26 = new zzir("BOOL_LIST", 25, 25, zzitVar2, zzjkVar5);
        zzab = zzirVar26;
        zzir zzirVar27 = new zzir("STRING_LIST", 26, 26, zzitVar2, zzjkVar6);
        zzac = zzirVar27;
        zzir zzirVar28 = new zzir("MESSAGE_LIST", 27, 27, zzitVar2, zzjkVar7);
        zzad = zzirVar28;
        zzir zzirVar29 = new zzir("BYTES_LIST", 28, 28, zzitVar2, zzjkVar8);
        zzae = zzirVar29;
        zzir zzirVar30 = new zzir("UINT32_LIST", 29, 29, zzitVar2, zzjkVar4);
        zzaf = zzirVar30;
        zzir zzirVar31 = new zzir("ENUM_LIST", 30, 30, zzitVar2, zzjkVar9);
        zzag = zzirVar31;
        zzir zzirVar32 = new zzir("SFIXED32_LIST", 31, 31, zzitVar2, zzjkVar4);
        zzah = zzirVar32;
        zzir zzirVar33 = new zzir("SFIXED64_LIST", 32, 32, zzitVar2, zzjkVar3);
        zzai = zzirVar33;
        zzir zzirVar34 = new zzir("SINT32_LIST", 33, 33, zzitVar2, zzjkVar4);
        zzaj = zzirVar34;
        zzir zzirVar35 = new zzir("SINT64_LIST", 34, 34, zzitVar2, zzjkVar3);
        zzak = zzirVar35;
        zzit zzitVar3 = zzit.PACKED_VECTOR;
        zzir zzirVar36 = new zzir("DOUBLE_LIST_PACKED", 35, 35, zzitVar3, zzjkVar);
        zza = zzirVar36;
        zzir zzirVar37 = new zzir("FLOAT_LIST_PACKED", 36, 36, zzitVar3, zzjkVar2);
        zzal = zzirVar37;
        zzir zzirVar38 = new zzir("INT64_LIST_PACKED", 37, 37, zzitVar3, zzjkVar3);
        zzam = zzirVar38;
        zzir zzirVar39 = new zzir("UINT64_LIST_PACKED", 38, 38, zzitVar3, zzjkVar3);
        zzan = zzirVar39;
        zzir zzirVar40 = new zzir("INT32_LIST_PACKED", 39, 39, zzitVar3, zzjkVar4);
        zzao = zzirVar40;
        zzir zzirVar41 = new zzir("FIXED64_LIST_PACKED", 40, 40, zzitVar3, zzjkVar3);
        zzap = zzirVar41;
        zzir zzirVar42 = new zzir("FIXED32_LIST_PACKED", 41, 41, zzitVar3, zzjkVar4);
        zzaq = zzirVar42;
        zzir zzirVar43 = new zzir("BOOL_LIST_PACKED", 42, 42, zzitVar3, zzjkVar5);
        zzar = zzirVar43;
        zzir zzirVar44 = new zzir("UINT32_LIST_PACKED", 43, 43, zzitVar3, zzjkVar4);
        zzas = zzirVar44;
        zzir zzirVar45 = new zzir("ENUM_LIST_PACKED", 44, 44, zzitVar3, zzjkVar9);
        zzat = zzirVar45;
        zzir zzirVar46 = new zzir("SFIXED32_LIST_PACKED", 45, 45, zzitVar3, zzjkVar4);
        zzau = zzirVar46;
        zzir zzirVar47 = new zzir("SFIXED64_LIST_PACKED", 46, 46, zzitVar3, zzjkVar3);
        zzav = zzirVar47;
        zzir zzirVar48 = new zzir("SINT32_LIST_PACKED", 47, 47, zzitVar3, zzjkVar4);
        zzaw = zzirVar48;
        zzir zzirVar49 = new zzir("SINT64_LIST_PACKED", 48, 48, zzitVar3, zzjkVar3);
        zzb = zzirVar49;
        zzir zzirVar50 = new zzir("GROUP_LIST", 49, 49, zzitVar2, zzjkVar7);
        zzax = zzirVar50;
        zzir zzirVar51 = new zzir("MAP", 50, 50, zzit.MAP, zzjk.zza);
        zzay = zzirVar51;
        zzbb = new zzir[]{zzirVar, zzirVar2, zzirVar3, zzirVar4, zzirVar5, zzirVar6, zzirVar7, zzirVar8, zzirVar9, zzirVar10, zzirVar11, zzirVar12, zzirVar13, zzirVar14, zzirVar15, zzirVar16, zzirVar17, zzirVar18, zzirVar19, zzirVar20, zzirVar21, zzirVar22, zzirVar23, zzirVar24, zzirVar25, zzirVar26, zzirVar27, zzirVar28, zzirVar29, zzirVar30, zzirVar31, zzirVar32, zzirVar33, zzirVar34, zzirVar35, zzirVar36, zzirVar37, zzirVar38, zzirVar39, zzirVar40, zzirVar41, zzirVar42, zzirVar43, zzirVar44, zzirVar45, zzirVar46, zzirVar47, zzirVar48, zzirVar49, zzirVar50, zzirVar51};
        zzba = new Type[0];
        zzir[] zzirVarArrValues = values();
        zzaz = new zzir[zzirVarArrValues.length];
        for (zzir zzirVar52 : zzirVarArrValues) {
            zzaz[zzirVar52.zzbd] = zzirVar52;
        }
    }

    public static zzir[] values() {
        return (zzir[]) zzbb.clone();
    }

    private zzir(String str, int i10, int i11, zzit zzitVar, zzjk zzjkVar) {
        int i12;
        super(str, i10);
        this.zzbd = i11;
        this.zzbe = zzitVar;
        this.zzbc = zzjkVar;
        int iOrdinal = zzitVar.ordinal();
        if (iOrdinal != 1 && iOrdinal != 3) {
            this.zzbf = null;
        } else {
            this.zzbf = zzjkVar.zza();
        }
        this.zzbg = (zzitVar != zzit.SCALAR || (i12 = zziu.zza[zzjkVar.ordinal()]) == 1 || i12 == 2 || i12 == 3) ? false : true;
    }
}
