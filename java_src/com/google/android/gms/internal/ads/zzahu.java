package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.narvii.account.notice.AccountNotice;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public final class zzahu implements zzaho<Object> {
    private final Object lock = new Object();
    private final Map<String, zzahw> zzdaq = new HashMap();

    public final void zza(String str, zzahw zzahwVar) {
        synchronized (this.lock) {
            this.zzdaq.put(str, zzahwVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaho
    public final void zza(Object obj, Map<String, String> map) {
        String strConcat;
        String str = map.get("id");
        String str2 = map.get(AccountNotice.LEVEL_FAIL);
        String str3 = map.get("fail_reason");
        String str4 = map.get("fail_stack");
        String str5 = map.get("result");
        if (TextUtils.isEmpty(str4)) {
            str3 = "Unknown Fail Reason.";
        }
        if (TextUtils.isEmpty(str4)) {
            strConcat = "";
        } else {
            String strValueOf = String.valueOf(str4);
            strConcat = strValueOf.length() != 0 ? "\n".concat(strValueOf) : new String("\n");
        }
        synchronized (this.lock) {
            zzahw zzahwVarRemove = this.zzdaq.remove(str);
            if (zzahwVarRemove == null) {
                String strValueOf2 = String.valueOf(str);
                zzbad.zzep(strValueOf2.length() != 0 ? "Received result for unexpected method invocation: ".concat(strValueOf2) : new String("Received result for unexpected method invocation: "));
                return;
            }
            if (!TextUtils.isEmpty(str2)) {
                String strValueOf3 = String.valueOf(str3);
                String strValueOf4 = String.valueOf(strConcat);
                zzahwVarRemove.onFailure(strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3));
            } else {
                if (str5 == null) {
                    zzahwVarRemove.zzc(null);
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(str5);
                    if (zzawz.zzvj()) {
                        String strValueOf5 = String.valueOf(jSONObject.toString(2));
                        zzawz.zzds(strValueOf5.length() != 0 ? "Result GMSG: ".concat(strValueOf5) : new String("Result GMSG: "));
                    }
                    zzahwVarRemove.zzc(jSONObject);
                } catch (JSONException e) {
                    zzahwVarRemove.onFailure(e.getMessage());
                }
            }
        }
    }

    public final <EngineT extends zzakg> zzbbh<JSONObject> zza(EngineT enginet, String str, JSONObject jSONObject) throws JSONException {
        zzbbr zzbbrVar = new zzbbr();
        com.google.android.gms.ads.internal.zzk.zzlg();
        String strZzwb = zzaxi.zzwb();
        zza(strZzwb, new zzahv(this, zzbbrVar));
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", strZzwb);
            jSONObject2.put("args", jSONObject);
            enginet.zzb(str, jSONObject2);
        } catch (Exception e) {
            zzbbrVar.setException(e);
        }
        return zzbbrVar;
    }
}
