package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcef implements zzdti<zzwj> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<Integer> zzfgq;
    private final zzdtu<zzbai> zzfjy;
    private final zzdtu<String> zzftu;
    private final zzdtu<String> zzftv;

    private zzcef(zzdtu<Context> zzdtuVar, zzdtu<String> zzdtuVar2, zzdtu<zzbai> zzdtuVar3, zzdtu<Integer> zzdtuVar4, zzdtu<String> zzdtuVar5) {
        this.zzeoj = zzdtuVar;
        this.zzftu = zzdtuVar2;
        this.zzfjy = zzdtuVar3;
        this.zzfgq = zzdtuVar4;
        this.zzftv = zzdtuVar5;
    }

    public static zzcef zze(zzdtu<Context> zzdtuVar, zzdtu<String> zzdtuVar2, zzdtu<zzbai> zzdtuVar3, zzdtu<Integer> zzdtuVar4, zzdtu<String> zzdtuVar5) {
        return new zzcef(zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4, zzdtuVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        Context context = this.zzeoj.get();
        final String str = this.zzftu.get();
        zzbai zzbaiVar = this.zzfjy.get();
        final int iIntValue = this.zzfgq.get().intValue();
        final String str2 = this.zzftv.get();
        zzwj zzwjVar = new zzwj(new zzwo(context));
        final zzxo zzxoVar = new zzxo();
        zzxoVar.zzcfo = Integer.valueOf(zzbaiVar.zzdzc);
        zzxoVar.zzcfp = Integer.valueOf(zzbaiVar.zzdzd);
        zzxoVar.zzcfq = Integer.valueOf(zzbaiVar.zzdze ? 0 : 2);
        zzwjVar.zza(new zzwk(iIntValue, str, zzxoVar, str2) { // from class: com.google.android.gms.internal.ads.zzcee
            private final String zzdbk;
            private final int zzdyz;
            private final zzxo zzfts;
            private final String zzftt;

            {
                this.zzdyz = iIntValue;
                this.zzdbk = str;
                this.zzfts = zzxoVar;
                this.zzftt = str2;
            }

            @Override // com.google.android.gms.internal.ads.zzwk
            public final void zza(zzxn zzxnVar) {
                int i = this.zzdyz;
                String str3 = this.zzdbk;
                zzxo zzxoVar2 = this.zzfts;
                String str4 = this.zzftt;
                zzxnVar.zzcfl.zzcee = Integer.valueOf(i);
                zzxl zzxlVar = zzxnVar.zzcfi;
                zzxlVar.zzceu = str3;
                zzxlVar.zzcex = zzxoVar2;
                zzxnVar.zzcfd = str4;
            }
        });
        return (zzwj) zzdto.zza(zzwjVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
