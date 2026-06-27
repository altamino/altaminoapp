package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.De, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0488De implements CG<String> {
    private static byte[] A01;
    private final Map<String, String> A00;

    static {
        A03();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 77);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A01 = new byte[]{-21, -85, 58, -8, -66};
    }

    private C0488De(Enumeration<InetAddress> enumeration) {
        this.A00 = A01(enumeration);
    }

    public /* synthetic */ C0488De(Enumeration enumeration, C0486Dc c0486Dc) {
        this(enumeration);
    }

    private static Map<String, String> A01(Enumeration<InetAddress> enumeration) {
        InetAddress inetAddress = null;
        String hostAddress = null;
        String strA00 = null;
        HashMap map = new HashMap();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    enumeration = enumeration;
                    if (!enumeration.hasMoreElements()) {
                        c = 11;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    enumeration = enumeration;
                    inetAddress = enumeration.nextElement();
                    if (!(inetAddress instanceof Inet4Address)) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    inetAddress = inetAddress;
                    if (!(inetAddress instanceof Inet6Address)) {
                        c = 2;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    inetAddress = inetAddress;
                    hostAddress = inetAddress.getHostAddress();
                    if (!(inetAddress instanceof Inet4Address)) {
                        c = '\n';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    strA00 = A00(2, 2, 119);
                    c = 7;
                    break;
                case 7:
                    hostAddress = hostAddress;
                    if (!hostAddress.contains(A00(4, 1, 76))) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    String str = hostAddress;
                    hostAddress = str.substring(0, str.indexOf(37));
                    c = '\t';
                    break;
                case '\t':
                    map = map;
                    hostAddress = hostAddress;
                    strA00 = strA00;
                    map.put(strA00, hostAddress);
                    c = 2;
                    break;
                case '\n':
                    strA00 = A00(0, 2, 40);
                    c = 7;
                    break;
                case 11:
                    return map;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.CG
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final JSONObject A7A(String str, JSONObject jSONObject) throws JSONException {
        Map.Entry<String, String> next = null;
        JSONObject jSONObject2 = new JSONObject();
        Iterator<Map.Entry<String, String>> it = this.A00.entrySet().iterator();
        boolean z = false;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = '\b';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    it = it;
                    next = it.next();
                    if (next.getKey() == null) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    next = next;
                    if (!next.getKey().isEmpty()) {
                        c = 5;
                        break;
                    } else {
                        c = 2;
                        break;
                    }
                case 5:
                    next = next;
                    if (next.getValue() == null) {
                        c = 2;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    next = next;
                    if (!next.getValue().isEmpty()) {
                        c = 7;
                        break;
                    } else {
                        c = 2;
                        break;
                    }
                case 7:
                    jSONObject2 = jSONObject2;
                    next = next;
                    z = true;
                    jSONObject2.put(next.getKey(), next.getValue());
                    c = 2;
                    break;
                case '\b':
                    if (!z) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    str = str;
                    jSONObject2 = jSONObject2;
                    jSONObject = jSONObject.put(str, jSONObject2);
                    c = '\n';
                    break;
                case '\n':
                    return jSONObject;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final boolean A3v(Object obj) {
        C0488De c0488De = this;
        boolean z = false;
        Map.Entry<String, String> next = null;
        Iterator<Map.Entry<String, String>> it = null;
        Iterator<Map.Entry<String, String>> it2 = null;
        Map.Entry<String, String> next2 = null;
        boolean z2 = true;
        boolean z3 = false;
        C0488De c0488De2 = (C0488De) obj;
        char c = c0488De.A00 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0488De2 = c0488De2;
                    if (c0488De2.A00 != null) {
                        c = '\t';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0488De = c0488De;
                    if (c0488De.A00 != null) {
                        c = '\b';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0488De2 = c0488De2;
                    if (c0488De2.A00 != null) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    z = z2;
                    c = 6;
                    break;
                case 6:
                    z3 = z;
                    c = 7;
                    break;
                case 7:
                    return z3;
                case '\b':
                    z3 = false;
                    z = false;
                    c = 6;
                    break;
                case '\t':
                    c0488De = c0488De;
                    c0488De2 = c0488De2;
                    if (c0488De.A00.size() != c0488De2.A00.size()) {
                        c = 7;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c0488De = c0488De;
                    c0488De2 = c0488De2;
                    it = c0488De.A00.entrySet().iterator();
                    it2 = c0488De2.A00.entrySet().iterator();
                    c = 11;
                    break;
                case 11:
                    it = it;
                    if (!it.hasNext()) {
                        c = 22;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    it = it;
                    it2 = it2;
                    next2 = it.next();
                    next = it2.next();
                    if (next2 == null) {
                        c = 14;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    next = next;
                    if (next != null) {
                        c = 18;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    next2 = next2;
                    if (next2 != null) {
                        c = 17;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    next = next;
                    if (next != null) {
                        c = 17;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    z3 = z2;
                    c = 7;
                    break;
                case 17:
                    z3 = false;
                    z2 = false;
                    c = 16;
                    break;
                case 18:
                    next2 = next2;
                    if (next2.getKey() == null) {
                        c = 20;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    next2 = next2;
                    next = next;
                    if (!next2.getKey().equals(next.getKey())) {
                        c = 7;
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 20:
                    next2 = next2;
                    if (next2.getValue() == null) {
                        c = 11;
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 21:
                    next2 = next2;
                    next = next;
                    if (!next2.getValue().equals(next.getValue())) {
                        c = 7;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 22:
                    z3 = z2;
                    c = 7;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.CG
    @SuppressLint({"BadMethodUse-java.lang.String.length"})
    public final int A76() {
        Iterator<Map.Entry<String, String>> it = this.A00.entrySet().iterator();
        int length = 0;
        int size = 2;
        while (true) {
            switch (size) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        size = 4;
                        break;
                    } else {
                        size = 3;
                        break;
                    }
                case 3:
                    it = it;
                    Map.Entry<String, String> next = it.next();
                    length += next.getValue().length() + next.getKey().length();
                    size = 2;
                    break;
                case 4:
                    return length;
            }
        }
    }
}
