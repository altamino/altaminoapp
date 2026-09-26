package com.google.android.gms.internal.measurement;

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
/* JADX INFO: loaded from: classes7.dex */
public class zzmn {
    public static final zzmn zza;
    public static final zzmn zzb;
    public static final zzmn zzc;
    public static final zzmn zzd;
    public static final zzmn zze;
    public static final zzmn zzf;
    public static final zzmn zzg;
    public static final zzmn zzh;
    public static final zzmn zzi;
    public static final zzmn zzj;
    public static final zzmn zzk;
    public static final zzmn zzl;
    public static final zzmn zzm;
    public static final zzmn zzn;
    public static final zzmn zzo;
    public static final zzmn zzp;
    public static final zzmn zzq;
    public static final zzmn zzr;
    private static final /* synthetic */ zzmn[] zzs;
    private final zzmx zzt;
    private final int zzu;

    public final int zza() {
        return this.zzu;
    }

    public final zzmx zzb() {
        return this.zzt;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        zzmn zzmnVar = new zzmn("DOUBLE", 0, zzmx.DOUBLE, 1);
        zza = zzmnVar;
        zzmn zzmnVar2 = new zzmn("FLOAT", 1, zzmx.FLOAT, 5);
        zzb = zzmnVar2;
        zzmx zzmxVar = zzmx.LONG;
        zzmn zzmnVar3 = new zzmn("INT64", 2, zzmxVar, 0);
        zzc = zzmnVar3;
        zzmn zzmnVar4 = new zzmn("UINT64", 3, zzmxVar, 0);
        zzd = zzmnVar4;
        zzmx zzmxVar2 = zzmx.INT;
        zzmn zzmnVar5 = new zzmn("INT32", 4, zzmxVar2, 0);
        zze = zzmnVar5;
        zzmn zzmnVar6 = new zzmn("FIXED64", 5, zzmxVar, 1);
        zzf = zzmnVar6;
        zzmn zzmnVar7 = new zzmn("FIXED32", 6, zzmxVar2, 5);
        zzg = zzmnVar7;
        zzmn zzmnVar8 = new zzmn("BOOL", 7, zzmx.BOOLEAN, 0);
        zzh = zzmnVar8;
        int i10 = 2;
        zzmm zzmmVar = new zzmm("STRING", zzmx.STRING);
        zzi = zzmmVar;
        zzmx zzmxVar3 = zzmx.MESSAGE;
        zzmo zzmoVar = new zzmo("GROUP", zzmxVar3);
        zzj = zzmoVar;
        zzmq zzmqVar = new zzmq("MESSAGE", zzmxVar3);
        zzk = zzmqVar;
        zzms zzmsVar = new zzms("BYTES", zzmx.BYTE_STRING);
        zzl = zzmsVar;
        zzmn zzmnVar9 = new zzmn("UINT32", 12, zzmxVar2, 0);
        zzm = zzmnVar9;
        zzmn zzmnVar10 = new zzmn("ENUM", 13, zzmx.ENUM, 0);
        zzn = zzmnVar10;
        zzmn zzmnVar11 = new zzmn("SFIXED32", 14, zzmxVar2, 5);
        zzo = zzmnVar11;
        zzmn zzmnVar12 = new zzmn("SFIXED64", 15, zzmxVar, 1);
        zzp = zzmnVar12;
        zzmn zzmnVar13 = new zzmn("SINT32", 16, zzmxVar2, 0);
        zzq = zzmnVar13;
        zzmn zzmnVar14 = new zzmn("SINT64", 17, zzmxVar, 0);
        zzr = zzmnVar14;
        zzs = new zzmn[]{zzmnVar, zzmnVar2, zzmnVar3, zzmnVar4, zzmnVar5, zzmnVar6, zzmnVar7, zzmnVar8, zzmmVar, zzmoVar, zzmqVar, zzmsVar, zzmnVar9, zzmnVar10, zzmnVar11, zzmnVar12, zzmnVar13, zzmnVar14};
    }

    private zzmn(String str, int i10, zzmx zzmxVar, int i11) {
        super(str, i10);
        this.zzt = zzmxVar;
        this.zzu = i11;
    }

    public static zzmn[] values() {
        return (zzmn[]) zzs.clone();
    }
}
