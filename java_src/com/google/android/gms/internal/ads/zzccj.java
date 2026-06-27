package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzccj {
    private final zzbhf zzbrt;
    private final zzbai zzdld;
    private final zzdh zzeko;
    private final Executor zzffv;
    private final com.google.android.gms.ads.internal.zza zzfrm;
    private final zzccq zzfsh = new zzccq(null);
    private final zzahu zzfsi = new zzahu();
    private zzbbh<zzbgz> zzfsj;
    private final Context zzlj;

    public zzccj(Context context, Executor executor, zzdh zzdhVar, zzbai zzbaiVar, com.google.android.gms.ads.internal.zza zzaVar, zzbhf zzbhfVar) {
        this.zzlj = context;
        this.zzffv = executor;
        this.zzeko = zzdhVar;
        this.zzdld = zzbaiVar;
        this.zzfrm = zzaVar;
        this.zzbrt = zzbhfVar;
    }

    public final synchronized void zzajj() {
        this.zzfsj = zzbar.zza(zzbhf.zza(this.zzlj, this.zzdld, (String) zzyt.zzpe().zzd(zzacu.zzcsa), this.zzeko, this.zzfrm), new zzbam(this) { // from class: com.google.android.gms.internal.ads.zzcck
            private final zzccj zzfsk;

            {
                this.zzfsk = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbam
            public final Object apply(Object obj) {
                return this.zzfsk.zzl((zzbgz) obj);
            }
        }, this.zzffv);
        zzbao.zza(this.zzfsj, "NativeJavascriptExecutor.initializeEngine");
    }

    public final synchronized void destroy() {
        if (this.zzfsj == null) {
            return;
        }
        zzbar.zza(this.zzfsj, new zzccm(this), this.zzffv);
        this.zzfsj = null;
    }

    public final synchronized zzbbh<JSONObject> zzc(final String str, final JSONObject jSONObject) {
        if (this.zzfsj == null) {
            return zzbar.zzm(null);
        }
        return zzbar.zza(this.zzfsj, new zzbal(this, str, jSONObject) { // from class: com.google.android.gms.internal.ads.zzccl
            private final String zzdbk;
            private final zzccj zzfsk;
            private final JSONObject zzfsl;

            {
                this.zzfsk = this;
                this.zzdbk = str;
                this.zzfsl = jSONObject;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) {
                return this.zzfsk.zza(this.zzdbk, this.zzfsl, (zzbgz) obj);
            }
        }, this.zzffv);
    }

    public final synchronized void zza(String str, zzaho<Object> zzahoVar) {
        if (this.zzfsj == null) {
            return;
        }
        zzbar.zza(this.zzfsj, new zzccn(this, str, zzahoVar), this.zzffv);
    }

    public final synchronized void zzb(String str, zzaho<Object> zzahoVar) {
        if (this.zzfsj == null) {
            return;
        }
        zzbar.zza(this.zzfsj, new zzcco(this, str, zzahoVar), this.zzffv);
    }

    public final synchronized void zza(String str, Map<String, ?> map) {
        if (this.zzfsj == null) {
            return;
        }
        zzbar.zza(this.zzfsj, new zzccp(this, str, map), this.zzffv);
    }

    public final <T> void zza(WeakReference<T> weakReference, String str, zzaho<T> zzahoVar) {
        zza(str, new zzcct(this, weakReference, str, zzahoVar, null));
    }

    final /* synthetic */ zzbbh zza(String str, JSONObject jSONObject, zzbgz zzbgzVar) throws Exception {
        return this.zzfsi.zza(zzbgzVar, str, jSONObject);
    }

    final /* synthetic */ zzbgz zzl(zzbgz zzbgzVar) {
        zzbgzVar.zza("/result", this.zzfsi);
        zzbii zzbiiVarZzaai = zzbgzVar.zzaai();
        zzccq zzccqVar = this.zzfsh;
        zzbiiVarZzaai.zza(null, zzccqVar, zzccqVar, zzccqVar, zzccqVar, false, null, new com.google.android.gms.ads.internal.zzb(this.zzlj, null, null), null, null);
        return zzbgzVar;
    }
}
