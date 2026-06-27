package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcpl extends zzaoz {
    private final zzcpk zzgdk;
    private zzbbr<JSONObject> zzgdl;
    private final JSONObject zzgdm = new JSONObject();
    private boolean zzgdn = false;

    public zzcpl(zzcpk zzcpkVar, zzbbr<JSONObject> zzbbrVar) throws JSONException {
        this.zzgdl = zzbbrVar;
        this.zzgdk = zzcpkVar;
        try {
            this.zzgdm.put("adapter_version", this.zzgdk.zzgdj.zzsx().toString());
            this.zzgdm.put("sdk_version", this.zzgdk.zzgdj.zzsy().toString());
            this.zzgdm.put(AppMeasurementSdk.ConditionalUserProperty.NAME, this.zzgdk.zzfis);
        } catch (RemoteException | NullPointerException | JSONException unused) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaoy
    public final synchronized void zzdc(String str) throws RemoteException {
        if (this.zzgdn) {
            return;
        }
        if (str == null) {
            onFailure("Adapter returned null signals");
            return;
        }
        try {
            this.zzgdm.put("signals", str);
        } catch (JSONException unused) {
        }
        this.zzgdl.set(this.zzgdm);
        this.zzgdn = true;
    }

    @Override // com.google.android.gms.internal.ads.zzaoy
    public final synchronized void onFailure(String str) throws RemoteException {
        if (this.zzgdn) {
            return;
        }
        try {
            this.zzgdm.put("signal_error", str);
        } catch (JSONException unused) {
        }
        this.zzgdl.set(this.zzgdm);
        this.zzgdn = true;
    }
}
