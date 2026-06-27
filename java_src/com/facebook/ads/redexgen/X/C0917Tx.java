package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.facebook.ads.internal.api.BuildConfigApi;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Tx, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0917Tx {
    private static byte[] A05;
    private final C0905Tk A00;
    private final String A01;
    private final String A02;
    private final WeakReference<KM> A03;
    private final WeakReference<C0914Tu> A04;

    static {
        A08();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 80);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A08() {
        A05 = new byte[]{-43, -23, -24, -36, -65, -39, -19, 6, 51, 51, 48, 51, -31, 49, 34, 51, 52, 42, 47, 40, -31, 11, 20, 16, 15, -31, 42, 47, -31, 49, 48, 52, 53, 14, 38, 52, 52, 34, 40, 38, -31, -67, -48, -52, -54, -71, -73, -68, -71, -52, -71, -39, -34, -43, -54, 12, 56, 62, 53, 45, -23, 55, 56, 61, -23, 57, 42, 59, 60, 46, -23, 60, 46, 59, 63, 46, 59, -23, 54, 46, 60, 60, 42, 48, 46, 31, 46, 39, 39, 30, 37, 24, 45, 50, 41, 30};
    }

    public C0917Tx(C0914Tu c0914Tu, KM km, C0905Tk c0905Tk, String str, String str2) {
        this.A04 = new WeakReference<>(c0914Tu);
        this.A03 = new WeakReference<>(km);
        this.A00 = c0905Tk;
        this.A01 = str;
        this.A02 = str2;
    }

    private void A01() {
        C0914Tu c0914Tu = this.A04.get();
        if (c0914Tu == null) {
            return;
        }
        c0914Tu.A0M();
    }

    private void A02() {
        C0914Tu c0914Tu = this.A04.get();
        if (c0914Tu == null) {
            return;
        }
        c0914Tu.A0N();
    }

    private void A03() {
        C0914Tu c0914Tu = this.A04.get();
        if (c0914Tu == null) {
            return;
        }
        c0914Tu.A0O();
    }

    private void A04() {
        C0914Tu c0914Tu = this.A04.get();
        if (c0914Tu == null) {
            return;
        }
        c0914Tu.A0P();
    }

    private void A05() {
        C0914Tu c0914Tu = this.A04.get();
        if (c0914Tu == null) {
            return;
        }
        c0914Tu.A0Q();
    }

    private void A06() {
        C0914Tu c0914Tu = this.A04.get();
        if (c0914Tu == null) {
            return;
        }
        c0914Tu.A0R();
    }

    private void A07() {
        C0914Tu c0914Tu = this.A04.get();
        if (c0914Tu == null) {
            return;
        }
        c0914Tu.A0S();
    }

    private void A09(EnumC0916Tw enumC0916Tw, String str) throws JSONException {
        char c;
        C0917Tx c0917Tx = this;
        switch (C0915Tv.A00[enumC0916Tw.ordinal()]) {
            case 1:
                c = '\f';
                break;
            case 2:
                c = 11;
                break;
            case 3:
                c = '\n';
                break;
            case 4:
                c = '\t';
                break;
            case 5:
                c = '\b';
                break;
            case 6:
                c = 7;
                break;
            case 7:
                c = 6;
                break;
            case 8:
                c = 5;
                break;
            case 9:
                c = 4;
                break;
            case 10:
                c = 3;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c0917Tx = c0917Tx;
                    c0917Tx.A05();
                    c = 2;
                    break;
                case 4:
                    if (!BuildConfigApi.isDebug()) {
                        c = 2;
                        break;
                    } else {
                        c = 2;
                        break;
                    }
                case 5:
                    c0917Tx = c0917Tx;
                    str = str;
                    c0917Tx.A0B(new JSONObject(str));
                    c = 2;
                    break;
                case 6:
                    c0917Tx = c0917Tx;
                    str = str;
                    c0917Tx.A0A(new JSONObject(str));
                    c = 2;
                    break;
                case 7:
                    c0917Tx = c0917Tx;
                    c0917Tx.A07();
                    c = 2;
                    break;
                case '\b':
                    c0917Tx = c0917Tx;
                    c0917Tx.A02();
                    c = 2;
                    break;
                case '\t':
                    c0917Tx = c0917Tx;
                    c0917Tx.A03();
                    c = 2;
                    break;
                case '\n':
                    c0917Tx = c0917Tx;
                    c0917Tx.A01();
                    c = 2;
                    break;
                case 11:
                    c0917Tx = c0917Tx;
                    c0917Tx.A06();
                    c = 2;
                    break;
                case '\f':
                    c0917Tx = c0917Tx;
                    c0917Tx.A04();
                    c = 2;
                    break;
            }
        }
    }

    private void A0A(JSONObject jSONObject) {
        HashMap map = null;
        Iterator<String> itKeys = null;
        C0914Tu c0914Tu = this.A04.get();
        char c = c0914Tu == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    jSONObject = jSONObject;
                    itKeys = jSONObject.keys();
                    map = new HashMap();
                    c = 4;
                    break;
                case 4:
                    itKeys = itKeys;
                    if (!itKeys.hasNext()) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    jSONObject = jSONObject;
                    itKeys = itKeys;
                    map = map;
                    String next = itKeys.next();
                    map.put(next, jSONObject.optString(next));
                    c = 4;
                    break;
                case 6:
                    c0914Tu = c0914Tu;
                    map = map;
                    c0914Tu.A0T(map);
                    c = 2;
                    break;
            }
        }
    }

    private void A0B(JSONObject jSONObject) {
        C0917Tx c0917Tx = this;
        String strOptString = null;
        KM km = c0917Tx.A03.get();
        char c = km == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    jSONObject = jSONObject;
                    strOptString = jSONObject.optString(A00(85, 11, 105));
                    if (!TextUtils.isEmpty(strOptString)) {
                        c = 4;
                        break;
                    } else {
                        c = 2;
                        break;
                    }
                case 4:
                    c0917Tx = c0917Tx;
                    km = km;
                    strOptString = strOptString;
                    new KX(c0917Tx.A02, km).A03(strOptString, null);
                    c = 2;
                    break;
            }
        }
    }

    @JavascriptInterface
    public void postMessage(String str) {
        try {
            JSONObject object = new JSONObject(str);
            if (!this.A01.equals(object.optString(A00(0, 7, 36)))) {
                this.A00.A04(P8.A0m, A00(55, 30, 121));
            } else {
                A09(EnumC0916Tw.A00(object.optString(A00(51, 4, 21))), object.optString(A00(41, 10, 8)));
            }
        } catch (JSONException e) {
            this.A00.A04(P8.A0o, A00(7, 34, 113) + e.getMessage());
        }
    }
}
