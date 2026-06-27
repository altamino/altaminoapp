package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzcmx<AdT> implements zzbal<zzcxu, AdT> {
    private final zzdae zzffb;
    private final Executor zzffi;
    private final ScheduledExecutorService zzfkf;
    private final zzbrm zzfkw;
    private final zzczt zzgbk;
    private final zzbpe<AdT> zzgbl;
    private final zzcmu zzgbm;

    public zzcmx(zzczt zzcztVar, zzcmu zzcmuVar, zzbrm zzbrmVar, zzdae zzdaeVar, zzbpe<AdT> zzbpeVar, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        this.zzgbk = zzcztVar;
        this.zzgbm = zzcmuVar;
        this.zzfkw = zzbrmVar;
        this.zzffb = zzdaeVar;
        this.zzgbl = zzbpeVar;
        this.zzffi = executor;
        this.zzfkf = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzbal
    public final /* synthetic */ zzbbh zzf(zzcxu zzcxuVar) throws Exception {
        final zzcxu zzcxuVar2 = zzcxuVar;
        zzcze zzczeVarZzane = this.zzgbk.zzv(zzczs.RENDER_CONFIG_INIT).zzb(zzbar.zzd(new zzcmw("No ad configs", 3))).zzane();
        this.zzfkw.zza(new zzbmd(zzcxuVar2, this.zzffb), this.zzffi);
        int i = 0;
        for (final zzcxm zzcxmVar : zzcxuVar2.zzgky.zzgkt) {
            Iterator<String> it = zzcxmVar.zzgjy.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                final zzcjv<AdT> zzcjvVarZze = this.zzgbl.zze(zzcxmVar.zzflt, next);
                if (zzcjvVarZze != null && zzcjvVarZze.zza(zzcxuVar2, zzcxmVar)) {
                    zzczl<I> zzczlVarZza = this.zzgbk.zza((zzczt) zzczs.RENDER_CONFIG_WATERFALL, (zzbbh) zzczeVarZzane);
                    StringBuilder sb = new StringBuilder(String.valueOf(next).length() + 26);
                    sb.append("render-config-");
                    sb.append(i);
                    sb.append("-");
                    sb.append(next);
                    zzczeVarZzane = zzczlVarZza.zzfy(sb.toString()).zza(Throwable.class, new zzbal(this, zzcxmVar, zzcjvVarZze, zzcxuVar2) { // from class: com.google.android.gms.internal.ads.zzcmy
                        private final zzcxm zzgao;
                        private final zzcxu zzgaq;
                        private final zzcmx zzgbn;
                        private final zzcjv zzgbo;

                        {
                            this.zzgbn = this;
                            this.zzgao = zzcxmVar;
                            this.zzgbo = zzcjvVarZze;
                            this.zzgaq = zzcxuVar2;
                        }

                        @Override // com.google.android.gms.internal.ads.zzbal
                        public final zzbbh zzf(Object obj) {
                            return this.zzgbn.zza(this.zzgao, this.zzgbo, this.zzgaq, (Throwable) obj);
                        }
                    }).zzane();
                    break;
                }
            }
            i++;
        }
        return zzczeVarZzane;
    }

    final /* synthetic */ zzbbh zza(zzcxm zzcxmVar, zzcjv zzcjvVar, zzcxu zzcxuVar, Throwable th) throws Exception {
        return this.zzgbm.zza(zzcxmVar, zzbar.zza(zzcjvVar.zzb(zzcxuVar, zzcxmVar), zzcxmVar.zzgkn, TimeUnit.MILLISECONDS, this.zzfkf));
    }
}
