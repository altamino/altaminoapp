package com.facebook.ads.redexgen.X;

import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.0m, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C01680m {
    private C01680m() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean A00(JSONArray jSONArray, JSONArray jSONArray2) {
        EnumC02142k enumC02142kA00 = null;
        int i = 0;
        boolean z = false;
        char c = jSONArray.length() != jSONArray2.length() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return z;
                case 3:
                    i = 0;
                    c = 4;
                    break;
                case 4:
                    jSONArray = jSONArray;
                    if (i >= jSONArray.length()) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    jSONArray = jSONArray;
                    jSONArray2 = jSONArray2;
                    enumC02142kA00 = EnumC02142k.A00(jSONArray, i);
                    EnumC02142k t2 = EnumC02142k.A00(jSONArray2, i);
                    if (enumC02142kA00 != t2) {
                        c = 2;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    jSONArray = jSONArray;
                    jSONArray2 = jSONArray2;
                    enumC02142kA00 = enumC02142kA00;
                    if (!enumC02142kA00.A05(jSONArray, jSONArray2, i)) {
                        c = 2;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    i++;
                    c = 4;
                    break;
                case '\b':
                    z = true;
                    c = 2;
                    break;
            }
        }
    }

    public static boolean A02(JSONObject jSONObject, JSONObject jSONObject2) {
        Iterator<String> itKeys = null;
        String next = null;
        EnumC02142k enumC02142kA01 = null;
        boolean z = false;
        char c = jSONObject.length() != jSONObject2.length() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return z;
                case 3:
                    jSONObject = jSONObject;
                    itKeys = jSONObject.keys();
                    c = 4;
                    break;
                case 4:
                    itKeys = itKeys;
                    if (!itKeys.hasNext()) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    jSONObject2 = jSONObject2;
                    itKeys = itKeys;
                    next = itKeys.next();
                    if (!jSONObject2.has(next)) {
                        c = 2;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    jSONObject = jSONObject;
                    jSONObject2 = jSONObject2;
                    next = next;
                    enumC02142kA01 = EnumC02142k.A01(jSONObject, next);
                    EnumC02142k type1 = EnumC02142k.A01(jSONObject2, next);
                    if (enumC02142kA01 != type1) {
                        c = 2;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    jSONObject = jSONObject;
                    jSONObject2 = jSONObject2;
                    next = next;
                    enumC02142kA01 = enumC02142kA01;
                    if (!enumC02142kA01.A07(jSONObject, jSONObject2, next)) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case '\b':
                    z = true;
                    c = 2;
                    break;
            }
        }
    }
}
