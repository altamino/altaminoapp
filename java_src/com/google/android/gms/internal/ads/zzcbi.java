package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcbi {
    private final Executor zzffv;
    private final zzcxv zzfjp;
    private final zzcdn zzfqh;
    private final Context zzlj;

    public zzcbi(Context context, zzcxv zzcxvVar, Executor executor, zzcdn zzcdnVar) {
        this.zzlj = context;
        this.zzfjp = zzcxvVar;
        this.zzffv = executor;
        this.zzfqh = zzcdnVar;
    }

    public final zzbbh<zzbgz> zzm(final JSONObject jSONObject) {
        return zzbar.zza(zzbar.zza(zzbar.zzm(null), new zzbal(this) { // from class: com.google.android.gms.internal.ads.zzcbl
            private final zzcbi zzfrv;

            {
                this.zzfrv = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) {
                return this.zzfrv.zzs(obj);
            }
        }, this.zzffv), new zzbal(this, jSONObject) { // from class: com.google.android.gms.internal.ads.zzcbj
            private final JSONObject zzfga;
            private final zzcbi zzfrv;

            {
                this.zzfrv = this;
                this.zzfga = jSONObject;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) {
                return this.zzfrv.zza(this.zzfga, (zzbgz) obj);
            }
        }, this.zzffv);
    }

    public final zzbbh<zzbgz> zzq(final String str, final String str2) {
        return zzbar.zza(zzbar.zzm(null), new zzbal(this, str, str2) { // from class: com.google.android.gms.internal.ads.zzcbk
            private final String zzdbk;
            private final String zzdsr;
            private final zzcbi zzfrv;

            {
                this.zzfrv = this;
                this.zzdbk = str;
                this.zzdsr = str2;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) {
                return this.zzfrv.zza(this.zzdbk, this.zzdsr, obj);
            }
        }, this.zzffv);
    }

    private final void zzj(zzbgz zzbgzVar) {
        zzbgzVar.zza("/video", zzagz.zzdab);
        zzbgzVar.zza("/videoMeta", zzagz.zzdac);
        zzbgzVar.zza("/precache", new zzbgc());
        zzbgzVar.zza("/delayPageLoaded", zzagz.zzdaf);
        zzbgzVar.zza("/instrument", zzagz.zzdad);
        zzbgzVar.zza("/log", zzagz.zzczw);
        zzbgzVar.zza("/videoClicked", zzagz.zzczx);
        zzbgzVar.zzaai().zzau(true);
        if (this.zzfjp.zzdne != null) {
            zzbgzVar.zza("/open", new zzahs(null, null));
        }
    }

    final /* synthetic */ zzbbh zzs(Object obj) throws Exception {
        zzbgz zzbgzVarZzc = this.zzfqh.zzc(zzyd.zzg(this.zzlj));
        final zzbbq zzbbqVarZzn = zzbbq.zzn(zzbgzVarZzc);
        zzj(zzbgzVarZzc);
        zzbgzVarZzc.zzaai().zza(new zzbik(zzbbqVarZzn) { // from class: com.google.android.gms.internal.ads.zzcbm
            private final zzbbq zzeki;

            {
                this.zzeki = zzbbqVarZzn;
            }

            @Override // com.google.android.gms.internal.ads.zzbik
            public final void zzrw() {
                this.zzeki.zzxe();
            }
        });
        zzbgzVarZzc.loadUrl((String) zzyt.zzpe().zzd(zzacu.zzcsd));
        return zzbbqVarZzn;
    }

    final /* synthetic */ zzbbh zza(String str, String str2, Object obj) throws Exception {
        final zzbgz zzbgzVarZzc = this.zzfqh.zzc(zzyd.zzg(this.zzlj));
        final zzbbq zzbbqVarZzn = zzbbq.zzn(zzbgzVarZzc);
        zzj(zzbgzVarZzc);
        if (this.zzfjp.zzdne != null) {
            zzbgzVarZzc.zza(zzbin.zzabw());
        } else {
            zzbgzVarZzc.zza(zzbin.zzabv());
        }
        zzbgzVarZzc.zzaai().zza(new zzbij(this, zzbgzVarZzc, zzbbqVarZzn) { // from class: com.google.android.gms.internal.ads.zzcbn
            private final zzcbi zzfrv;
            private final zzbgz zzfrw;
            private final zzbbq zzfrx;

            {
                this.zzfrv = this;
                this.zzfrw = zzbgzVarZzc;
                this.zzfrx = zzbbqVarZzn;
            }

            @Override // com.google.android.gms.internal.ads.zzbij
            public final void zzae(boolean z) {
                this.zzfrv.zza(this.zzfrw, this.zzfrx, z);
            }
        });
        zzbgzVarZzc.zzb(str, str2, null);
        return zzbbqVarZzn;
    }

    final /* synthetic */ void zza(zzbgz zzbgzVar, zzbbq zzbbqVar, boolean z) {
        if (this.zzfjp.zzgla != null && zzbgzVar.zzyb() != null) {
            zzbgzVar.zzyb().zzb(this.zzfjp.zzgla);
        }
        zzbbqVar.zzxe();
    }

    final /* synthetic */ zzbbh zza(JSONObject jSONObject, final zzbgz zzbgzVar) throws Exception {
        final zzbbq zzbbqVarZzn = zzbbq.zzn(zzbgzVar);
        if (this.zzfjp.zzdne != null) {
            zzbgzVar.zza(zzbin.zzabw());
        } else {
            zzbgzVar.zza(zzbin.zzabv());
        }
        zzbgzVar.zzaai().zza(new zzbij(this, zzbgzVar, zzbbqVarZzn) { // from class: com.google.android.gms.internal.ads.zzcbo
            private final zzcbi zzfrv;
            private final zzbgz zzfrw;
            private final zzbbq zzfrx;

            {
                this.zzfrv = this;
                this.zzfrw = zzbgzVar;
                this.zzfrx = zzbbqVarZzn;
            }

            @Override // com.google.android.gms.internal.ads.zzbij
            public final void zzae(boolean z) {
                this.zzfrv.zzb(this.zzfrw, this.zzfrx, z);
            }
        });
        zzbgzVar.zzb("google.afma.nativeAds.renderVideo", jSONObject);
        return zzbbqVarZzn;
    }

    final /* synthetic */ void zzb(zzbgz zzbgzVar, zzbbq zzbbqVar, boolean z) {
        if (this.zzfjp.zzgla != null && zzbgzVar.zzyb() != null) {
            zzbgzVar.zzyb().zzb(this.zzfjp.zzgla);
        }
        zzbbqVar.zzxe();
    }
}
