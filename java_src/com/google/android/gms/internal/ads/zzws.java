package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes2.dex */
public final class zzws {
    private final byte[] zzbze;
    private int zzbzf;
    private int zzbzg;
    private final /* synthetic */ zzwo zzbzh;

    private zzws(zzwo zzwoVar, byte[] bArr) {
        this.zzbzh = zzwoVar;
        this.zzbze = bArr;
    }

    public final synchronized void zzdj() {
        try {
            if (this.zzbzh.zzbzc) {
                this.zzbzh.zzbzb.zzc(this.zzbze);
                this.zzbzh.zzbzb.zzl(this.zzbzf);
                this.zzbzh.zzbzb.zzm(this.zzbzg);
                this.zzbzh.zzbzb.zza(null);
                this.zzbzh.zzbzb.zzdj();
            }
        } catch (RemoteException e) {
            zzbad.zzb("Clearcut log failed", e);
        }
    }

    public final zzws zzbx(int i) {
        this.zzbzf = i;
        return this;
    }

    public final zzws zzby(int i) {
        this.zzbzg = i;
        return this;
    }
}
