package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbqy;
import com.google.android.gms.internal.ads.zzbtv;

/* loaded from: classes2.dex */
public final class zzcpp extends zzzd {
    private final zzbjm zzgbc;
    private final Context zzgdr;
    private final zzcxx zzgds;
    private final zzbzc zzgdu;
    private final zzcpw zzgdv = new zzcpw();
    private final zzbro zzgdw;
    private zzbpk zzgdx;
    private String zzgdy;
    private String zzgdz;

    public zzcpp(Context context, zzbjm zzbjmVar, zzcxx zzcxxVar, zzbzc zzbzcVar, zzyz zzyzVar) {
        this.zzgdr = context;
        this.zzgbc = zzbjmVar;
        this.zzgds = zzcxxVar;
        this.zzgdu = zzbzcVar;
        this.zzgdv.zzc(zzyzVar);
        final zzcpw zzcpwVar = this.zzgdv;
        final zzaje zzajeVarZzaim = zzbzcVar.zzaim();
        this.zzgdw = new zzbro(zzcpwVar, zzajeVarZzaim) { // from class: com.google.android.gms.internal.ads.zzcpr
            private final zzcpw zzgeb;
            private final zzaje zzgec;

            {
                this.zzgeb = zzcpwVar;
                this.zzgec = zzajeVarZzaim;
            }

            @Override // com.google.android.gms.internal.ads.zzbro
            public final void onAdFailedToLoad(int i) {
                zzcpw zzcpwVar2 = this.zzgeb;
                zzaje zzajeVar = this.zzgec;
                zzcpwVar2.onAdFailedToLoad(i);
                if (zzajeVar != null) {
                    try {
                        zzajeVar.zzcr(i);
                    } catch (RemoteException e) {
                        zzbad.zze("#007 Could not call remote method.", e);
                    }
                }
            }
        };
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0010  */
    @Override // com.google.android.gms.internal.ads.zzzc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized boolean isLoading() throws android.os.RemoteException {
        /*
            r1 = this;
            monitor-enter(r1)
            com.google.android.gms.internal.ads.zzbpk r0 = r1.zzgdx     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L10
            com.google.android.gms.internal.ads.zzbpk r0 = r1.zzgdx     // Catch: java.lang.Throwable -> L12
            boolean r0 = r0.isLoading()     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L10
            r0 = 1
        Le:
            monitor-exit(r1)
            return r0
        L10:
            r0 = 0
            goto Le
        L12:
            r0 = move-exception
            monitor-exit(r1)
            goto L16
        L15:
            throw r0
        L16:
            goto L15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcpp.isLoading():boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void zza(zzxz zzxzVar) {
        zza(zzxzVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final synchronized void zza(zzxz zzxzVar, int i) {
        if (this.zzgds.zzamp() == null) {
            zzbad.zzen("Ad unit ID should not be null for AdLoader.");
            this.zzgbc.zzace().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcpq
                private final zzcpp zzgea;

                {
                    this.zzgea = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzgea.zzalc();
                }
            });
            return;
        }
        zzcya.zze(this.zzgdr, zzxzVar.zzcgq);
        this.zzgdy = null;
        this.zzgdz = null;
        zzcxv zzcxvVarZzamq = this.zzgds.zzg(zzxzVar).zzdp(i).zzamq();
        zzbxo zzbxoVarZzacy = this.zzgbc.zzacl().zza(new zzbqy.zza().zzbt(this.zzgdr).zza(zzcxvVarZzamq).zzagh()).zza(new zzbtv.zza().zza((zzbsr) this.zzgdv, this.zzgbc.zzace()).zza(this.zzgdw, this.zzgbc.zzace()).zza((zzbrw) this.zzgdv, this.zzgbc.zzace()).zza((zzxr) this.zzgdv, this.zzgbc.zzace()).zza((zzbrl) this.zzgdv, this.zzgbc.zzace()).zza(zzcxvVarZzamq.zzgli, this.zzgbc.zzace()).zzagt()).zza(new zzbxk(this.zzgdu, this.zzgdv.zzald())).zzacy();
        zzbxoVarZzacy.zzadc().zzdq(1);
        this.zzgdx = zzbxoVarZzacy.zzacz();
        this.zzgdx.zza(new zzcps(this, zzbxoVarZzacy));
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final synchronized String getMediationAdapterClassName() {
        return this.zzgdy;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final synchronized String zzpj() {
        return this.zzgdz;
    }

    final /* synthetic */ void zzalc() {
        this.zzgdw.onAdFailedToLoad(1);
    }
}
