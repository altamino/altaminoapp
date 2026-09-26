package com.bytedance.tea.common.utility;

import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class d {
    public static boolean a(String str) {
        return str == null || str.length() == 0;
    }

    public static boolean a(String str, String str2) {
        return (a(str) && a(str2)) || (str != null && str.equals(str2));
    }

    public static String a(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                String str2 = map.get(str);
                if (!a(str) && !a(str2)) {
                    jSONObject.put(str, str2);
                }
            }
            return jSONObject.toString();
        } catch (Exception unused) {
            return null;
        }
    }
}
