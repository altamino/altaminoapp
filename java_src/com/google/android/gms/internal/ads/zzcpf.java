package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes2.dex */
public final class zzcpf {
    private final Executor zzffi;
    private final zzclc zzfvd;
    private final Map<String, zzcpk> zzgdg = new ConcurrentHashMap();
    private final Map<String, List<zzcpk>> zzgdh = new ConcurrentHashMap();
    private final Context zzlj;

    public zzcpf(zzclc zzclcVar, Executor executor, Context context) {
        this.zzfvd = zzclcVar;
        this.zzffi = executor;
        this.zzlj = context;
    }

    public final void zzakw() {
        com.google.android.gms.ads.internal.zzk.zzlk().zzvc().zzb(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcpg
            private final zzcpf zzgdi;

            {
                this.zzgdi = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzgdi.zzala();
            }
        });
        this.zzffi.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcph
            private final zzcpf zzgdi;

            {
                this.zzgdi = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzgdi.zzakz();
            }
        });
    }

    public final Map<String, List<zzcpk>> zzakx() {
        return this.zzgdh;
    }

    public final void zzfr(String str) {
        if (TextUtils.isEmpty(str) || this.zzgdg.containsKey(str)) {
            return;
        }
        try {
            this.zzgdg.put(str, new zzcpk(str, "", new Bundle(), this.zzfvd.zzcy(str)));
        } catch (RemoteException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzaky, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final synchronized void zzalb() {
        JSONArray jSONArrayOptJSONArray;
        JSONObject jSONObjectZzuv = com.google.android.gms.ads.internal.zzk.zzlk().zzvc().zzvr().zzuv();
        if (jSONObjectZzuv != null) {
            try {
                JSONArray jSONArrayOptJSONArray2 = jSONObjectZzuv.optJSONArray("ad_unit_id_settings");
                if (jSONArrayOptJSONArray2 != null) {
                    for (int i = 0; i < jSONArrayOptJSONArray2.length(); i++) {
                        JSONObject jSONObject = jSONArrayOptJSONArray2.getJSONObject(i);
                        String strOptString = jSONObject.optString("ad_unit_id", "");
                        String strOptString2 = jSONObject.optString(IjkMediaMeta.IJKM_KEY_FORMAT, "");
                        ArrayList arrayList = new ArrayList();
                        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("mediation_config");
                        if (jSONObjectOptJSONObject != null && (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("ad_networks")) != null) {
                            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                                JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i2);
                                ArrayList arrayList2 = new ArrayList();
                                if (jSONObject2 != null) {
                                    JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("data");
                                    Bundle bundle = new Bundle();
                                    if (jSONObjectOptJSONObject2 != null) {
                                        Iterator<String> itKeys = jSONObjectOptJSONObject2.keys();
                                        while (itKeys.hasNext()) {
                                            String next = itKeys.next();
                                            bundle.putString(next, jSONObjectOptJSONObject2.optString(next, ""));
                                        }
                                    }
                                    JSONArray jSONArrayOptJSONArray3 = jSONObject2.optJSONArray("rtb_adapters");
                                    if (jSONArrayOptJSONArray3 != null) {
                                        ArrayList arrayList3 = new ArrayList();
                                        for (int i3 = 0; i3 < jSONArrayOptJSONArray3.length(); i3++) {
                                            String strOptString3 = jSONArrayOptJSONArray3.optString(i3, "");
                                            if (!TextUtils.isEmpty(strOptString3)) {
                                                arrayList3.add(strOptString3);
                                            }
                                        }
                                        int size = arrayList3.size();
                                        int i4 = 0;
                                        while (i4 < size) {
                                            Object obj = arrayList3.get(i4);
                                            i4++;
                                            String str = (String) obj;
                                            zzfr(str);
                                            zzcpk zzcpkVar = this.zzgdg.get(str);
                                            if (zzcpkVar != null) {
                                                arrayList2.add(new zzcpk(str, strOptString2, bundle, zzcpkVar.zzgdj));
                                            }
                                        }
                                    }
                                }
                                arrayList.addAll(arrayList2);
                            }
                        }
                        if (!TextUtils.isEmpty(strOptString)) {
                            this.zzgdh.put(strOptString, arrayList);
                        }
                    }
                }
            } catch (JSONException e) {
                zzawz.zza("Malformed config loading JSON.", e);
            }
        }
    }

    final /* synthetic */ void zzala() {
        this.zzffi.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcpi
            private final zzcpf zzgdi;

            {
                this.zzgdi = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzgdi.zzalb();
            }
        });
    }
}
