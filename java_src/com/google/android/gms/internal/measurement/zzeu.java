package com.google.android.gms.internal.measurement;

/* loaded from: classes2.dex */
final /* synthetic */ class zzeu {
    static final /* synthetic */ int[] zzagb;
    static final /* synthetic */ int[] zzagc = new int[zzfj.values().length];

    static {
        try {
            zzagc[zzfj.BYTE_STRING.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            zzagc[zzfj.MESSAGE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            zzagc[zzfj.STRING.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        zzagb = new int[zzev.values().length];
        try {
            zzagb[zzev.MAP.ordinal()] = 1;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            zzagb[zzev.VECTOR.ordinal()] = 2;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            zzagb[zzev.SCALAR.ordinal()] = 3;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
