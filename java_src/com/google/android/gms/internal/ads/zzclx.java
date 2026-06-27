package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzclx implements zzclw<zzbyn> {
    private final zzbbl zzfqw;
    private final zzbxo zzgav;
    private final zzcaq zzgaw;

    public zzclx(zzbxo zzbxoVar, zzbbl zzbblVar, zzcaq zzcaqVar) {
        this.zzgav = zzbxoVar;
        this.zzfqw = zzbblVar;
        this.zzgaw = zzcaqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjv
    public final boolean zza(zzcxu zzcxuVar, zzcxm zzcxmVar) {
        zzcxq zzcxqVar = zzcxmVar.zzgke;
        return (zzcxqVar == null || zzcxqVar.zzfmo == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcjv
    public final zzbbh<List<zzbbh<zzbyn>>> zzb(final zzcxu zzcxuVar, final zzcxm zzcxmVar) {
        zzbbh<zzccj> zzbbhVarZzamr = this.zzgav.zzadc().zzamr();
        this.zzgav.zzadc().zza(zzbbhVarZzamr);
        return zzbar.zza(zzbar.zza(zzbbhVarZzamr, new zzbal(this, zzcxmVar) { // from class: com.google.android.gms.internal.ads.zzcly
            private final zzcxm zzgao;
            private final zzclx zzgax;

            {
                this.zzgax = this;
                this.zzgao = zzcxmVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) {
                return this.zzgax.zza(this.zzgao, (zzccj) obj);
            }
        }, this.zzfqw), new zzbal(this, zzcxuVar, zzcxmVar) { // from class: com.google.android.gms.internal.ads.zzclz
            private final zzcxm zzfhm;
            private final zzcxu zzfra;
            private final zzclx zzgax;

            {
                this.zzgax = this;
                this.zzfra = zzcxuVar;
                this.zzfhm = zzcxmVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) {
                return this.zzgax.zza(this.zzfra, this.zzfhm, (JSONArray) obj);
            }
        }, this.zzfqw);
    }

    private final zzbbh<zzbyn> zzb(final zzcxu zzcxuVar, final zzcxm zzcxmVar, final JSONObject jSONObject) {
        final zzbbh<zzccj> zzbbhVarZzamr = this.zzgav.zzadc().zzamr();
        final zzbbh<zzbyt> zzbbhVarZza = this.zzgaw.zza(zzcxuVar, zzcxmVar, jSONObject);
        return zzbar.zza(zzbbhVarZzamr, zzbbhVarZza).zza(new Callable(this, zzbbhVarZza, zzbbhVarZzamr, zzcxuVar, zzcxmVar, jSONObject) { // from class: com.google.android.gms.internal.ads.zzcmc
            private final zzbbh zzdzi;
            private final zzbbh zzdzk;
            private final zzcxu zzgaq;
            private final zzclx zzgax;
            private final zzcxm zzgay;
            private final JSONObject zzgaz;

            {
                this.zzgax = this;
                this.zzdzi = zzbbhVarZza;
                this.zzdzk = zzbbhVarZzamr;
                this.zzgaq = zzcxuVar;
                this.zzgay = zzcxmVar;
                this.zzgaz = jSONObject;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzgax.zza(this.zzdzi, this.zzdzk, this.zzgaq, this.zzgay, this.zzgaz);
            }
        }, this.zzfqw);
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ zzbyn zza(zzbbh zzbbhVar, zzbbh zzbbhVar2, zzcxu zzcxuVar, zzcxm zzcxmVar, JSONObject jSONObject) throws Exception {
        zzbyt zzbytVar = (zzbyt) zzbbhVar.get();
        zzccj zzccjVar = (zzccj) zzbbhVar2.get();
        zzbyv zzbyvVarZza = this.zzgav.zza(new zzbpr(zzcxuVar, zzcxmVar, null), new zzbzf(zzbytVar), new zzbyc(jSONObject, zzccjVar));
        zzbyvVarZza.zzadk().zzaji();
        zzbyvVarZza.zzadl().zzb(zzccjVar);
        zzbyvVarZza.zzadm().zzk(zzbytVar.zzahz());
        return zzbyvVarZza.zzadj();
    }

    final /* synthetic */ zzbbh zza(zzcxu zzcxuVar, zzcxm zzcxmVar, JSONArray jSONArray) throws Exception {
        if (jSONArray.length() == 0) {
            return zzbar.zzd(new zzcgm(3));
        }
        if (zzcxuVar.zzgkx.zzfjp.zzglg > 1) {
            int length = jSONArray.length();
            this.zzgav.zzadc().zzdq(Math.min(length, zzcxuVar.zzgkx.zzfjp.zzglg));
            ArrayList arrayList = new ArrayList(zzcxuVar.zzgkx.zzfjp.zzglg);
            for (int i = 0; i < zzcxuVar.zzgkx.zzfjp.zzglg; i++) {
                if (i < length) {
                    arrayList.add(zzb(zzcxuVar, zzcxmVar, jSONArray.getJSONObject(i)));
                } else {
                    arrayList.add(zzbar.zzd(new zzcgm(3)));
                }
            }
            return zzbar.zzm(arrayList);
        }
        return zzbar.zza(zzb(zzcxuVar, zzcxmVar, jSONArray.getJSONObject(0)), zzcmb.zzdrn, this.zzfqw);
    }

    final /* synthetic */ zzbbh zza(zzcxm zzcxmVar, zzccj zzccjVar) throws Exception {
        JSONObject jSONObjectZza = zzazc.zza("isNonagon", (Object) true);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("response", zzcxmVar.zzgke.zzfmo);
        jSONObject.put("sdk_params", jSONObjectZza);
        return zzbar.zza(zzccjVar.zzc("google.afma.nativeAds.preProcessJson", jSONObject), zzcma.zzbqz, this.zzfqw);
    }
}
