package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzcsz implements zzcva<zzcsy> {
    private final zzcxv zzfjp;
    private final zzbbl zzfqw;

    public zzcsz(zzbbl zzbblVar, zzcxv zzcxvVar) {
        this.zzfqw = zzbblVar;
        this.zzfjp = zzcxvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcsy> zzalm() {
        return this.zzfqw.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcta
            private final zzcsz zzghh;

            {
                this.zzghh = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzghh.zzalr();
            }
        });
    }

    private static int zzc(zzzy zzzyVar) {
        long value;
        if (zzzyVar != null) {
            try {
                value = zzzyVar.getValue();
            } catch (RemoteException unused) {
                zzbad.zzep("Cannot get correlation id, default to 0.");
            }
        } else {
            value = 0;
        }
        return (int) value;
    }

    final /* synthetic */ zzcsy zzalr() throws Exception {
        return new zzcsy(zzc(this.zzfjp.zzgkz), this.zzfjp.zzghg);
    }
}
