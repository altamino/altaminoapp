package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcig extends zzarn {
    private final Executor zzffv;
    private final zzasm zzfxl;
    private final zzasl zzfxm;
    private final zzblp zzfxn;
    private final Context zzlj;

    public zzcig(Context context, Executor executor, zzasm zzasmVar, zzblp zzblpVar, zzasl zzaslVar) {
        zzacu.initialize(context);
        this.zzlj = context;
        this.zzffv = executor;
        this.zzfxl = zzasmVar;
        this.zzfxm = zzaslVar;
        this.zzfxn = zzblpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzarm
    public final zzari zza(zzarg zzargVar) throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzarm
    public final void zza(zzarg zzargVar, zzarp zzarpVar) throws RemoteException {
    }

    public final zzbbh<InputStream> zzh(zzarx zzarxVar) {
        zzalr zzalrVarZza = com.google.android.gms.ads.internal.zzk.zzlt().zza(this.zzlj, zzbai.zzxc());
        final zzcvs zzcvsVarZza = this.zzfxn.zza(zzarxVar);
        zzbal zzbalVar = new zzbal(zzcvsVarZza) { // from class: com.google.android.gms.internal.ads.zzcih
            private final zzcvs zzfxo;

            {
                this.zzfxo = zzcvsVarZza;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) {
                return this.zzfxo.zzadp().zzu(com.google.android.gms.ads.internal.zzk.zzlg().zzd((Bundle) obj));
            }
        };
        zzczc zzczcVar = zzcii.zzfvz;
        zzalj zzaljVarZza = zzalrVarZza.zza("AFMA_getAdDictionary", zzalo.zzddi, zzcij.zzddk);
        zzalj zzaljVarZza2 = zzalrVarZza.zza("google.afma.response.normalize", zzcir.zzfxv, zzalo.zzddj);
        zzciu zzciuVar = new zzciu(this.zzlj, zzarxVar.zzdld.zzbsx, this.zzfxl, zzarxVar.zzdmi);
        zzczt zzcztVarZzadr = zzcvsVarZza.zzadr();
        final zzcze zzczeVarZzane = zzcztVarZzadr.zza((zzczt) zzczs.GMS_SIGNALS, (zzbbh) zzbar.zzm(zzarxVar.zzdot)).zza(zzbalVar).zzb(zzczcVar).zzane();
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcvp)).booleanValue()) {
            zzaln<JSONObject> zzalnVar = zzalo.zzddi;
            return zzcztVarZzadr.zza((zzczt) zzczs.AD_REQUEST, (zzbbh) zzczeVarZzane).zza(zzalrVarZza.zza("google.afma.request.getAdResponse", zzalnVar, zzalnVar)).zzb(zzcik.zzfvz).zzane();
        }
        final zzcze zzczeVarZzane2 = zzcztVarZzadr.zza((zzczt) zzczs.BUILD_URL, (zzbbh) zzczeVarZzane).zza(zzaljVarZza).zzane();
        final zzcze zzczeVarZzane3 = zzcztVarZzadr.zza((zzczt) zzczs.HTTP, zzczeVarZzane2, zzczeVarZzane).zzc(new Callable(zzczeVarZzane, zzczeVarZzane2) { // from class: com.google.android.gms.internal.ads.zzcil
            private final zzbbh zzdzi;
            private final zzbbh zzdzo;

            {
                this.zzdzo = zzczeVarZzane;
                this.zzdzi = zzczeVarZzane2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzciv((JSONObject) this.zzdzo.get(), (zzasd) this.zzdzi.get());
            }
        }).zzb(zzciuVar).zzane();
        return zzcztVarZzadr.zza((zzczt) zzczs.PRE_PROCESS, zzczeVarZzane, zzczeVarZzane2, zzczeVarZzane3).zzc(new Callable(zzczeVarZzane3, zzczeVarZzane, zzczeVarZzane2) { // from class: com.google.android.gms.internal.ads.zzcim
            private final zzbbh zzdzi;
            private final zzbbh zzdzk;
            private final zzbbh zzdzo;

            {
                this.zzdzo = zzczeVarZzane3;
                this.zzdzi = zzczeVarZzane;
                this.zzdzk = zzczeVarZzane2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzcir((zzciw) this.zzdzo.get(), (JSONObject) this.zzdzi.get(), (zzasd) this.zzdzk.get());
            }
        }).zza(zzaljVarZza2).zzane();
    }

    @Override // com.google.android.gms.internal.ads.zzarm
    public final void zza(zzarx zzarxVar, zzarr zzarrVar) {
        zzbbh<InputStream> zzbbhVarZzh = zzh(zzarxVar);
        zza(zzbbhVarZzh, zzarrVar);
        zzbbhVarZzh.zza(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcin
            private final zzcig zzfxp;

            {
                this.zzfxp = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzfxp.zzaki();
            }
        }, this.zzffv);
    }

    @Override // com.google.android.gms.internal.ads.zzarm
    public final void zzb(zzarx zzarxVar, zzarr zzarrVar) {
        zzbbh<InputStream> zzbbhVarZzane;
        zzalr zzalrVarZza = com.google.android.gms.ads.internal.zzk.zzlt().zza(this.zzlj, zzbai.zzxc());
        if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcwd)).booleanValue()) {
            zzbbhVarZzane = zzbar.zzd(new Exception("Signal collection disabled."));
        } else {
            zzcvs zzcvsVarZza = this.zzfxn.zza(zzarxVar);
            final zzcvb<JSONObject> zzcvbVarZzadq = this.zzfxn.zza(zzarxVar).zzadq();
            zzbbhVarZzane = zzcvsVarZza.zzadr().zza((zzczt) zzczs.GET_SIGNALS, (zzbbh) zzbar.zzm(zzarxVar.zzdot)).zza(new zzbal(zzcvbVarZzadq) { // from class: com.google.android.gms.internal.ads.zzcio
                private final zzcvb zzfxq;

                {
                    this.zzfxq = zzcvbVarZzadq;
                }

                @Override // com.google.android.gms.internal.ads.zzbal
                public final zzbbh zzf(Object obj) {
                    return this.zzfxq.zzu(com.google.android.gms.ads.internal.zzk.zzlg().zzd((Bundle) obj));
                }
            }).zzx(zzczs.JS_SIGNALS).zza(zzalrVarZza.zza("google.afma.request.getSignals", zzalo.zzddi, zzalo.zzddj)).zzane();
        }
        zza(zzbbhVarZzane, zzarrVar);
    }

    private final void zza(zzbbh<InputStream> zzbbhVar, zzarr zzarrVar) {
        zzbar.zza(zzbar.zza(zzbbhVar, new zzbal(this) { // from class: com.google.android.gms.internal.ads.zzcip
            private final zzcig zzfxp;

            {
                this.zzfxp = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) {
                return zzbar.zzm(zzcyc.zze((InputStream) obj));
            }
        }, zzaxg.zzdvp), new zzciq(this, zzarrVar), zzbbm.zzeaf);
    }

    final /* synthetic */ void zzaki() {
        zzbao.zza(this.zzfxm.zztz(), "persistFlags");
    }
}
