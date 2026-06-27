package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzcgn {
    private final zzbbl zzfqw;
    private final zzbbl zzfvr;
    private final zzchv zzfvs;
    private final zzdte<zzcig> zzfvt;

    public zzcgn(zzbbl zzbblVar, zzbbl zzbblVar2, zzchv zzchvVar, zzdte<zzcig> zzdteVar) {
        this.zzfvr = zzbblVar;
        this.zzfqw = zzbblVar2;
        this.zzfvs = zzchvVar;
        this.zzfvt = zzdteVar;
    }

    public final zzbbh<InputStream> zzc(final zzarx zzarxVar) {
        final zzbbh<InputStream> zzbbhVarZzf;
        String str = zzarxVar.packageName;
        com.google.android.gms.ads.internal.zzk.zzlg();
        if (zzaxi.zzec(str)) {
            zzbbhVarZzf = zzbar.zzd(new zzcie(0));
        } else {
            if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcvo)).booleanValue()) {
                zzbbhVarZzf = zzbar.zza(this.zzfvr.submit(new Callable(this, zzarxVar) { // from class: com.google.android.gms.internal.ads.zzcgo
                    private final zzcgn zzfvu;
                    private final zzarx zzfvv;

                    {
                        this.zzfvu = this;
                        this.zzfvv = zzarxVar;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.zzfvu.zzd(this.zzfvv);
                    }
                }), ExecutionException.class, zzcgp.zzbqz, this.zzfqw);
            } else {
                zzbbhVarZzf = this.zzfvs.zzf(zzarxVar);
            }
        }
        zzbbh<InputStream> zzbbhVarZza = zzbar.zza(zzbbhVarZzf, zzcie.class, new zzbal(this, zzarxVar) { // from class: com.google.android.gms.internal.ads.zzcgq
            private final zzcgn zzfvu;
            private final zzarx zzfvv;

            {
                this.zzfvu = this;
                this.zzfvv = zzarxVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) {
                return this.zzfvu.zza(this.zzfvv, (zzcie) obj);
            }
        }, this.zzfqw);
        if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcvo)).booleanValue()) {
            zzbbhVarZza.zza(new Runnable(zzbbhVarZzf) { // from class: com.google.android.gms.internal.ads.zzcgr
                private final zzbbh zzdzo;

                {
                    this.zzdzo = zzbbhVarZzf;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzdzo.cancel(true);
                }
            }, zzbbm.zzeaf);
        }
        return zzbbhVarZza;
    }

    final /* synthetic */ zzbbh zza(zzarx zzarxVar, zzcie zzcieVar) throws Exception {
        return this.zzfvt.get().zzh(zzarxVar);
    }

    final /* synthetic */ InputStream zzd(zzarx zzarxVar) throws Exception {
        return this.zzfvs.zzf(zzarxVar).get(((Integer) zzyt.zzpe().zzd(zzacu.zzcvn)).intValue(), TimeUnit.SECONDS);
    }
}
