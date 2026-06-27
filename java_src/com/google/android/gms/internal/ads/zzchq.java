package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.StringReader;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzchq {
    private final Executor zzffi;
    private final zzcxv zzfjp;
    private final zzbai zzfxa;
    private final Context zzlj;

    public zzchq(Context context, zzbai zzbaiVar, zzcxv zzcxvVar, Executor executor) {
        this.zzlj = context;
        this.zzfxa = zzbaiVar;
        this.zzfjp = zzcxvVar;
        this.zzffi = executor;
    }

    protected final zzbbh<zzcxu> zzakg() {
        zzalr zzalrVarZzb = com.google.android.gms.ads.internal.zzk.zzlt().zzb(this.zzlj, this.zzfxa);
        zzaln<JSONObject> zzalnVar = zzalo.zzddi;
        final zzalj zzaljVarZza = zzalrVarZzb.zza("google.afma.response.normalize", zzalnVar, zzalnVar);
        final zzxt zzxtVar = this.zzfjp.zzghg.zzchb;
        return zzbar.zza(zzbar.zza(zzbar.zza(zzbar.zzm(""), new zzbal(this, zzxtVar) { // from class: com.google.android.gms.internal.ads.zzchr
            private final zzchq zzfxb;
            private final zzxt zzfxc;

            {
                this.zzfxb = this;
                this.zzfxc = zzxtVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) throws JSONException {
                zzxt zzxtVar2 = this.zzfxc;
                String str = zzxtVar2.zzcgj;
                String str2 = zzxtVar2.zzcgk;
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("headers", new JSONObject());
                jSONObject3.put(TtmlNode.TAG_BODY, str);
                jSONObject2.put("base_url", "");
                jSONObject2.put("signals", new JSONObject(str2));
                jSONObject.put("request", jSONObject2);
                jSONObject.put("response", jSONObject3);
                jSONObject.put("flags", new JSONObject());
                return zzbar.zzm(jSONObject);
            }
        }, this.zzffi), new zzbal(zzaljVarZza) { // from class: com.google.android.gms.internal.ads.zzchs
            private final zzalj zzfxd;

            {
                this.zzfxd = zzaljVarZza;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) {
                return this.zzfxd.zzi((JSONObject) obj);
            }
        }, this.zzffi), new zzbal(this) { // from class: com.google.android.gms.internal.ads.zzcht
            private final zzchq zzfxb;

            {
                this.zzfxb = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) {
                return this.zzfxb.zzn((JSONObject) obj);
            }
        }, this.zzffi);
    }

    final /* synthetic */ zzbbh zzn(JSONObject jSONObject) throws Exception {
        return zzbar.zzm(new zzcxu(new zzcxr(this.zzfjp), zzcxs.zza(new StringReader(jSONObject.toString()))));
    }
}
