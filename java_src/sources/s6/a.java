package s6;

import android.os.Bundle;
import com.bytedance.tea.common.utility.d;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class a {
    public static void a(String str, JSONObject jSONObject) {
        if (d.a(str)) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        JSONObject jSONObject2 = jSONObject;
        try {
            jSONObject2.put("_event_v3", 1);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        com.ss.android.tea.common.applog.d.f(null, "event_v3", str, null, 0L, 0L, jSONObject2);
    }

    public static void b(String str, Bundle bundle) {
        if (d.a(str)) {
            return;
        }
        bundle.keySet();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("_event_v3", 1);
            for (String str2 : bundle.keySet()) {
                jSONObject.put(str2, bundle.get(str2));
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        com.ss.android.tea.common.applog.d.f(null, "event_v3", str, null, 0L, 0L, jSONObject);
    }
}
