package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;

/* loaded from: classes2.dex */
public final class zzcul implements zzcva<zzcuk> {
    private final List<zzcpk> zzdei;
    private final ScheduledExecutorService zzfiw;
    private final zzcxv zzfjp;
    private final zzbbl zzfqw;
    private String zzgft;
    private final Context zzlj;

    public zzcul(zzbbl zzbblVar, ScheduledExecutorService scheduledExecutorService, String str, zzcpf zzcpfVar, Context context, zzcxv zzcxvVar) {
        this.zzfqw = zzbblVar;
        this.zzfiw = scheduledExecutorService;
        this.zzgft = str;
        this.zzlj = context;
        this.zzfjp = zzcxvVar;
        if (zzcpfVar.zzakx().containsKey(zzcxvVar.zzglb)) {
            this.zzdei = zzcpfVar.zzakx().get(zzcxvVar.zzglb);
        } else {
            this.zzdei = Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcuk> zzalm() {
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcqt)).booleanValue()) {
            return zzbar.zza(this.zzfqw.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcum
                private final zzcul zzght;

                {
                    this.zzght = this;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.zzght.zzalw();
                }
            }), new zzbal(this) { // from class: com.google.android.gms.internal.ads.zzcun
                private final zzcul zzght;

                {
                    this.zzght = this;
                }

                @Override // com.google.android.gms.internal.ads.zzbal
                public final zzbbh zzf(Object obj) {
                    return this.zzght.zzg((List) obj);
                }
            }, this.zzfqw);
        }
        return zzbar.zzm(null);
    }

    static final /* synthetic */ zzcuk zzf(List list) throws Exception {
        JSONArray jSONArray = new JSONArray();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                jSONArray.put(((zzbbh) it.next()).get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        if (jSONArray.length() == 0) {
            return null;
        }
        return new zzcuk(jSONArray.toString());
    }

    final /* synthetic */ void zza(zzcpk zzcpkVar, Bundle bundle, zzcpl zzcplVar, zzbbr zzbbrVar) {
        try {
            zzcpkVar.zzgdj.zza(ObjectWrapper.wrap(this.zzlj), this.zzgft, bundle, zzcpkVar.zzemv, this.zzfjp.zzdll, zzcplVar);
        } catch (Exception e) {
            zzbbrVar.setException(new Exception("Error calling adapter"));
            zzbad.zzc("", e);
        }
    }

    final /* synthetic */ zzbbh zzg(final List list) throws Exception {
        return zzbar.zzf(list).zza(new Callable(list) { // from class: com.google.android.gms.internal.ads.zzcup
            private final List zzghy;

            {
                this.zzghy = list;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzcul.zzf(this.zzghy);
            }
        }, this.zzfqw);
    }

    final /* synthetic */ List zzalw() throws Exception {
        ArrayList arrayList = new ArrayList();
        for (final zzcpk zzcpkVar : this.zzdei) {
            final zzbbr zzbbrVar = new zzbbr();
            final zzcpl zzcplVar = new zzcpl(zzcpkVar, zzbbrVar);
            Bundle bundle = this.zzfjp.zzghg.zzcgv;
            final Bundle bundle2 = bundle != null ? bundle.getBundle(zzcpkVar.zzfis) : null;
            arrayList.add(zzbar.zza(zzbbrVar, ((Long) zzyt.zzpe().zzd(zzacu.zzcqs)).longValue(), TimeUnit.MILLISECONDS, this.zzfiw));
            this.zzfqw.execute(new Runnable(this, zzcpkVar, bundle2, zzcplVar, zzbbrVar) { // from class: com.google.android.gms.internal.ads.zzcuo
                private final zzcul zzght;
                private final zzcpk zzghu;
                private final Bundle zzghv;
                private final zzcpl zzghw;
                private final zzbbr zzghx;

                {
                    this.zzght = this;
                    this.zzghu = zzcpkVar;
                    this.zzghv = bundle2;
                    this.zzghw = zzcplVar;
                    this.zzghx = zzbbrVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzght.zza(this.zzghu, this.zzghv, this.zzghw, this.zzghx);
                }
            });
        }
        return arrayList;
    }
}
