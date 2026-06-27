package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
final class zzdpz implements zzdpi {
    private final int flags;
    private final String info;
    private final Object[] zzhjr;
    private final zzdpk zzhju;

    zzdpz(zzdpk zzdpkVar, String str, Object[] objArr) {
        this.zzhju = zzdpkVar;
        this.info = str;
        this.zzhjr = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.flags = cCharAt;
            return;
        }
        int i = cCharAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char cCharAt2 = str.charAt(i3);
            if (cCharAt2 < 55296) {
                this.flags = i | (cCharAt2 << i2);
                return;
            } else {
                i |= (cCharAt2 & 8191) << i2;
                i2 += 13;
                i3 = i4;
            }
        }
    }

    final String zzazi() {
        return this.info;
    }

    final Object[] zzazj() {
        return this.zzhjr;
    }

    @Override // com.google.android.gms.internal.ads.zzdpi
    public final zzdpk zzazb() {
        return this.zzhju;
    }

    @Override // com.google.android.gms.internal.ads.zzdpi
    public final int zzayz() {
        return (this.flags & 1) == 1 ? zzdob.zze.zzhhs : zzdob.zze.zzhht;
    }

    @Override // com.google.android.gms.internal.ads.zzdpi
    public final boolean zzaza() {
        return (this.flags & 2) == 2;
    }
}
