package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbkz extends zzaac {
    private final zzbai zzbtc;
    private final zzclc zzfee;
    private final zzcjz<zzams, zzclb> zzfef;
    private final zzcpf zzfeg;
    private final zzcgb zzfeh;
    private final Context zzlj;
    private boolean zzxs = false;

    zzbkz(Context context, zzbai zzbaiVar, zzclc zzclcVar, zzcjz<zzams, zzclb> zzcjzVar, zzcpf zzcpfVar, zzcgb zzcgbVar) {
        this.zzlj = context;
        this.zzbtc = zzbaiVar;
        this.zzfee = zzclcVar;
        this.zzfef = zzcjzVar;
        this.zzfeg = zzcpfVar;
        this.zzfeh = zzcgbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaab
    public final synchronized void zza() {
        if (this.zzxs) {
            zzbad.zzep("Mobile ads is initialized already.");
            return;
        }
        zzacu.initialize(this.zzlj);
        com.google.android.gms.ads.internal.zzk.zzlk().zzd(this.zzlj, this.zzbtc);
        com.google.android.gms.ads.internal.zzk.zzlm().initialize(this.zzlj);
        this.zzxs = true;
        this.zzfeh.zzakd();
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcqu)).booleanValue()) {
            this.zzfeg.zzakw();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaab
    public final synchronized void setAppVolume(float f) {
        com.google.android.gms.ads.internal.zzk.zzll().setAppVolume(f);
    }

    @Override // com.google.android.gms.internal.ads.zzaab
    public final synchronized float zzpq() {
        return com.google.android.gms.ads.internal.zzk.zzll().zzpq();
    }

    @Override // com.google.android.gms.internal.ads.zzaab
    public final synchronized void setAppMuted(boolean z) {
        com.google.android.gms.ads.internal.zzk.zzll().setAppMuted(z);
    }

    @Override // com.google.android.gms.internal.ads.zzaab
    public final synchronized boolean zzpr() {
        return com.google.android.gms.ads.internal.zzk.zzll().zzpr();
    }

    @Override // com.google.android.gms.internal.ads.zzaab
    public final synchronized void zzbu(String str) {
        zzacu.initialize(this.zzlj);
        if (!TextUtils.isEmpty(str)) {
            if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcsv)).booleanValue()) {
                com.google.android.gms.ads.internal.zzk.zzlo().zza(this.zzlj, this.zzbtc, str, (Runnable) null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaab
    public final void zzc(IObjectWrapper iObjectWrapper, String str) {
        if (iObjectWrapper == null) {
            zzbad.zzen("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        if (context == null) {
            zzbad.zzen("Context is null. Failed to open debug menu.");
            return;
        }
        zzayb zzaybVar = new zzayb(context);
        zzaybVar.setAdUnitId(str);
        zzaybVar.zzp(this.zzbtc.zzbsx);
        zzaybVar.showDialog();
    }

    @Override // com.google.android.gms.internal.ads.zzaab
    public final void zzb(String str, IObjectWrapper iObjectWrapper) throws JSONException {
        String strZzaep = ((Boolean) zzyt.zzpe().zzd(zzacu.zzcsx)).booleanValue() ? zzaep() : "";
        if (!TextUtils.isEmpty(strZzaep)) {
            str = strZzaep;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        zzacu.initialize(this.zzlj);
        boolean zBooleanValue = ((Boolean) zzyt.zzpe().zzd(zzacu.zzcsv)).booleanValue() | ((Boolean) zzyt.zzpe().zzd(zzacu.zzcot)).booleanValue();
        Runnable runnable = null;
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcot)).booleanValue()) {
            zBooleanValue = true;
            final Runnable runnable2 = (Runnable) ObjectWrapper.unwrap(iObjectWrapper);
            runnable = new Runnable(this, runnable2) { // from class: com.google.android.gms.internal.ads.zzbla
                private final Runnable zzead;
                private final zzbkz zzfei;

                {
                    this.zzfei = this;
                    this.zzead = runnable2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    final zzbkz zzbkzVar = this.zzfei;
                    final Runnable runnable3 = this.zzead;
                    zzbbm.zzeae.execute(new Runnable(zzbkzVar, runnable3) { // from class: com.google.android.gms.internal.ads.zzblb
                        private final Runnable zzead;
                        private final zzbkz zzfei;

                        {
                            this.zzfei = zzbkzVar;
                            this.zzead = runnable3;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zzfei.zzf(this.zzead);
                        }
                    });
                }
            };
        }
        if (zBooleanValue) {
            com.google.android.gms.ads.internal.zzk.zzlo().zza(this.zzlj, this.zzbtc, str, runnable);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaab
    public final String getVersionString() {
        return this.zzbtc.zzbsx;
    }

    @Override // com.google.android.gms.internal.ads.zzaab
    public final void zzbv(String str) {
        this.zzfeg.zzfr(str);
    }

    @Override // com.google.android.gms.internal.ads.zzaab
    public final void zza(zzamp zzampVar) throws RemoteException {
        this.zzfee.zzb(zzampVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaab
    public final void zza(zzait zzaitVar) throws RemoteException {
        this.zzfeh.zzb(zzaitVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaab
    public final List<zzaio> zzps() throws RemoteException {
        return this.zzfeh.zzajy();
    }

    private final String zzaep() {
        Context applicationContext = this.zzlj.getApplicationContext() == null ? this.zzlj : this.zzlj.getApplicationContext();
        try {
            return Wrappers.packageManager(applicationContext).getApplicationInfo(applicationContext.getPackageName(), 128).metaData.getString("com.google.android.gms.ads.APPLICATION_ID");
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            zzawz.zza("Error getting metadata", e);
            return "";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ void zzf(Runnable runnable) {
        Preconditions.checkMainThread("Adapters must be initialized on the main thread.");
        Map<String, zzamm> mapZzuu = com.google.android.gms.ads.internal.zzk.zzlk().zzvc().zzvr().zzuu();
        if (mapZzuu == null || mapZzuu.isEmpty()) {
            return;
        }
        if (runnable != null) {
            try {
                runnable.run();
            } catch (Throwable th) {
                zzbad.zzd("Could not initialize rewarded ads.", th);
                return;
            }
        }
        if (this.zzfee.zzakr()) {
            HashMap map = new HashMap();
            IObjectWrapper iObjectWrapperWrap = ObjectWrapper.wrap(this.zzlj);
            Iterator<zzamm> it = mapZzuu.values().iterator();
            while (it.hasNext()) {
                for (zzaml zzamlVar : it.next().zzdfd) {
                    String str = zzamlVar.zzdeq;
                    for (String str2 : zzamlVar.zzdei) {
                        if (!map.containsKey(str2)) {
                            map.put(str2, new ArrayList());
                        }
                        if (str != null) {
                            ((Collection) map.get(str2)).add(str);
                        }
                    }
                }
            }
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry entry : map.entrySet()) {
                String str3 = (String) entry.getKey();
                try {
                    zzcjy<zzams, ListenerT> zzcjyVarZzd = this.zzfef.zzd(str3, jSONObject);
                    if (zzcjyVarZzd != 0) {
                        zzams zzamsVar = (zzams) zzcjyVarZzd.zzdgc;
                        if (!zzamsVar.isInitialized() && zzamsVar.zzsj()) {
                            zzamsVar.zza(iObjectWrapperWrap, (zzclb) zzcjyVarZzd.zzfzn, (List<String>) entry.getValue());
                            String strValueOf = String.valueOf(str3);
                            zzbad.zzdp(strValueOf.length() != 0 ? "Initialized rewarded video mediation adapter ".concat(strValueOf) : new String("Initialized rewarded video mediation adapter "));
                        }
                    }
                } catch (Throwable th2) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 56);
                    sb.append("Failed to initialize rewarded video mediation adapter \"");
                    sb.append(str3);
                    sb.append("\"");
                    zzbad.zzd(sb.toString(), th2);
                }
            }
        }
    }
}
