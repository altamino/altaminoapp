package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes2.dex */
public final class zzcgb {
    private final Executor zzffi;
    private final Executor zzffv;
    private final ScheduledExecutorService zzfkf;
    private final zzclc zzfvd;
    private final Context zzlj;
    private boolean zzfuz = false;
    private boolean zzfva = false;
    private final zzbbr<Boolean> zzfvc = new zzbbr<>();
    private Map<String, zzaio> zzfve = new ConcurrentHashMap();
    private final long zzfvb = com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime();

    public zzcgb(Executor executor, Context context, Executor executor2, zzclc zzclcVar, ScheduledExecutorService scheduledExecutorService) {
        this.zzfvd = zzclcVar;
        this.zzlj = context;
        this.zzffi = executor2;
        this.zzfkf = scheduledExecutorService;
        this.zzffv = executor;
        zza("com.google.android.gms.ads.MobileAds", false, "", 0);
    }

    public final void zzb(final zzait zzaitVar) {
        this.zzfvc.zza(new Runnable(this, zzaitVar) { // from class: com.google.android.gms.internal.ads.zzcgc
            private final zzcgb zzfvf;
            private final zzait zzfvg;

            {
                this.zzfvf = this;
                this.zzfvg = zzaitVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzfvf.zzc(this.zzfvg);
            }
        }, this.zzffv);
    }

    /* renamed from: zzajx, reason: merged with bridge method [inline-methods] */
    public final void zzakd() {
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcqy)).booleanValue() && !this.zzfuz) {
            synchronized (this) {
                if (this.zzfuz) {
                    return;
                }
                final String strZzus = com.google.android.gms.ads.internal.zzk.zzlk().zzvc().zzvr().zzus();
                if (TextUtils.isEmpty(strZzus)) {
                    zzajz();
                    return;
                }
                this.zzfuz = true;
                zza("com.google.android.gms.ads.MobileAds", true, "", (int) (com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime() - this.zzfvb));
                this.zzffi.execute(new Runnable(this, strZzus) { // from class: com.google.android.gms.internal.ads.zzcgd
                    private final String zzdbk;
                    private final zzcgb zzfvf;

                    {
                        this.zzfvf = this;
                        this.zzdbk = strZzus;
                    }

                    @Override // java.lang.Runnable
                    public final void run() throws JSONException {
                        this.zzfvf.zzfq(this.zzdbk);
                    }
                });
            }
        }
    }

    public final List<zzaio> zzajy() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.zzfve.keySet()) {
            zzaio zzaioVar = this.zzfve.get(str);
            arrayList.add(new zzaio(str, zzaioVar.zzdbb, zzaioVar.zzdbc, zzaioVar.description));
        }
        return arrayList;
    }

    private final synchronized void zzajz() {
        if (!this.zzfva) {
            com.google.android.gms.ads.internal.zzk.zzlk().zzvc().zzb(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcge
                private final zzcgb zzfvf;

                {
                    this.zzfvf = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzfvf.zzakc();
                }
            });
            this.zzfva = true;
            this.zzfkf.schedule(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcgf
                private final zzcgb zzfvf;

                {
                    this.zzfvf = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzfvf.zzakb();
                }
            }, ((Long) zzyt.zzpe().zzd(zzacu.zzcra)).longValue(), TimeUnit.SECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(String str, boolean z, String str2, int i) {
        this.zzfve.put(str, new zzaio(str, z, i, str2));
    }

    final /* synthetic */ void zza(zzams zzamsVar, zzaiq zzaiqVar, List list) {
        try {
            try {
                zzamsVar.zza(ObjectWrapper.wrap(this.zzlj), zzaiqVar, (List<zzaiw>) list);
            } catch (RemoteException e) {
                zzbad.zzc("", e);
            }
        } catch (RemoteException unused) {
            zzaiqVar.onInitializationFailed("Failed to create Adapter.");
        }
    }

    final /* synthetic */ Object zzaka() throws Exception {
        this.zzfvc.set(true);
        return null;
    }

    final /* synthetic */ void zza(Object obj, zzbbr zzbbrVar, String str, long j) {
        synchronized (obj) {
            if (!zzbbrVar.isDone()) {
                zza(str, false, "timeout", (int) (com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime() - j));
                zzbbrVar.set(false);
            }
        }
    }

    final /* synthetic */ void zzakb() {
        synchronized (this) {
            if (this.zzfuz) {
                return;
            }
            zza("com.google.android.gms.ads.MobileAds", false, "timeout", (int) (com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime() - this.zzfvb));
            this.zzfvc.set(true);
        }
    }

    final /* synthetic */ void zzakc() {
        this.zzffi.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcgj
            private final zzcgb zzfvf;

            {
                this.zzfvf = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzfvf.zzakd();
            }
        });
    }

    final /* synthetic */ void zzfq(String str) throws JSONException {
        try {
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObject = new JSONObject(str).getJSONObject("initializer_settings").getJSONObject("config");
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                final String next = itKeys.next();
                final Object obj = new Object();
                final zzbbr zzbbrVar = new zzbbr();
                zzbbh zzbbhVarZza = zzbar.zza(zzbbrVar, ((Long) zzyt.zzpe().zzd(zzacu.zzcqz)).longValue(), TimeUnit.SECONDS, this.zzfkf);
                final long jElapsedRealtime = com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime();
                Iterator<String> it = itKeys;
                zzbbhVarZza.zza(new Runnable(this, obj, zzbbrVar, next, jElapsedRealtime) { // from class: com.google.android.gms.internal.ads.zzcgg
                    private final Object zzdeb;
                    private final String zzftt;
                    private final zzcgb zzfvf;
                    private final zzbbr zzfvh;
                    private final long zzfvi;

                    {
                        this.zzfvf = this;
                        this.zzdeb = obj;
                        this.zzfvh = zzbbrVar;
                        this.zzftt = next;
                        this.zzfvi = jElapsedRealtime;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zzfvf.zza(this.zzdeb, this.zzfvh, this.zzftt, this.zzfvi);
                    }
                }, this.zzffi);
                arrayList.add(zzbbhVarZza);
                final zzcgk zzcgkVar = new zzcgk(this, obj, next, jElapsedRealtime, zzbbrVar);
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(next);
                final ArrayList arrayList2 = new ArrayList();
                if (jSONObjectOptJSONObject != null) {
                    try {
                        JSONArray jSONArray = jSONObjectOptJSONObject.getJSONArray("data");
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                            String strOptString = jSONObject2.optString(IjkMediaMeta.IJKM_KEY_FORMAT, "");
                            JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("data");
                            Bundle bundle = new Bundle();
                            if (jSONObjectOptJSONObject2 != null) {
                                Iterator<String> itKeys2 = jSONObjectOptJSONObject2.keys();
                                while (itKeys2.hasNext()) {
                                    String next2 = itKeys2.next();
                                    bundle.putString(next2, jSONObjectOptJSONObject2.optString(next2, ""));
                                }
                            }
                            arrayList2.add(new zzaiw(strOptString, bundle));
                        }
                    } catch (JSONException unused) {
                    }
                }
                zza(next, false, "", 0);
                try {
                    try {
                        final zzams zzamsVarZze = this.zzfvd.zze(next, new JSONObject());
                        this.zzffv.execute(new Runnable(this, zzamsVarZze, zzcgkVar, arrayList2) { // from class: com.google.android.gms.internal.ads.zzcgi
                            private final zzcgb zzfvf;
                            private final zzams zzfvj;
                            private final zzaiq zzfvk;
                            private final List zzfvl;

                            {
                                this.zzfvf = this;
                                this.zzfvj = zzamsVarZze;
                                this.zzfvk = zzcgkVar;
                                this.zzfvl = arrayList2;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.zzfvf.zza(this.zzfvj, this.zzfvk, this.zzfvl);
                            }
                        });
                    } catch (RemoteException e) {
                        zzbad.zzc("", e);
                    }
                } catch (RemoteException unused2) {
                    zzcgkVar.onInitializationFailed("Failed to create Adapter.");
                }
                itKeys = it;
            }
            zzbar.zzf(arrayList).zza(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcgh
                private final zzcgb zzfvf;

                {
                    this.zzfvf = this;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.zzfvf.zzaka();
                }
            }, this.zzffi);
        } catch (JSONException e2) {
            zzawz.zza("Malformed CLD response", e2);
        }
    }

    final /* synthetic */ void zzc(zzait zzaitVar) {
        try {
            zzaitVar.zzc(zzajy());
        } catch (RemoteException e) {
            zzbad.zzc("", e);
        }
    }
}
