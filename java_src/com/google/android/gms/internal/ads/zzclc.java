package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzclc {
    private final AtomicReference<zzamp> zzgal = new AtomicReference<>();

    zzclc() {
    }

    public final void zzb(zzamp zzampVar) {
        this.zzgal.compareAndSet(null, zzampVar);
    }

    public final zzams zze(String str, JSONObject jSONObject) throws RemoteException {
        if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
            return new zzanl((MediationAdapter) new AdMobAdapter());
        }
        if ("com.google.ads.mediation.AdUrlAdapter".equals(str)) {
            return new zzanl((MediationAdapter) new AdUrlAdapter());
        }
        if ("com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str)) {
            return new zzanl(new zzapl());
        }
        return zzf(str, jSONObject);
    }

    public final zzaov zzcy(String str) throws RemoteException {
        return zzaks().zzcy(str);
    }

    public final boolean zzakr() {
        return this.zzgal.get() != null;
    }

    private final zzams zzf(String str, JSONObject jSONObject) throws RemoteException {
        zzamp zzampVarZzaks = zzaks();
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            try {
                if (zzampVarZzaks.zzcv(jSONObject.getString("class_name"))) {
                    return zzampVarZzaks.zzcu("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
                }
                return zzampVarZzaks.zzcu("com.google.ads.mediation.customevent.CustomEventAdapter");
            } catch (JSONException e) {
                zzbad.zzc("Invalid custom event.", e);
            }
        }
        return zzampVarZzaks.zzcu(str);
    }

    private final zzamp zzaks() throws RemoteException {
        zzamp zzampVar = this.zzgal.get();
        if (zzampVar != null) {
            return zzampVar;
        }
        zzbad.zzep("Unexpected call to adapter creator.");
        throw new RemoteException();
    }
}
