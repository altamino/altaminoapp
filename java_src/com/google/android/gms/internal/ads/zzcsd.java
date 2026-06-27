package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzcsd implements zzcva<zzcsc> {
    private final zzbbl zzfqw;
    private final Context zzlj;

    public zzcsd(zzbbl zzbblVar, Context context) {
        this.zzfqw = zzbblVar;
        this.zzlj = context;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcsc> zzalm() {
        return this.zzfqw.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcse
            private final zzcsd zzggt;

            {
                this.zzggt = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzggt.zzalo();
            }
        });
    }

    final /* synthetic */ zzcsc zzalo() throws Exception {
        AudioManager audioManager = (AudioManager) this.zzlj.getSystemService("audio");
        return new zzcsc(audioManager.getMode(), audioManager.isMusicActive(), audioManager.isSpeakerphoneOn(), audioManager.getStreamVolume(3), audioManager.getRingerMode(), audioManager.getStreamVolume(2), com.google.android.gms.ads.internal.zzk.zzll().zzpq(), com.google.android.gms.ads.internal.zzk.zzll().zzpr());
    }
}
