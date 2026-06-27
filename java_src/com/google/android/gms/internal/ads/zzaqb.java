package com.google.android.gms.internal.ads;

import com.narvii.account.notice.AccountNotice;
import org.json.JSONException;
import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public class zzaqb {
    private final zzbgz zzdbs;
    private final String zzdjd;

    public zzaqb(zzbgz zzbgzVar) {
        this(zzbgzVar, "");
    }

    public zzaqb(zzbgz zzbgzVar, String str) {
        this.zzdbs = zzbgzVar;
        this.zzdjd = str;
    }

    public final void zzdh(String str) {
        try {
            JSONObject jSONObjectPut = new JSONObject().put(AccountNotice.LEVEL_MESSAGE, str).put("action", this.zzdjd);
            if (this.zzdbs != null) {
                this.zzdbs.zza("onError", jSONObjectPut);
            }
        } catch (JSONException e) {
            zzbad.zzc("Error occurred while dispatching error event.", e);
        }
    }

    public final void zzdi(String str) throws JSONException {
        try {
            this.zzdbs.zza("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (JSONException e) {
            zzbad.zzc("Error occured while dispatching ready Event.", e);
        }
    }

    public final void zza(int i, int i2, int i3, int i4) throws JSONException {
        try {
            this.zzdbs.zza("onSizeChanged", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            zzbad.zzc("Error occured while dispatching size change.", e);
        }
    }

    public final void zzb(int i, int i2, int i3, int i4) throws JSONException {
        try {
            this.zzdbs.zza("onDefaultPositionReceived", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            zzbad.zzc("Error occured while dispatching default position.", e);
        }
    }

    public final void zzdj(String str) throws JSONException {
        try {
            this.zzdbs.zza("onStateChanged", new JSONObject().put("state", str));
        } catch (JSONException e) {
            zzbad.zzc("Error occured while dispatching state change.", e);
        }
    }

    public final void zza(int i, int i2, int i3, int i4, float f, int i5) throws JSONException {
        try {
            this.zzdbs.zza("onScreenInfoChanged", new JSONObject().put("width", i).put("height", i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", f).put("rotation", i5));
        } catch (JSONException e) {
            zzbad.zzc("Error occured while obtaining screen information.", e);
        }
    }
}
