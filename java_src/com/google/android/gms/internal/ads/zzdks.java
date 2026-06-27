package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final /* synthetic */ class zzdks {
    static final /* synthetic */ int[] zzgzy;
    static final /* synthetic */ int[] zzgzz = new int[zzdkt.values().length];

    static {
        try {
            zzgzz[zzdkt.NIST_P256.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            zzgzz[zzdkt.NIST_P384.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            zzgzz[zzdkt.NIST_P521.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        zzgzy = new int[zzdkv.values().length];
        try {
            zzgzy[zzdkv.UNCOMPRESSED.ordinal()] = 1;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            zzgzy[zzdkv.DO_NOT_USE_CRUNCHY_UNCOMPRESSED.ordinal()] = 2;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            zzgzy[zzdkv.COMPRESSED.ordinal()] = 3;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
