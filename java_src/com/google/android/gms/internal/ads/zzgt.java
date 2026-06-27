package com.google.android.gms.internal.ads;

import android.media.MediaCodec;

/* loaded from: classes2.dex */
final class zzgt implements Runnable {
    private final /* synthetic */ zzgr zzaej;
    private final /* synthetic */ MediaCodec.CryptoException zzaek;

    zzgt(zzgr zzgrVar, MediaCodec.CryptoException cryptoException) {
        this.zzaej = zzgrVar;
        this.zzaek = cryptoException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzaej.zzadn.zzb(this.zzaek);
    }
}
