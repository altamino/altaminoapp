package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
final class zzcis implements zzalm<zzcir> {
    zzcis() {
    }

    @Override // com.google.android.gms.internal.ads.zzalm
    public final /* synthetic */ JSONObject zzj(zzcir zzcirVar) throws JSONException {
        zzcir zzcirVar2 = zzcirVar;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        jSONObject2.put("base_url", zzcirVar2.zzfxu.zztu());
        jSONObject2.put("signals", zzcirVar2.zzfxt);
        jSONObject3.put(TtmlNode.TAG_BODY, zzcirVar2.zzfxs.zzdnh);
        jSONObject3.put("headers", com.google.android.gms.ads.internal.zzk.zzlg().zzi(zzcirVar2.zzfxs.zzab));
        jSONObject3.put("response_code", zzcirVar2.zzfxs.zzfya);
        jSONObject3.put("latency", zzcirVar2.zzfxs.zzfyb);
        jSONObject.put("request", jSONObject2);
        jSONObject.put("response", jSONObject3);
        jSONObject.put("flags", zzcirVar2.zzfxu.zztx());
        return jSONObject;
    }
}
