package com.google.firebase.remoteconfig.internal.rollouts;

import android.util.Log;
import androidx.annotation.NonNull;
import c5.h;
import com.google.firebase.remoteconfig.internal.g;
import com.google.firebase.remoteconfig.internal.o;
import java.util.HashSet;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class a {
    o getParameterHandler;

    @NonNull
    public static a a(@NonNull o oVar) {
        return new a(oVar);
    }

    a(o oVar) {
        this.getParameterHandler = oVar;
    }

    @NonNull
    com.google.firebase.remoteconfig.interop.rollouts.e b(@NonNull g gVar) throws h {
        JSONArray jSONArrayJ = gVar.j();
        long jK = gVar.k();
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < jSONArrayJ.length(); i10++) {
            try {
                JSONObject jSONObject = jSONArrayJ.getJSONObject(i10);
                String string = jSONObject.getString(g.ROLLOUT_METADATA_ID);
                JSONArray jSONArray = jSONObject.getJSONArray(g.ROLLOUT_METADATA_AFFECTED_KEYS);
                if (jSONArray.length() > 1) {
                    Log.w(com.google.firebase.remoteconfig.a.TAG, String.format("Rollout has multiple affected parameter keys.Only the first key will be included in RolloutsState. rolloutId: %s, affectedParameterKeys: %s", string, jSONArray));
                }
                String strOptString = jSONArray.optString(0, "");
                hashSet.add(com.google.firebase.remoteconfig.interop.rollouts.d.a().d(string).f(jSONObject.getString(g.ROLLOUT_METADATA_VARIANT_ID)).b(strOptString).c(this.getParameterHandler.j(strOptString)).e(jK).a());
            } catch (JSONException e) {
                throw new h("Exception parsing rollouts metadata to create RolloutsState.", e);
            }
        }
        return com.google.firebase.remoteconfig.interop.rollouts.e.a(hashSet);
    }
}
