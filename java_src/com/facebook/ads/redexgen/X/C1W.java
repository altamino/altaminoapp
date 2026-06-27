package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.1W, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C1W {
    private static byte[] A00;

    static {
        A02();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 122);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A00 = new byte[]{-21, -6, -13, 46, 81, 13, 86, 96, 13, 86, 91, 99, 78, 89, 86, 81, 78, 97, 82, 81, 13, 100, 86, 97, 85, 92, 98, 97, 13, 97, 92, 88, 82, 91, 27};
    }

    private C1W() {
    }

    public static Collection<String> A01(JSONArray jSONArray) {
        Set<String> results = null;
        int i = 0;
        char c = jSONArray != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    jSONArray = jSONArray;
                    if (jSONArray.length() != 0) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    results = null;
                    c = 4;
                    break;
                case 4:
                    return results;
                case 5:
                    results = new HashSet<>();
                    i = 0;
                    c = 6;
                    break;
                case 6:
                    jSONArray = jSONArray;
                    if (i >= jSONArray.length()) {
                        c = 4;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    jSONArray = jSONArray;
                    results = (HashSet) results;
                    results.add(jSONArray.optString(i));
                    i++;
                    c = 6;
                    break;
            }
        }
    }

    public static boolean A03(Context context, C1V c1v, KM km) {
        boolean z = false;
        Collection<String> collectionA3R = null;
        Iterator<String> it = null;
        boolean z2 = false;
        String strA3P = null;
        boolean z3 = true;
        C1U c1uA3a = c1v.A3a();
        char c = c1uA3a != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c1uA3a = c1uA3a;
                    if (c1uA3a != C1U.A03) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z3 = false;
                    c = 4;
                    break;
                case 4:
                    return z3;
                case 5:
                    c1v = c1v;
                    z2 = false;
                    collectionA3R = c1v.A3R();
                    if (collectionA3R == null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    collectionA3R = collectionA3R;
                    if (!collectionA3R.isEmpty()) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    z3 = false;
                    c = 4;
                    break;
                case '\b':
                    collectionA3R = collectionA3R;
                    it = collectionA3R.iterator();
                    c = '\t';
                    break;
                case '\t':
                    it = it;
                    boolean packageInstalled = it.hasNext();
                    if (!packageInstalled) {
                        c = '\f';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    context = context;
                    it = it;
                    String packageName = it.next();
                    if (!A04(context, packageName)) {
                        c = '\t';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    z2 = true;
                    c = '\f';
                    break;
                case '\f':
                    c1uA3a = c1uA3a;
                    if (c1uA3a != C1U.A02) {
                        c = 17;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    z = z3;
                    c = 14;
                    break;
                case 14:
                    if (z2 != z) {
                        c = 19;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    c1v = c1v;
                    strA3P = c1v.A3P();
                    if (!TextUtils.isEmpty(strA3P)) {
                        c = 16;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 16:
                    km = km;
                    strA3P = strA3P;
                    km.A4I(strA3P, null);
                    c = 4;
                    break;
                case 17:
                    z = false;
                    c = 14;
                    break;
                case 18:
                    context = context;
                    P7.A07(context, A00(0, 3, 16), P8.A0N, new PA(A00(3, 32, 115)));
                    c = 4;
                    break;
                case 19:
                    z3 = false;
                    c = 4;
                    break;
            }
        }
    }

    public static boolean A04(Context context, String str) throws PackageManager.NameNotFoundException {
        boolean z = false;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            context.getPackageManager().getPackageInfo(str, 1);
            z = true;
            return true;
        } catch (PackageManager.NameNotFoundException | RuntimeException unused) {
            return z;
        }
    }
}
