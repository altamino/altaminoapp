package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final /* synthetic */ class zzddj {
    static final /* synthetic */ int[] zzgqb;
    static final /* synthetic */ int[] zzgqc;
    static final /* synthetic */ int[] zzgqd = new int[zzdfd.values().length];

    static {
        try {
            zzgqd[zzdfd.UNCOMPRESSED.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            zzgqd[zzdfd.DO_NOT_USE_CRUNCHY_UNCOMPRESSED.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            zzgqd[zzdfd.COMPRESSED.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        zzgqc = new int[zzdgf.values().length];
        try {
            zzgqc[zzdgf.NIST_P256.ordinal()] = 1;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            zzgqc[zzdgf.NIST_P384.ordinal()] = 2;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            zzgqc[zzdgf.NIST_P521.ordinal()] = 3;
        } catch (NoSuchFieldError unused6) {
        }
        zzgqb = new int[zzdgj.values().length];
        try {
            zzgqb[zzdgj.SHA1.ordinal()] = 1;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            zzgqb[zzdgj.SHA256.ordinal()] = 2;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            zzgqb[zzdgj.SHA512.ordinal()] = 3;
        } catch (NoSuchFieldError unused9) {
        }
    }
}
