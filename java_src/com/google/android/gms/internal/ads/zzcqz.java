package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcqz implements zzbal<zzarx, zzcrc> {
    private Executor zzffi;
    private zzchz zzgfv;

    public zzcqz(Executor executor, zzchz zzchzVar) {
        this.zzffi = executor;
        this.zzgfv = zzchzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbal
    public final /* synthetic */ zzbbh<zzcrc> zzf(zzarx zzarxVar) throws Exception {
        final zzarx zzarxVar2 = zzarxVar;
        return zzbar.zza(this.zzgfv.zzg(zzarxVar2), new zzbal(zzarxVar2) { // from class: com.google.android.gms.internal.ads.zzcra
            private final zzarx zzfkk;

            {
                this.zzfkk = zzarxVar2;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) {
                return zzbar.zzm(new zzcrc(new JsonReader(new InputStreamReader((InputStream) obj))).zzn(this.zzfkk.zzdot));
            }
        }, this.zzffi);
    }
}
