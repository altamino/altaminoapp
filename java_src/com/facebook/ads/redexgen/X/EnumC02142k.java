package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'A02' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* renamed from: com.facebook.ads.redexgen.X.2k, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public abstract class EnumC02142k {
    private static byte[] A00;
    private static final /* synthetic */ EnumC02142k[] A01;
    public static final EnumC02142k A02;
    public static final EnumC02142k A03;
    public static final EnumC02142k A04;
    public static final EnumC02142k A05;
    public static final EnumC02142k A06;
    public static final EnumC02142k A07;

    private static String A02(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 123);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A00 = new byte[]{-18, 25, 31, 12, 22, 15, 55, 88, 86, 77, 82, 75, -67, -18, -18, -35, -11, -37, -18, -10, -15, -17, 0, 12, 37, 34, 37, 38, 46, 37, -41, 43, 48, 39, 28, -41, 38, 29, -41, 33, 42, 38, 37, -41, 38, 25, 33, 28, 26, 43, -41, 34, 28, 48, -4, 41, 41, 38, 31, 27, 40, 24, 61, 67};
    }

    public abstract boolean A04(JSONArray jSONArray, int i);

    public abstract boolean A05(JSONArray jSONArray, JSONArray jSONArray2, int i);

    public abstract boolean A06(JSONObject jSONObject, String str);

    public abstract boolean A07(JSONObject jSONObject, JSONObject jSONObject2, String str);

    static {
        A03();
        final int i = 4;
        final int i2 = 3;
        final int i3 = 2;
        final int i4 = 1;
        final int i5 = 0;
        final String strA02 = A02(12, 5, 1);
        A02 = new EnumC02142k(strA02, i5) { // from class: com.facebook.ads.redexgen.X.1g
            @Override // com.facebook.ads.redexgen.X.EnumC02142k
            public final boolean A04(JSONArray jSONArray, int i6) {
                boolean z = false;
                char c = jSONArray.optJSONArray(i6) != null ? (char) 2 : (char) 4;
                while (true) {
                    switch (c) {
                        case 2:
                            z = true;
                            c = 3;
                            break;
                        case 3:
                            return z;
                        case 4:
                            z = false;
                            c = 3;
                            break;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.EnumC02142k
            public final boolean A05(JSONArray jSONArray, JSONArray jSONArray2, int i6) {
                return C01680m.A00(jSONArray.optJSONArray(i6), jSONArray2.optJSONArray(i6));
            }

            @Override // com.facebook.ads.redexgen.X.EnumC02142k
            public final boolean A06(JSONObject jSONObject, String str) {
                boolean z = false;
                char c = jSONObject.optJSONArray(str) != null ? (char) 2 : (char) 4;
                while (true) {
                    switch (c) {
                        case 2:
                            z = true;
                            c = 3;
                            break;
                        case 3:
                            return z;
                        case 4:
                            z = false;
                            c = 3;
                            break;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.EnumC02142k
            public final boolean A07(JSONObject jSONObject, JSONObject jSONObject2, String str) {
                return C01680m.A00(jSONObject.optJSONArray(str), jSONObject2.optJSONArray(str));
            }
        };
        final String strA022 = A02(54, 7, 63);
        A03 = new EnumC02142k(strA022, i4) { // from class: com.facebook.ads.redexgen.X.0y
            @Override // com.facebook.ads.redexgen.X.EnumC02142k
            public final boolean A04(JSONArray jSONArray, int i6) {
                return jSONArray.optBoolean(i6, true) == jSONArray.optBoolean(i6, false);
            }

            @Override // com.facebook.ads.redexgen.X.EnumC02142k
            public final boolean A05(JSONArray jSONArray, JSONArray jSONArray2, int i6) {
                boolean z = false;
                char c = jSONArray.optBoolean(i6) == jSONArray2.optBoolean(i6) ? (char) 2 : (char) 4;
                while (true) {
                    switch (c) {
                        case 2:
                            z = true;
                            c = 3;
                            break;
                        case 3:
                            return z;
                        case 4:
                            z = false;
                            c = 3;
                            break;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.EnumC02142k
            public final boolean A06(JSONObject jSONObject, String str) {
                return jSONObject.optBoolean(str, true) == jSONObject.optBoolean(str, false);
            }

            @Override // com.facebook.ads.redexgen.X.EnumC02142k
            public final boolean A07(JSONObject jSONObject, JSONObject jSONObject2, String str) {
                boolean z = false;
                char c = jSONObject.optBoolean(str) == jSONObject2.optBoolean(str) ? (char) 2 : (char) 4;
                while (true) {
                    switch (c) {
                        case 2:
                            z = true;
                            c = 3;
                            break;
                        case 3:
                            return z;
                        case 4:
                            z = false;
                            c = 3;
                            break;
                    }
                }
            }
        };
        final String strA023 = A02(0, 6, 47);
        A04 = new EnumC02142k(strA023, i3) { // from class: com.facebook.ads.redexgen.X.0x
            @Override // com.facebook.ads.redexgen.X.EnumC02142k
            public final boolean A04(JSONArray jSONArray, int i6) {
                boolean z = true;
                char c = jSONArray.optInt(i6, 0) == jSONArray.optInt(i6, 1) ? (char) 2 : (char) 5;
                while (true) {
                    switch (c) {
                        case 2:
                            jSONArray = jSONArray;
                            if (jSONArray.optDouble(i6, 0.0d) != jSONArray.optDouble(i6, 1.0d)) {
                                c = 5;
                                break;
                            } else {
                                c = 3;
                                break;
                            }
                        case 3:
                            jSONArray = jSONArray;
                            if (jSONArray.optInt(i6, 0) == jSONArray.optDouble(i6, 0.0d)) {
                                c = 5;
                                break;
                            } else {
                                c = 4;
                                break;
                            }
                        case 4:
                            return z;
                        case 5:
                            z = false;
                            c = 4;
                            break;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.EnumC02142k
            public final boolean A05(JSONArray jSONArray, JSONArray jSONArray2, int i6) {
                boolean z = false;
                char c = jSONArray.optDouble(i6) == jSONArray2.optDouble(i6) ? (char) 2 : (char) 4;
                while (true) {
                    switch (c) {
                        case 2:
                            z = true;
                            c = 3;
                            break;
                        case 3:
                            return z;
                        case 4:
                            z = false;
                            c = 3;
                            break;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.EnumC02142k
            public final boolean A06(JSONObject jSONObject, String str) {
                boolean z = true;
                char c = jSONObject.optInt(str, 0) == jSONObject.optInt(str, 1) ? (char) 2 : (char) 5;
                while (true) {
                    switch (c) {
                        case 2:
                            jSONObject = jSONObject;
                            str = str;
                            if (jSONObject.optDouble(str, 0.0d) != jSONObject.optDouble(str, 1.0d)) {
                                c = 5;
                                break;
                            } else {
                                c = 3;
                                break;
                            }
                        case 3:
                            jSONObject = jSONObject;
                            str = str;
                            if (jSONObject.optInt(str, 0) == jSONObject.optDouble(str, 0.0d)) {
                                c = 5;
                                break;
                            } else {
                                c = 4;
                                break;
                            }
                        case 4:
                            return z;
                        case 5:
                            z = false;
                            c = 4;
                            break;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.EnumC02142k
            public final boolean A07(JSONObject jSONObject, JSONObject jSONObject2, String str) {
                boolean z = false;
                char c = jSONObject.optDouble(str) == jSONObject2.optDouble(str) ? (char) 2 : (char) 4;
                while (true) {
                    switch (c) {
                        case 2:
                            z = true;
                            c = 3;
                            break;
                        case 3:
                            return z;
                        case 4:
                            z = false;
                            c = 3;
                            break;
                    }
                }
            }
        };
        final String strA024 = A02(61, 3, 84);
        A05 = new EnumC02142k(strA024, i2) { // from class: com.facebook.ads.redexgen.X.0q
            @Override // com.facebook.ads.redexgen.X.EnumC02142k
            public final boolean A04(JSONArray jSONArray, int i6) {
                boolean z = true;
                char c = jSONArray.optInt(i6, 0) == jSONArray.optInt(i6, 1) ? (char) 2 : (char) 5;
                while (true) {
                    switch (c) {
                        case 2:
                            jSONArray = jSONArray;
                            if (jSONArray.optDouble(i6, 0.0d) != jSONArray.optDouble(i6, 1.0d)) {
                                c = 5;
                                break;
                            } else {
                                c = 3;
                                break;
                            }
                        case 3:
                            jSONArray = jSONArray;
                            if (jSONArray.optInt(i6, 0) != jSONArray.optDouble(i6, 0.0d)) {
                                c = 5;
                                break;
                            } else {
                                c = 4;
                                break;
                            }
                        case 4:
                            return z;
                        case 5:
                            z = false;
                            c = 4;
                            break;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.EnumC02142k
            public final boolean A05(JSONArray jSONArray, JSONArray jSONArray2, int i6) {
                boolean z = false;
                char c = jSONArray.optInt(i6) == jSONArray2.optInt(i6) ? (char) 2 : (char) 4;
                while (true) {
                    switch (c) {
                        case 2:
                            z = true;
                            c = 3;
                            break;
                        case 3:
                            return z;
                        case 4:
                            z = false;
                            c = 3;
                            break;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.EnumC02142k
            public final boolean A06(JSONObject jSONObject, String str) {
                boolean z = true;
                char c = jSONObject.optInt(str, 0) == jSONObject.optInt(str, 1) ? (char) 2 : (char) 5;
                while (true) {
                    switch (c) {
                        case 2:
                            jSONObject = jSONObject;
                            str = str;
                            if (jSONObject.optDouble(str, 0.0d) != jSONObject.optDouble(str, 1.0d)) {
                                c = 5;
                                break;
                            } else {
                                c = 3;
                                break;
                            }
                        case 3:
                            jSONObject = jSONObject;
                            str = str;
                            if (jSONObject.optInt(str, 0) != jSONObject.optDouble(str, 0.0d)) {
                                c = 5;
                                break;
                            } else {
                                c = 4;
                                break;
                            }
                        case 4:
                            return z;
                        case 5:
                            z = false;
                            c = 4;
                            break;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.EnumC02142k
            public final boolean A07(JSONObject jSONObject, JSONObject jSONObject2, String str) {
                boolean z = false;
                char c = jSONObject.optInt(str) == jSONObject2.optInt(str) ? (char) 2 : (char) 4;
                while (true) {
                    switch (c) {
                        case 2:
                            z = true;
                            c = 3;
                            break;
                        case 3:
                            return z;
                        case 4:
                            z = false;
                            c = 3;
                            break;
                    }
                }
            }
        };
        final String strA025 = A02(17, 6, 17);
        A06 = new EnumC02142k(strA025, i) { // from class: com.facebook.ads.redexgen.X.0p
            @Override // com.facebook.ads.redexgen.X.EnumC02142k
            public final boolean A04(JSONArray jSONArray, int i6) {
                boolean z = false;
                char c = jSONArray.optJSONObject(i6) != null ? (char) 2 : (char) 4;
                while (true) {
                    switch (c) {
                        case 2:
                            z = true;
                            c = 3;
                            break;
                        case 3:
                            return z;
                        case 4:
                            z = false;
                            c = 3;
                            break;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.EnumC02142k
            public final boolean A05(JSONArray jSONArray, JSONArray jSONArray2, int i6) {
                return C01680m.A02(jSONArray.optJSONObject(i6), jSONArray2.optJSONObject(i6));
            }

            @Override // com.facebook.ads.redexgen.X.EnumC02142k
            public final boolean A06(JSONObject jSONObject, String str) {
                boolean z = false;
                char c = jSONObject.optJSONObject(str) != null ? (char) 2 : (char) 4;
                while (true) {
                    switch (c) {
                        case 2:
                            z = true;
                            c = 3;
                            break;
                        case 3:
                            return z;
                        case 4:
                            z = false;
                            c = 3;
                            break;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.EnumC02142k
            public final boolean A07(JSONObject jSONObject, JSONObject jSONObject2, String str) {
                return C01680m.A02(jSONObject.optJSONObject(str), jSONObject2.optJSONObject(str));
            }
        };
        final String strA026 = A02(6, 6, 105);
        final int i6 = 5;
        A07 = new EnumC02142k(strA026, i6) { // from class: com.facebook.ads.redexgen.X.0n
            @Override // com.facebook.ads.redexgen.X.EnumC02142k
            public final boolean A04(JSONArray jSONArray, int i7) {
                boolean z = false;
                char c = jSONArray.optString(i7) != null ? (char) 2 : (char) 4;
                while (true) {
                    switch (c) {
                        case 2:
                            z = true;
                            c = 3;
                            break;
                        case 3:
                            return z;
                        case 4:
                            z = false;
                            c = 3;
                            break;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.EnumC02142k
            public final boolean A05(JSONArray jSONArray, JSONArray jSONArray2, int i7) {
                return jSONArray.optString(i7).equals(jSONArray2.optString(i7));
            }

            @Override // com.facebook.ads.redexgen.X.EnumC02142k
            public final boolean A06(JSONObject jSONObject, String str) {
                boolean z = false;
                char c = jSONObject.optString(str) != null ? (char) 2 : (char) 4;
                while (true) {
                    switch (c) {
                        case 2:
                            z = true;
                            c = 3;
                            break;
                        case 3:
                            return z;
                        case 4:
                            z = false;
                            c = 3;
                            break;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.EnumC02142k
            public final boolean A07(JSONObject jSONObject, JSONObject jSONObject2, String str) {
                return jSONObject.optString(str).equals(jSONObject2.optString(str));
            }
        };
        A01 = new EnumC02142k[]{A02, A03, A04, A05, A06, A07};
    }

    private EnumC02142k(String str, int i) {
    }

    public static EnumC02142k A00(JSONArray jSONArray, int i) {
        EnumC02142k enumC02142k = null;
        EnumC02142k[] enumC02142kArrValues = values();
        int length = enumC02142kArrValues.length;
        int i2 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i2 >= length) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    jSONArray = jSONArray;
                    enumC02142kArrValues = enumC02142kArrValues;
                    enumC02142k = enumC02142kArrValues[i2];
                    if (!enumC02142k.A04(jSONArray, i)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return enumC02142k;
                case 5:
                    i2++;
                    c = 2;
                    break;
                case 6:
                    throw new AssertionError(A02(23, 31, 60));
            }
        }
    }

    public static EnumC02142k A01(JSONObject jSONObject, String str) {
        EnumC02142k enumC02142k = null;
        EnumC02142k[] enumC02142kArrValues = values();
        int length = enumC02142kArrValues.length;
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i >= length) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    jSONObject = jSONObject;
                    str = str;
                    enumC02142kArrValues = enumC02142kArrValues;
                    enumC02142k = enumC02142kArrValues[i];
                    if (!enumC02142k.A06(jSONObject, str)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return enumC02142k;
                case 5:
                    i++;
                    c = 2;
                    break;
                case 6:
                    throw new AssertionError(A02(23, 31, 60));
            }
        }
    }

    public static EnumC02142k valueOf(String str) {
        return (EnumC02142k) Enum.valueOf(EnumC02142k.class, str);
    }

    public static EnumC02142k[] values() {
        return (EnumC02142k[]) A01.clone();
    }
}
