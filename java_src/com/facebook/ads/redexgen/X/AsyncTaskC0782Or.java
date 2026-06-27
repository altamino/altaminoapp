package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Or, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class AsyncTaskC0782Or extends AsyncTask<String, Void, C0783Os> {
    private static byte[] A05;
    private static final String A06;
    private static final Set<String> A07;
    private Context A00;
    private C0716Mc A01;
    private InterfaceC0781Oq A02;
    private Map<String, String> A03;
    private Map<String, String> A04;

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 114);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A05 = new byte[]{-22, 23, 23, 20, 23, -59, 20, 21, 10, 19, 14, 19, 12, -59, 26, 23, 17, -33, -59, -19, -6, -19, -8, -5, -13, 6, 11, 7, -16, 10, 17, 8, 8};
    }

    static {
        A04();
        A06 = AsyncTaskC0782Or.class.getSimpleName();
        A07 = new HashSet();
        A07.add(A01(26, 1, 118));
        A07.add(A01(29, 4, 42));
    }

    public AsyncTaskC0782Or(Context context) {
        this(context, null, null);
    }

    public AsyncTaskC0782Or(Context context, Map<String, String> map) {
        this(context, map, null);
    }

    public AsyncTaskC0782Or(Context context, Map<String, String> map, Map<String, String> map2) {
        this.A00 = context;
        Map<String, String> postData = map != null ? new HashMap<>(map) : null;
        this.A03 = postData;
        Map<String, String> extraData = map2 != null ? new HashMap<>(map2) : null;
        this.A04 = extraData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.AsyncTask
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final C0783Os doInBackground(String... strArr) {
        AsyncTaskC0782Or asyncTaskC0782Or = this;
        int i = 0;
        C0783Os c0783Os = null;
        Iterator<Map.Entry<String, String>> it = null;
        String strA02 = null;
        int i2 = 0;
        String str = strArr[0];
        char c = !TextUtils.isEmpty(str) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    str = str;
                    if (!A07.contains(str)) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0783Os = null;
                    c = 4;
                    break;
                case 4:
                    return c0783Os;
                case 5:
                    asyncTaskC0782Or = asyncTaskC0782Or;
                    str = str;
                    strA02 = asyncTaskC0782Or.A02(str);
                    if (asyncTaskC0782Or.A03 == null) {
                        c = '\n';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    asyncTaskC0782Or = asyncTaskC0782Or;
                    if (!asyncTaskC0782Or.A03.isEmpty()) {
                        c = 7;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case 7:
                    asyncTaskC0782Or = asyncTaskC0782Or;
                    it = asyncTaskC0782Or.A03.entrySet().iterator();
                    c = '\b';
                    break;
                case '\b':
                    it = it;
                    if (!it.hasNext()) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    asyncTaskC0782Or = asyncTaskC0782Or;
                    it = it;
                    Map.Entry<String, String> entry = it.next();
                    strA02 = asyncTaskC0782Or.A03(strA02, entry.getKey(), entry.getValue());
                    c = '\b';
                    break;
                case '\n':
                    i = 1;
                    c = 11;
                    break;
                case 11:
                    i2 = i + 1;
                    if (i > 2) {
                        c = 15;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    asyncTaskC0782Or = asyncTaskC0782Or;
                    strA02 = strA02;
                    if (!asyncTaskC0782Or.A06(strA02)) {
                        c = 14;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    asyncTaskC0782Or = asyncTaskC0782Or;
                    c0783Os = new C0783Os(asyncTaskC0782Or.A01);
                    c = 4;
                    break;
                case 14:
                    i = i2;
                    c = 11;
                    break;
                case 15:
                    c0783Os = null;
                    c = 4;
                    break;
            }
        }
    }

    private String A02(String str) {
        try {
            return A03(str, A01(19, 6, 26), C0760Nv.A01(JE.A02()));
        } catch (Exception unused) {
            return str;
        }
    }

    private String A03(String str, String str2, String str3) {
        String strA01 = null;
        char c = !TextUtils.isEmpty(str) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    str2 = str2;
                    if (!TextUtils.isEmpty(str2)) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    str3 = str3;
                    if (!TextUtils.isEmpty(str3)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return str;
                case 5:
                    str = str;
                    if (!str.contains(A01(27, 1, 86))) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    strA01 = A01(25, 1, 110);
                    c = 7;
                    break;
                case 7:
                    str2 = str2;
                    str3 = str3;
                    strA01 = strA01;
                    str = str + strA01 + str2 + A01(28, 1, 65) + URLEncoder.encode(str3);
                    c = 4;
                    break;
                case '\b':
                    strA01 = A01(27, 1, 86);
                    c = 7;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.AsyncTask
    /* renamed from: A05, reason: merged with bridge method [inline-methods] */
    public final void onPostExecute(C0783Os c0783Os) {
        if (this.A02 != null) {
            this.A02.A6g(c0783Os);
        }
    }

    @SuppressLint({"CatchGeneralException"})
    private boolean A06(String str) {
        C5e c5eA6W;
        if (K1.A17(this.A00)) {
            InterfaceC02855d interfaceC02855dA04 = C0780Op.A04(this.A00);
            try {
                if (this.A04 == null || this.A04.size() == 0) {
                    c5eA6W = interfaceC02855dA04.A6W(str, new C3U());
                } else {
                    C0718Me c0718Me = new C0718Me();
                    c0718Me.A05(this.A04);
                    c5eA6W = interfaceC02855dA04.A6X(str, c0718Me.A08());
                }
                this.A01 = new C0716Mc(c5eA6W);
            } catch (Exception e) {
                Log.e(A06, A01(0, 19, 51) + str, e);
            }
        } else {
            MQ mqA00 = C0780Op.A00(this.A00);
            try {
                if (this.A04 == null || this.A04.size() == 0) {
                    this.A01 = mqA00.A0J(str, null);
                } else {
                    C0718Me c0718Me2 = new C0718Me();
                    c0718Me2.A05(this.A04);
                    this.A01 = mqA00.A0K(str, c0718Me2);
                }
            } catch (Exception e2) {
                Log.e(A06, A01(0, 19, 51) + str, e2);
            }
        }
        return this.A01 != null && this.A01.A00() == 200;
    }

    public final void A07(InterfaceC0781Oq interfaceC0781Oq) {
        this.A02 = interfaceC0781Oq;
    }

    @Override // android.os.AsyncTask
    public final void onCancelled() {
        if (this.A02 != null) {
            this.A02.A6e();
        }
    }
}
