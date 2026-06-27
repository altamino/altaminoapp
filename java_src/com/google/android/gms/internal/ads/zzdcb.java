package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzdcb<P> {
    private final P zzgpl;
    private final byte[] zzgpm;
    private final zzdgu zzgpn;
    private final zzdhm zzgpo;

    public zzdcb(P p, byte[] bArr, zzdgu zzdguVar, zzdhm zzdhmVar) {
        this.zzgpl = p;
        this.zzgpm = Arrays.copyOf(bArr, bArr.length);
        this.zzgpn = zzdguVar;
        this.zzgpo = zzdhmVar;
    }

    public final P zzanv() {
        return this.zzgpl;
    }

    public final zzdhm zzanw() {
        return this.zzgpo;
    }

    public final byte[] zzanx() {
        byte[] bArr = this.zzgpm;
        if (bArr == null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }
}
