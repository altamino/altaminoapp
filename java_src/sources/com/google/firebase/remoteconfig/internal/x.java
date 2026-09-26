package com.google.firebase.remoteconfig.internal;

import android.os.Bundle;
import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes11.dex */
public class x {
    public static final String ANALYTICS_ORIGIN_PERSONALIZATION = "fp";
    public static final String ARM_INDEX = "armIndex";
    public static final String CHOICE_ID = "choiceId";
    public static final String EXTERNAL_ARM_INDEX_PARAM = "arm_index";
    public static final String EXTERNAL_ARM_VALUE_PARAM = "arm_value";
    public static final String EXTERNAL_EVENT = "personalization_assignment";
    public static final String EXTERNAL_GROUP_PARAM = "group";
    public static final String EXTERNAL_PERSONALIZATION_ID_PARAM = "personalization_id";
    public static final String EXTERNAL_RC_PARAMETER_PARAM = "arm_key";
    public static final String GROUP = "group";
    public static final String INTERNAL_CHOICE_ID_PARAM = "_fpid";
    public static final String INTERNAL_EVENT = "_fpc";
    public static final String PERSONALIZATION_ID = "personalizationId";
    private final o4.b<com.google.firebase.analytics.connector.a> analyticsConnector;
    private final Map<String, String> loggedChoiceIds = Collections.synchronizedMap(new HashMap());

    public void a(@NonNull String str, @NonNull g gVar) {
        JSONObject jSONObjectOptJSONObject;
        com.google.firebase.analytics.connector.a aVar = this.analyticsConnector.get();
        if (aVar == null) {
            return;
        }
        JSONObject jSONObjectI = gVar.i();
        if (jSONObjectI.length() < 1) {
            return;
        }
        JSONObject jSONObjectG = gVar.g();
        if (jSONObjectG.length() >= 1 && (jSONObjectOptJSONObject = jSONObjectI.optJSONObject(str)) != null) {
            String strOptString = jSONObjectOptJSONObject.optString(CHOICE_ID);
            if (strOptString.isEmpty()) {
                return;
            }
            synchronized (this.loggedChoiceIds) {
                try {
                    if (strOptString.equals(this.loggedChoiceIds.get(str))) {
                        return;
                    }
                    this.loggedChoiceIds.put(str, strOptString);
                    Bundle bundle = new Bundle();
                    bundle.putString(EXTERNAL_RC_PARAMETER_PARAM, str);
                    bundle.putString(EXTERNAL_ARM_VALUE_PARAM, jSONObjectG.optString(str));
                    bundle.putString(EXTERNAL_PERSONALIZATION_ID_PARAM, jSONObjectOptJSONObject.optString(PERSONALIZATION_ID));
                    bundle.putInt(EXTERNAL_ARM_INDEX_PARAM, jSONObjectOptJSONObject.optInt(ARM_INDEX, -1));
                    bundle.putString("group", jSONObjectOptJSONObject.optString("group"));
                    aVar.a(ANALYTICS_ORIGIN_PERSONALIZATION, EXTERNAL_EVENT, bundle);
                    Bundle bundle2 = new Bundle();
                    bundle2.putString(INTERNAL_CHOICE_ID_PARAM, strOptString);
                    aVar.a(ANALYTICS_ORIGIN_PERSONALIZATION, INTERNAL_EVENT, bundle2);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public x(o4.b<com.google.firebase.analytics.connector.a> bVar) {
        this.analyticsConnector = bVar;
    }
}
