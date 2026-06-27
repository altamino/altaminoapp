package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.zzbsm;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class zzcoe<AdT, AdapterT, ListenerT extends zzbsm> implements zzcjv<AdT> {
    private final zzcjz<AdapterT, ListenerT> zzfef;
    private final zzczt zzgbk;
    private final zzcka<AdT, AdapterT, ListenerT> zzgch;
    private final zzbbl zzgci;

    public zzcoe(zzczt zzcztVar, zzbbl zzbblVar, zzcjz<AdapterT, ListenerT> zzcjzVar, zzcka<AdT, AdapterT, ListenerT> zzckaVar) {
        this.zzgbk = zzcztVar;
        this.zzgci = zzbblVar;
        this.zzgch = zzckaVar;
        this.zzfef = zzcjzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjv
    public final boolean zza(zzcxu zzcxuVar, zzcxm zzcxmVar) {
        return !zzcxmVar.zzgkf.isEmpty();
    }

    @Override // com.google.android.gms.internal.ads.zzcjv
    public final zzbbh<AdT> zzb(final zzcxu zzcxuVar, final zzcxm zzcxmVar) {
        final zzcjy<AdapterT, ListenerT> zzcjyVarZzd;
        Iterator<String> it = zzcxmVar.zzgkf.iterator();
        while (true) {
            if (!it.hasNext()) {
                zzcjyVarZzd = null;
                break;
            }
            try {
                zzcjyVarZzd = this.zzfef.zzd(it.next(), zzcxmVar.zzgkh);
                break;
            } catch (Throwable unused) {
            }
        }
        if (zzcjyVarZzd == null) {
            return zzbar.zzd(new zzcmk("unable to instantiate mediation adapter class"));
        }
        zzbbr zzbbrVar = new zzbbr();
        zzcjyVarZzd.zzfzn.zza(new zzcoh(this, zzbbrVar, zzcjyVarZzd));
        if (zzcxmVar.zzdpc) {
            Bundle bundle = zzcxuVar.zzgkx.zzfjp.zzghg.zzcgv;
            Bundle bundle2 = bundle.getBundle(AdMobAdapter.class.getName());
            if (bundle2 == null) {
                bundle2 = new Bundle();
                bundle.putBundle(AdMobAdapter.class.getName(), bundle2);
            }
            bundle2.putBoolean("render_test_ad_label", true);
        }
        return this.zzgbk.zzv(zzczs.ADAPTER_LOAD_AD_SYN).zza(new zzczd(this, zzcxuVar, zzcxmVar, zzcjyVarZzd) { // from class: com.google.android.gms.internal.ads.zzcof
            private final zzcxm zzfhm;
            private final zzcxu zzfra;
            private final zzcjy zzgcc;
            private final zzcoe zzgcj;

            {
                this.zzgcj = this;
                this.zzfra = zzcxuVar;
                this.zzfhm = zzcxmVar;
                this.zzgcc = zzcjyVarZzd;
            }

            @Override // com.google.android.gms.internal.ads.zzczd
            public final void run() throws Exception {
                this.zzgcj.zzd(this.zzfra, this.zzfhm, this.zzgcc);
            }
        }, this.zzgci).zzx(zzczs.ADAPTER_LOAD_AD_ACK).zzb(zzbbrVar).zzx(zzczs.ADAPTER_WRAP_ADAPTER).zzb(new zzczc(this, zzcxuVar, zzcxmVar, zzcjyVarZzd) { // from class: com.google.android.gms.internal.ads.zzcog
            private final zzcxm zzfhm;
            private final zzcxu zzfra;
            private final zzcjy zzgcc;
            private final zzcoe zzgcj;

            {
                this.zzgcj = this;
                this.zzfra = zzcxuVar;
                this.zzfhm = zzcxmVar;
                this.zzgcc = zzcjyVarZzd;
            }

            @Override // com.google.android.gms.internal.ads.zzczc
            public final Object apply(Object obj) {
                return this.zzgcj.zza(this.zzfra, this.zzfhm, this.zzgcc, (Void) obj);
            }
        }).zzane();
    }

    final /* synthetic */ Object zza(zzcxu zzcxuVar, zzcxm zzcxmVar, zzcjy zzcjyVar, Void r4) throws Exception {
        return this.zzgch.zzb(zzcxuVar, zzcxmVar, zzcjyVar);
    }

    final /* synthetic */ void zzd(zzcxu zzcxuVar, zzcxm zzcxmVar, zzcjy zzcjyVar) throws Exception {
        this.zzgch.zza(zzcxuVar, zzcxmVar, zzcjyVar);
    }
}
