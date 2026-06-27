package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final /* synthetic */ class zzdnw {
    static final /* synthetic */ int[] zzhgr;
    static final /* synthetic */ int[] zzhgs = new int[zzdom.values().length];

    static {
        try {
            zzhgs[zzdom.BYTE_STRING.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            zzhgs[zzdom.MESSAGE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            zzhgs[zzdom.STRING.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        zzhgr = new int[zzdnx.values().length];
        try {
            zzhgr[zzdnx.MAP.ordinal()] = 1;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            zzhgr[zzdnx.VECTOR.ordinal()] = 2;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            zzhgr[zzdnx.SCALAR.ordinal()] = 3;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
