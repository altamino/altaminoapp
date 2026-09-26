package com.google.android.gms.internal.measurement;

import com.google.firebase.remoteconfig.a;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzb' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes7.dex */
public final class zzjk {
    public static final zzjk zza;
    public static final zzjk zzb;
    public static final zzjk zzc;
    public static final zzjk zzd;
    public static final zzjk zze;
    public static final zzjk zzf;
    public static final zzjk zzg;
    public static final zzjk zzh;
    public static final zzjk zzi;
    public static final zzjk zzj;
    private static final /* synthetic */ zzjk[] zzk;
    private final Class<?> zzl;
    private final Class<?> zzm;
    private final Object zzn;

    public final Class<?> zza() {
        return this.zzm;
    }

    static {
        zzjk zzjkVar = new zzjk("VOID", 0, Void.class, Void.class, null);
        zza = zzjkVar;
        Class cls = Integer.TYPE;
        zzjk zzjkVar2 = new zzjk("INT", 1, cls, Integer.class, 0);
        zzb = zzjkVar2;
        zzjk zzjkVar3 = new zzjk("LONG", 2, Long.TYPE, Long.class, 0L);
        zzc = zzjkVar3;
        zzjk zzjkVar4 = new zzjk("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        zzd = zzjkVar4;
        zzjk zzjkVar5 = new zzjk("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(a.DEFAULT_VALUE_FOR_DOUBLE));
        zze = zzjkVar5;
        zzjk zzjkVar6 = new zzjk("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        zzf = zzjkVar6;
        zzjk zzjkVar7 = new zzjk("STRING", 6, String.class, String.class, "");
        zzg = zzjkVar7;
        zzjk zzjkVar8 = new zzjk("BYTE_STRING", 7, zzhm.class, zzhm.class, zzhm.zza);
        zzh = zzjkVar8;
        zzjk zzjkVar9 = new zzjk("ENUM", 8, cls, Integer.class, null);
        zzi = zzjkVar9;
        zzjk zzjkVar10 = new zzjk("MESSAGE", 9, Object.class, Object.class, null);
        zzj = zzjkVar10;
        zzk = new zzjk[]{zzjkVar, zzjkVar2, zzjkVar3, zzjkVar4, zzjkVar5, zzjkVar6, zzjkVar7, zzjkVar8, zzjkVar9, zzjkVar10};
    }

    public static zzjk[] values() {
        return (zzjk[]) zzk.clone();
    }

    private zzjk(String str, int i10, Class cls, Class cls2, Object obj) {
        super(str, i10);
        this.zzl = cls;
        this.zzm = cls2;
        this.zzn = obj;
    }
}
