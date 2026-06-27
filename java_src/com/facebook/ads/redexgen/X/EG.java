package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.util.Log;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class EG implements CG<String> {
    private static byte[] A02;
    private static final String A03;
    private final String A00;
    private final String A01;

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 28);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A02 = new byte[]{27, 44, 44, 49, 44, 126, 56, 59, 42, 61, 54, 55, 48, 57, 126, 13, 39, 45, 42, 59, 51, 126, 14, 44, 49, 46, 59, 44, 42, 39, 105, 104, 115, 120, 97, 104, 114, 105, 99};
    }

    static {
        A03();
        A03 = EG.class.getSimpleName();
    }

    public EG(String str) {
        this.A00 = str;
        this.A01 = A01(str);
    }

    @SuppressLint({"BadMethodUse-android.util.Log.e", "CatchGeneralException"})
    private static String A01(String str) {
        Object[] objArr = null;
        String strA00 = A00(30, 9, 59);
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    objArr = new Object[]{str};
                    if (EH.A01 == null) {
                        c = 14;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    if (EH.A02 == null) {
                        c = 14;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    try {
                        String ret = (String) EH.A02.invoke(EH.A01, objArr);
                        strA00 = ret;
                        c = 14;
                        break;
                    } catch (Exception e) {
                        Log.e(A03, A00(0, 30, 66), e);
                        c = 14;
                        break;
                    }
                case 14:
                    return strA00;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.CG
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final JSONObject A7A(String str, JSONObject jSONObject) throws JSONException {
        jSONObject.put(this.A00, this.A01);
        return jSONObject;
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final boolean A3v(Object obj) {
        EG newSystemProperty = this;
        boolean z = false;
        EG eg = (EG) obj;
        char c = newSystemProperty.A00.equals(eg.A00) ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    newSystemProperty = newSystemProperty;
                    eg = eg;
                    if (!newSystemProperty.A01.equals(eg.A01)) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final int A76() {
        return this.A00.getBytes().length + this.A01.getBytes().length;
    }
}
