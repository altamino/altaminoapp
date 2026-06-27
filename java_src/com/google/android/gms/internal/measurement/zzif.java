package com.google.android.gms.internal.measurement;

import com.meicam.sdk.NvsFxDescription;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzalz' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes2.dex */
public class zzif {
    public static final zzif zzalr = new zzif("DOUBLE", 0, zzik.DOUBLE, 1);
    public static final zzif zzals = new zzif(NvsFxDescription.ParamInfoObject.PARAM_TYPE_FLOAT, 1, zzik.FLOAT, 5);
    public static final zzif zzalt = new zzif("INT64", 2, zzik.LONG, 0);
    public static final zzif zzalu = new zzif("UINT64", 3, zzik.LONG, 0);
    public static final zzif zzalv = new zzif("INT32", 4, zzik.INT, 0);
    public static final zzif zzalw = new zzif("FIXED64", 5, zzik.LONG, 1);
    public static final zzif zzalx = new zzif("FIXED32", 6, zzik.INT, 5);
    public static final zzif zzaly = new zzif(NvsFxDescription.ParamInfoObject.PARAM_TYPE_BOOL, 7, zzik.BOOLEAN, 0);
    public static final zzif zzalz;
    public static final zzif zzama;
    public static final zzif zzamb;
    public static final zzif zzamc;
    public static final zzif zzamd;
    public static final zzif zzame;
    public static final zzif zzamf;
    public static final zzif zzamg;
    public static final zzif zzamh;
    public static final zzif zzami;
    private static final /* synthetic */ zzif[] zzaml;
    private final zzik zzamj;
    private final int zzamk;

    public static zzif[] values() {
        return (zzif[]) zzaml.clone();
    }

    private zzif(String str, int i, zzik zzikVar, int i2) {
        this.zzamj = zzikVar;
        this.zzamk = i2;
    }

    public final zzik zzpb() {
        return this.zzamj;
    }

    public final int zzpc() {
        return this.zzamk;
    }

    /* synthetic */ zzif(String str, int i, zzik zzikVar, int i2, zzie zzieVar) {
        this(str, i, zzikVar, i2);
    }

    static {
        final int i = 2;
        final int i2 = 3;
        final zzik zzikVar = zzik.STRING;
        final int i3 = 8;
        final String str = NvsFxDescription.ParamInfoObject.PARAM_TYPE_STRING;
        zzalz = new zzif(str, i3, zzikVar, i) { // from class: com.google.android.gms.internal.measurement.zzig
            {
                int i4 = 8;
                int i5 = 2;
                zzie zzieVar = null;
            }
        };
        final zzik zzikVar2 = zzik.MESSAGE;
        final int i4 = 9;
        final String str2 = "GROUP";
        zzama = new zzif(str2, i4, zzikVar2, i2) { // from class: com.google.android.gms.internal.measurement.zzih
            {
                int i5 = 9;
                int i6 = 3;
                zzie zzieVar = null;
            }
        };
        final zzik zzikVar3 = zzik.MESSAGE;
        final int i5 = 10;
        final String str3 = "MESSAGE";
        zzamb = new zzif(str3, i5, zzikVar3, i) { // from class: com.google.android.gms.internal.measurement.zzii
            {
                int i6 = 10;
                int i7 = 2;
                zzie zzieVar = null;
            }
        };
        final zzik zzikVar4 = zzik.BYTE_STRING;
        final int i6 = 11;
        final String str4 = "BYTES";
        zzamc = new zzif(str4, i6, zzikVar4, i) { // from class: com.google.android.gms.internal.measurement.zzij
            {
                int i7 = 11;
                int i8 = 2;
                zzie zzieVar = null;
            }
        };
        zzamd = new zzif("UINT32", 12, zzik.INT, 0);
        zzame = new zzif("ENUM", 13, zzik.ENUM, 0);
        zzamf = new zzif("SFIXED32", 14, zzik.INT, 5);
        zzamg = new zzif("SFIXED64", 15, zzik.LONG, 1);
        zzamh = new zzif("SINT32", 16, zzik.INT, 0);
        zzami = new zzif("SINT64", 17, zzik.LONG, 0);
        zzaml = new zzif[]{zzalr, zzals, zzalt, zzalu, zzalv, zzalw, zzalx, zzaly, zzalz, zzama, zzamb, zzamc, zzamd, zzame, zzamf, zzamg, zzamh, zzami};
    }
}
