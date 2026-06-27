package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public final class zzapx {
    private final boolean zzdiq;
    private final boolean zzdir;
    private final boolean zzdis;
    private final boolean zzdit;
    private final boolean zzdiu;

    private zzapx(zzapz zzapzVar) {
        this.zzdiq = zzapzVar.zzdiq;
        this.zzdir = zzapzVar.zzdir;
        this.zzdis = zzapzVar.zzdis;
        this.zzdit = zzapzVar.zzdit;
        this.zzdiu = zzapzVar.zzdiu;
    }

    public final JSONObject toJson() {
        try {
            return new JSONObject().put("sms", this.zzdiq).put("tel", this.zzdir).put("calendar", this.zzdis).put("storePicture", this.zzdit).put("inlineVideo", this.zzdiu);
        } catch (JSONException e) {
            zzbad.zzc("Error occured while obtaining the MRAID capabilities.", e);
            return null;
        }
    }
}
