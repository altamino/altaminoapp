package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
final /* synthetic */ class zzcxd implements zzcuz {
    static final zzcuz zzgjq = new zzcxd();

    private zzcxd() {
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final void zzt(Object obj) throws JSONException {
        try {
            ((JSONObject) obj).getJSONObject("sdk_env").put("container_version", 12451009);
        } catch (JSONException unused) {
        }
    }
}
