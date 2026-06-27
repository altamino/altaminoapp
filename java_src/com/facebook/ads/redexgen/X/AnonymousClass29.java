package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.tonyodev.fetch.FetchService;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.29, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class AnonymousClass29 implements C1V, InterfaceC01851h {
    private static byte[] A0Z;
    private static final String A0a;
    private int A00;
    private int A01;
    private int A03;
    private int A04;
    private int A06;
    private int A07;
    private Context A08;
    private Uri A09;
    private C1U A0A;
    private C2X A0B;

    @Nullable
    private KM A0C;
    private L2 A0D;
    private L9 A0E;
    private L9 A0F;
    private L9 A0G;
    private LH A0H;
    private LL A0I;
    private String A0J;
    private String A0K;
    private String A0L;
    private String A0M;
    private String A0N;
    private String A0O;
    private Collection<String> A0P;
    private List<L8> A0R;
    private boolean A0S;
    private boolean A0T;
    private boolean A0U;
    private boolean A0V;
    private boolean A0W;
    private boolean A0X;
    private boolean A0Y;
    private HashMap<String, String> A0Q = new HashMap<>();
    private int A05 = 200;
    private int A02 = -1;

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0Z, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 92);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A0Z = new byte[]{14, 15, 12, 3, 4, 3, 30, 3, 5, 4, 107, 118, 121, 104, 107, 112, 119, 108, 71, 116, 119, 127, 71, 124, 125, 116, 121, 97, 71, 107, 125, 123, 119, 118, 124, 80, 82, 79, 77, 79, 84, 69, 68, 127, 84, 82, 65, 78, 83, 76, 65, 84, 73, 79, 78, 16, 22, 1, 23, 10, 23, 15, 6, 7, 2, 57, 5, 14, 9, 15, 5, 3, 21, 57, 15, 5, 9, 8, 77, 75, 93, 92, 103, 74, 93, 72, 87, 74, 76, 103, 77, 74, 84, 111, 106, 109, 104, 92, 103, 102, 112, 96, 113, 106, 115, 119, 106, 108, 109, 34, 61, 48, 49, 59, 11, 57, 36, 48, 2, 30, 18, 24, 16, 29, 46, 18, 30, 31, 5, 20, 9, 5, 83, 104, 103, 100, 106, 99, 38, 114, 105, 38, 118, 103, 116, 117, 99, 38, 101, 103, 116, 105, 115, 117, 99, 106, 38, 98, 103, 114, 103, 40, 66, 64, 77, 77, 126, 85, 78, 126, 64, 66, 85, 72, 78, 79, 55, 0, 0, 29, 0, 82, 23, 10, 23, 17, 7, 6, 27, 28, 21, 82, 19, 17, 6, 27, 29, 28, 96, 103, 127, 104, 101, 96, 109, 104, 125, 96, 102, 103, 86, 107, 108, 97, 104, 127, 96, 102, 123, 14, 11, 30, 11, 51, 62, 53, 40, 88, 125, 90, 113, 118, 112, 122, 124, 106, 24, 31, 10, 25, 52, 25, 10, 31, 2, 5, 12, 22, 23, 6, 23, 17, 6, 27, 29, 28, 45, 1, 6, 0, 27, 28, 21, 1, 65, 67, 80, 70, 75, 76, 70, 47, 56, 80, 90, 86, 87, 45, 48, 63, 46, 45, 54, 49, 42, 127, 90, 95, 78, 74, 91, 76, 30, 95, 82, 76, 91, 95, 90, 71, 30, 82, 81, 95, 90, 91, 90, 30, 90, 95, 74, 95, 64, 67, 92, 93, 64, 92, 65, 86, 87, 108, 71, 65, 82, 93, 64, 95, 82, 71, 90, 92, 93, 72, 87, 91, 73, 95, 92, 87, 82, 87, 74, 71, 97, 93, 86, 91, 93, 85, 97, 87, 80, 74, 91, 76, 72, 95, 82, 4, 0, 3, 6, 61, 1, 13, 15, 15, 3, 12, 6, 44, 35, 18, 33, 34, 42, 34, 18, 57, 52, 61, 40, 37, 4, 75, 45, 2, 7, 7, 62, 33, 45, 63, 41, 42, 33, 36, 33, 60, 49, 23, 43, 32, 45, 43, 35, 23, 33, 38, 33, 60, 33, 41, 36, 23, 44, 45, 36, 41, 49, 6, 3, 56, 19, 21, 6, 9, 20, 11, 6, 19, 14, 8, 9, 57, 22, 19, 25, 17, 90, 18, 27, 10, 10, 31, 20, 31, 30, 90, 21, 20, 90, 22, 21, 25, 17, 9, 25, 8, 31, 31, 20, 90, 27, 30, 32, 43, 36, 39, 41, 32, 26, 54, 43, 36, 53, 54, 45, 42, 49, 26, 41, 42, 34, 77, 79, 92, 74, 77, 64, 90, 13, 8, 26, 9, 30, 24, 5, 31, 9, 30, 51, 2, 13, 1, 9, 5, 14, 1, 2, 12, 5, 63, 22, 9, 5, 23, 63, 12, 15, 7, 119, 104, 100, 118, 61, 32, 47, 62, 61, 38, 33, 58, 17, 45, 33, 35, 62, 60, 43, 61, 61, 17, 63, 59, 47, 34, 39, 58, 55, 24, 29, 38, 26, 17, 22, 16, 26, 28, 10, 38, 21, 16, 23, 18, 38, 12, 11, 21, 37, 40, 44, 41, 33, 36, 35, 40, 11, 36, 33, 43, 35, 104, 36, 39, 47, 47, 45, 44, 69, 88, 69, 93, 84, 100, 80, 65, 76, 64, 75, 70, 64, 5, 107, 64, 81, 82, 74, 87, 78, 5, 105, 74, 68, 65, 64, 65, 111, 112, 125, 124, 118, 70, 108, 107, 117, 125, 106, 126, 122, 106, 124, 123, 80, 102, 107, 110, 106, 102, 96, 98, 42, 53, 56, 57, 51, 3, 61, 41, 40, 51, 44, 48, 61, 37, 3, 57, 50, 61, 62, 48, 57, 56, 55, 53, 38, 59, 33, 39, 49, 56};
    }

    static {
        A05();
        A0a = AnonymousClass29.class.getSimpleName();
    }

    private Map<String, String> A03(Map<String, String> map) {
        Map<String, String> extraData = new HashMap<>();
        char c = map.containsKey(A01(522, 4, 93)) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    map = map;
                    extraData = (HashMap) extraData;
                    extraData.put(A01(522, 4, 93), map.get(A01(522, 4, 93)));
                    c = 3;
                    break;
                case 3:
                    map = map;
                    if (!map.containsKey(A01(277, 8, 2))) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    map = map;
                    extraData = (HashMap) extraData;
                    extraData.put(A01(277, 8, 2), map.get(A01(277, 8, 2)));
                    c = 5;
                    break;
                case 5:
                    return (HashMap) extraData;
            }
        }
    }

    private void A04() {
        AnonymousClass29 anonymousClass29 = this;
        char c = !anonymousClass29.A0W ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass29 = anonymousClass29;
                    if (anonymousClass29.A0C == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    anonymousClass29 = anonymousClass29;
                    anonymousClass29.A0C.A6Z(anonymousClass29.A0M);
                    c = 4;
                    break;
                case 4:
                    anonymousClass29 = anonymousClass29;
                    anonymousClass29.A0W = true;
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    private void A06(Context context, JSONObject jSONObject, KM km, String str, int i, int i2) {
        this.A0V = true;
        this.A08 = context;
        this.A0C = km;
        this.A02 = i;
        this.A01 = i2;
        A08(jSONObject, str);
    }

    private void A07(Map<String, String> map, final Map<String, String> map2) {
        try {
            final Map<String, String> urlParams = A03(map);
            new Handler().postDelayed(new AnonymousClass27() { // from class: com.facebook.ads.redexgen.X.28
                @Override // com.facebook.ads.redexgen.X.AnonymousClass27
                public final void A03() {
                    AnonymousClass28 anonymousClass28 = this;
                    HashMap map3 = null;
                    char c = !TextUtils.isEmpty(anonymousClass28.A00.A0K) ? (char) 2 : (char) 4;
                    while (true) {
                        switch (c) {
                            case 2:
                                anonymousClass28 = anonymousClass28;
                                map3 = new HashMap();
                                map3.putAll(map2);
                                map3.putAll(urlParams);
                                if (anonymousClass28.A00.A0C == null) {
                                    c = 4;
                                    break;
                                } else {
                                    c = 3;
                                    break;
                                }
                            case 3:
                                anonymousClass28 = anonymousClass28;
                                map3 = map3;
                                anonymousClass28.A00.A0C.A4W(anonymousClass28.A00.A0K, map3);
                                c = 4;
                                break;
                            case 4:
                                return;
                        }
                    }
                }
            }, this.A04 * 1000);
        } catch (Exception unused) {
        }
    }

    private void A08(JSONObject jSONObject, String str) {
        if (this.A0S) {
            throw new IllegalStateException(A01(285, 27, 98));
        }
        if (jSONObject == null) {
            return;
        }
        NV.A04(this.A08, A01(595, 23, 121));
        this.A0K = str;
        this.A0L = jSONObject.optString(A01(627, 10, 83));
        this.A00 = jSONObject.optInt(A01(371, 12, 17), 0);
        String strA02 = C0760Nv.A02(jSONObject, A01(359, 12, 62));
        this.A09 = TextUtils.isEmpty(strA02) ? null : Uri.parse(strA02);
        for (String key : new String[]{A01(492, 15, 48), A01(590, 5, 109), A01(55, 8, 63), A01(570, 8, 17), A01(223, 4, 13), A01(118, 14, 45), A01(93, 16, 95), A01(FetchService.ACTION_RESUME, 21, 111), A01(421, 14, 59), A01(35, 20, 124)}) {
            this.A0Q.put(key, C0760Nv.A02(jSONObject, key));
        }
        String strA022 = C0760Nv.A02(jSONObject, A01(162, 14, 125));
        if (!TextUtils.isEmpty(strA022)) {
            HashMap<String, String> map = this.A0Q;
            String callToAction = A01(162, 14, 125);
            map.put(callToAction, strA022);
        }
        String callToAction2 = A01(273, 4, 101);
        this.A0F = L9.A00(jSONObject.optJSONObject(callToAction2));
        String callToAction3 = A01(637, 5, 91);
        this.A0G = L9.A00(jSONObject.optJSONObject(callToAction3));
        String callToAction4 = A01(236, 11, 55);
        this.A0H = LH.A00(jSONObject.optJSONObject(callToAction4));
        String callToAction5 = A01(78, 15, 100);
        this.A0M = C0760Nv.A02(jSONObject, callToAction5);
        String callToAction6 = A01(507, 15, 60);
        this.A0X = jSONObject.optBoolean(callToAction6);
        String callToAction7 = A01(466, 19, 25);
        this.A0Y = jSONObject.optBoolean(callToAction7);
        this.A04 = jSONObject.optInt(A01(10, 25, 68), 4);
        this.A03 = jSONObject.optInt(A01(526, 25, 18), 0);
        this.A06 = jSONObject.optInt(A01(390, 31, 20), 0);
        this.A07 = jSONObject.optInt(A01(333, 26, 98), 1000);
        String callToAction8 = A01(63, 15, 58);
        JSONObject adChoicesIconObject = jSONObject.optJSONObject(callToAction8);
        if (adChoicesIconObject != null) {
            this.A0E = L9.A00(adChoicesIconObject);
        }
        this.A0J = C0760Nv.A02(jSONObject, A01(551, 19, 37));
        this.A0A = C1U.A00(jSONObject.optString(A01(198, 21, 85)));
        JSONArray jSONArray = null;
        try {
            jSONArray = new JSONArray(jSONObject.optString(A01(247, 17, 46)));
        } catch (JSONException e) {
            e.printStackTrace();
        }
        this.A0P = C1W.A01(jSONArray);
        this.A0O = C0760Nv.A02(jSONObject, A01(618, 9, 69));
        this.A0N = C0760Nv.A02(jSONObject, A01(109, 9, 8));
        if (!jSONObject.has(A01(642, 22, 0))) {
            this.A0I = LL.A02;
        } else {
            this.A0I = jSONObject.optBoolean(A01(642, 22, 0)) ? LL.A04 : LL.A03;
        }
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(A01(664, 8, 8));
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                int length = jSONArrayOptJSONArray.length();
                ArrayList arrayList = new ArrayList(length);
                for (int i = 0; i < length; i++) {
                    AnonymousClass29 anonymousClass29 = new AnonymousClass29();
                    anonymousClass29.A06(this.A08, jSONArrayOptJSONArray.getJSONObject(i), this.A0C, this.A0K, i, length);
                    arrayList.add(new L8(this.A08, anonymousClass29, null, this.A0D));
                }
                this.A0R = arrayList;
            }
        } catch (JSONException e2) {
            Log.e(A0a, A01(132, 30, 90), e2);
        }
        this.A0S = true;
        this.A0T = A09();
    }

    private boolean A09() {
        AnonymousClass29 anonymousClass29 = this;
        boolean z = false;
        char c = !anonymousClass29.A0V ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass29 = anonymousClass29;
                    if (!TextUtils.isEmpty(anonymousClass29.A0Q.get(A01(492, 15, 48)))) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    anonymousClass29 = anonymousClass29;
                    if (!TextUtils.isEmpty(anonymousClass29.A0Q.get(A01(590, 5, 109)))) {
                        c = 4;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 4:
                    anonymousClass29 = anonymousClass29;
                    if (!anonymousClass29.A0V) {
                        c = 11;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    anonymousClass29 = anonymousClass29;
                    if (anonymousClass29.A0F != null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    anonymousClass29 = anonymousClass29;
                    if (!anonymousClass29.A0V) {
                        c = 11;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    anonymousClass29 = anonymousClass29;
                    if (anonymousClass29.A0G != null) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    anonymousClass29 = anonymousClass29;
                    if (anonymousClass29.A3d() != AdPlacementType.NATIVE_BANNER) {
                        c = 11;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    z = true;
                    c = '\n';
                    break;
                case '\n':
                    return z;
                case 11:
                    z = false;
                    c = '\n';
                    break;
            }
        }
    }

    public final int A0A() {
        return this.A00;
    }

    public final int A0B() {
        return this.A01;
    }

    public final int A0C() {
        return this.A02;
    }

    public final int A0D() {
        AnonymousClass29 anonymousClass29 = this;
        int i = 0;
        char c = anonymousClass29.A03 >= 0 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass29 = anonymousClass29;
                    if (anonymousClass29.A03 <= 100) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    i = 0;
                    c = 4;
                    break;
                case 4:
                    return i;
                case 5:
                    anonymousClass29 = anonymousClass29;
                    i = anonymousClass29.A03;
                    c = 4;
                    break;
            }
        }
    }

    public final int A0E() {
        return this.A05;
    }

    public final int A0F() {
        return this.A06;
    }

    public final int A0G() {
        return this.A07;
    }

    public final L9 A0H() {
        AnonymousClass29 anonymousClass29 = this;
        L9 l9 = null;
        char c = !anonymousClass29.A0g() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    l9 = null;
                    c = 3;
                    break;
                case 3:
                    return l9;
                case 4:
                    anonymousClass29 = anonymousClass29;
                    l9 = anonymousClass29.A0E;
                    c = 3;
                    break;
            }
        }
    }

    public final L9 A0I() {
        AnonymousClass29 anonymousClass29 = this;
        L9 l9 = null;
        char c = !anonymousClass29.A0g() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    l9 = null;
                    c = 3;
                    break;
                case 3:
                    return l9;
                case 4:
                    anonymousClass29 = anonymousClass29;
                    l9 = anonymousClass29.A0G;
                    c = 3;
                    break;
            }
        }
    }

    public final L9 A0J() {
        AnonymousClass29 anonymousClass29 = this;
        L9 l9 = null;
        char c = !anonymousClass29.A0g() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    l9 = null;
                    c = 3;
                    break;
                case 3:
                    return l9;
                case 4:
                    anonymousClass29 = anonymousClass29;
                    l9 = anonymousClass29.A0F;
                    c = 3;
                    break;
            }
        }
    }

    public final LH A0K() {
        AnonymousClass29 anonymousClass29 = this;
        LH lh = null;
        char c = !anonymousClass29.A0g() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    lh = null;
                    c = 3;
                    break;
                case 3:
                    return lh;
                case 4:
                    anonymousClass29 = anonymousClass29;
                    anonymousClass29.A04();
                    lh = anonymousClass29.A0H;
                    c = 3;
                    break;
            }
        }
    }

    public final LL A0L() {
        AnonymousClass29 anonymousClass29 = this;
        LL ll = null;
        char c = !anonymousClass29.A0g() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    ll = LL.A02;
                    c = 3;
                    break;
                case 3:
                    return ll;
                case 4:
                    anonymousClass29 = anonymousClass29;
                    ll = anonymousClass29.A0I;
                    c = 3;
                    break;
            }
        }
    }

    public final String A0M() {
        AnonymousClass29 anonymousClass29 = this;
        String strA01 = null;
        char c = !anonymousClass29.A0g() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA01 = null;
                    c = 3;
                    break;
                case 3:
                    return strA01;
                case 4:
                    anonymousClass29 = anonymousClass29;
                    anonymousClass29.A04();
                    strA01 = OF.A01(anonymousClass29.A0Q.get(A01(223, 4, 13)));
                    c = 3;
                    break;
            }
        }
    }

    public final String A0N() {
        AnonymousClass29 anonymousClass29 = this;
        String str = null;
        char c = !anonymousClass29.A0g() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    str = null;
                    c = 3;
                    break;
                case 3:
                    return str;
                case 4:
                    anonymousClass29 = anonymousClass29;
                    str = anonymousClass29.A0J;
                    c = 3;
                    break;
            }
        }
    }

    public final String A0O() {
        String strA01 = null;
        char c = !A0g() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA01 = null;
                    c = 3;
                    break;
                case 3:
                    return strA01;
                case 4:
                    strA01 = A01(227, 9, 69);
                    c = 3;
                    break;
            }
        }
    }

    public final String A0P() {
        return this.A0L;
    }

    public final String A0Q() {
        AnonymousClass29 anonymousClass29 = this;
        String str = null;
        char c = !anonymousClass29.A0g() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    str = null;
                    c = 3;
                    break;
                case 3:
                    return str;
                case 4:
                    anonymousClass29 = anonymousClass29;
                    str = anonymousClass29.A0N;
                    c = 3;
                    break;
            }
        }
    }

    public final String A0R() {
        AnonymousClass29 anonymousClass29 = this;
        String str = null;
        char c = !anonymousClass29.A0g() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    str = null;
                    c = 3;
                    break;
                case 3:
                    return str;
                case 4:
                    anonymousClass29 = anonymousClass29;
                    str = anonymousClass29.A0O;
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    public final String A0S(String str) {
        AnonymousClass29 anonymousClass29 = this;
        String str2 = null;
        char c = !anonymousClass29.A0g() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    str2 = null;
                    c = 3;
                    break;
                case 3:
                    return str2;
                case 4:
                    anonymousClass29 = anonymousClass29;
                    str = str;
                    anonymousClass29.A04();
                    str2 = anonymousClass29.A0Q.get(str);
                    c = 3;
                    break;
            }
        }
    }

    public final List<L8> A0T() {
        AnonymousClass29 anonymousClass29 = this;
        List<L8> list = null;
        char c = !anonymousClass29.A0g() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    list = null;
                    c = 3;
                    break;
                case 3:
                    return list;
                case 4:
                    anonymousClass29 = anonymousClass29;
                    list = anonymousClass29.A0R;
                    c = 3;
                    break;
            }
        }
    }

    public final void A0U() {
        AnonymousClass29 anonymousClass29 = this;
        Iterator<L8> it = null;
        char c = anonymousClass29.A0R != null ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass29 = anonymousClass29;
                    if (!anonymousClass29.A0R.isEmpty()) {
                        c = 3;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 3:
                    anonymousClass29 = anonymousClass29;
                    it = anonymousClass29.A0R.iterator();
                    c = 4;
                    break;
                case 4:
                    it = it;
                    if (!it.hasNext()) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    it = it;
                    it.next().unregisterView();
                    c = 4;
                    break;
                case 6:
                    return;
            }
        }
    }

    public final void A0V(int i) {
    }

    public final void A0W(Context context, C2X c2x, KM km, Map<String, Object> map, L2 l2) {
        AnonymousClass29 anonymousClass29 = this;
        int iA06 = 0;
        anonymousClass29.A08 = context;
        anonymousClass29.A0B = c2x;
        anonymousClass29.A0C = km;
        anonymousClass29.A0D = l2;
        JSONObject jSONObject = (JSONObject) map.get(A01(219, 4, 54));
        JK jk = (JK) map.get(A01(0, 10, 54));
        char c = jk != null ? (char) 2 : '\b';
        while (true) {
            switch (c) {
                case 2:
                    jk = jk;
                    iA06 = jk.A06();
                    c = 3;
                    break;
                case 3:
                    anonymousClass29 = anonymousClass29;
                    context = context;
                    km = km;
                    jSONObject = jSONObject;
                    anonymousClass29.A05 = iA06;
                    anonymousClass29.A08(jSONObject, C0760Nv.A02(jSONObject, A01(271, 2, 16)));
                    if (!C1W.A03(context, anonymousClass29, km)) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    anonymousClass29 = anonymousClass29;
                    c2x = c2x;
                    c2x.A5r(anonymousClass29, new LQ(AdErrorType.NO_FILL, A01(383, 7, 55)));
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    c2x = c2x;
                    if (c2x == null) {
                        c = 5;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    anonymousClass29 = anonymousClass29;
                    c2x = c2x;
                    c2x.A5o(anonymousClass29);
                    c = 5;
                    break;
                case '\b':
                    iA06 = 200;
                    c = 3;
                    break;
            }
        }
    }

    public final void A0X(View view, List<View> clickableViews) {
    }

    public final void A0Y(C2X c2x) {
        this.A0B = c2x;
    }

    public final void A0Z(Map<String, String> map) {
        AnonymousClass29 anonymousClass29 = this;
        Map<String, String> urlParams = null;
        if (!anonymousClass29.A0g()) {
            return;
        }
        char c = K1.A1L(anonymousClass29.A08) ? (char) 4 : (char) 6;
        while (true) {
            switch (c) {
                case 4:
                    map = map;
                    if (!OZ.A03(map)) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    Log.e(A0a, A01(435, 31, 38));
                    return;
                case 6:
                    map = map;
                    urlParams = new HashMap<>();
                    if (map == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    map = map;
                    urlParams = (HashMap) urlParams;
                    urlParams.putAll(map);
                    c = '\b';
                    break;
                case '\b':
                    anonymousClass29 = anonymousClass29;
                    NV.A04(anonymousClass29.A08, A01(IjkMediaMeta.FF_PROFILE_H264_CONSTRAINED_BASELINE, 12, 20));
                    if (anonymousClass29.A0B == null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    anonymousClass29 = anonymousClass29;
                    anonymousClass29.A0B.A5n(anonymousClass29);
                    c = '\n';
                    break;
                case '\n':
                    anonymousClass29 = anonymousClass29;
                    if (!anonymousClass29.A0V) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    anonymousClass29 = anonymousClass29;
                    urlParams = (HashMap) urlParams;
                    urlParams.put(A01(264, 7, 126), String.valueOf(anonymousClass29.A02));
                    urlParams.put(A01(485, 7, 114), String.valueOf(anonymousClass29.A01));
                    c = '\f';
                    break;
                case '\f':
                    AnonymousClass29 anonymousClass292 = anonymousClass29;
                    C1S c1sA00 = C1T.A00(anonymousClass292.A08, anonymousClass292.A0C, anonymousClass292.A0K, anonymousClass292.A09, (HashMap) urlParams);
                    if (c1sA00 == null) {
                        return;
                    }
                    try {
                        c1sA00.A02();
                        return;
                    } catch (Exception e) {
                        Log.e(A0a, A01(176, 22, 46), e);
                        return;
                    }
            }
        }
    }

    public final void A0a(Map<String, String> map) {
        if (this.A0C != null) {
            this.A0C.A4C(this.A0K, map);
        }
    }

    public final void A0b(Map<String, String> map) {
        AnonymousClass29 anonymousClass29 = this;
        HashMap map2 = null;
        char c = !anonymousClass29.A0g() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    anonymousClass29 = anonymousClass29;
                    if (!anonymousClass29.A0U) {
                        c = 4;
                        break;
                    } else {
                        c = 2;
                        break;
                    }
                case 4:
                    anonymousClass29 = anonymousClass29;
                    if (anonymousClass29.A0B == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    anonymousClass29 = anonymousClass29;
                    anonymousClass29.A0B.A5p(anonymousClass29);
                    c = 6;
                    break;
                case 6:
                    map = map;
                    map2 = new HashMap();
                    if (map == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    map = map;
                    map2 = map2;
                    map2.putAll(map);
                    c = '\b';
                    break;
                case '\b':
                    anonymousClass29 = anonymousClass29;
                    if (!anonymousClass29.A0V) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    anonymousClass29 = anonymousClass29;
                    map2 = map2;
                    map2.put(A01(264, 7, 126), String.valueOf(anonymousClass29.A02));
                    map2.put(A01(485, 7, 114), String.valueOf(anonymousClass29.A01));
                    c = '\n';
                    break;
                case '\n':
                    anonymousClass29 = anonymousClass29;
                    if (!TextUtils.isEmpty(anonymousClass29.A3P())) {
                        c = 11;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case 11:
                    anonymousClass29 = anonymousClass29;
                    if (anonymousClass29.A0C == null) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    anonymousClass29 = anonymousClass29;
                    map2 = map2;
                    anonymousClass29.A0C.A4H(anonymousClass29.A3P(), map2);
                    c = '\r';
                    break;
                case '\r':
                    anonymousClass29 = anonymousClass29;
                    if (!anonymousClass29.A0i()) {
                        c = 14;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 14:
                    anonymousClass29 = anonymousClass29;
                    if (!anonymousClass29.A0j()) {
                        c = 16;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    anonymousClass29 = anonymousClass29;
                    map = map;
                    map2 = map2;
                    anonymousClass29.A07(map, map2);
                    c = 16;
                    break;
                case 16:
                    anonymousClass29 = anonymousClass29;
                    anonymousClass29.A0U = true;
                    c = 2;
                    break;
            }
        }
    }

    public final void A0c(Map<String, String> map) {
        if (this.A0C != null) {
            this.A0C.A4Y(this.A0K, map);
        }
    }

    public final void A0d(Map<String, String> map) {
        if (this.A0C != null) {
            this.A0C.A4Z(this.A0K, map);
        }
    }

    public final boolean A0e() {
        return true;
    }

    public final boolean A0f() {
        AnonymousClass29 anonymousClass29 = this;
        boolean z = false;
        char c = anonymousClass29.A0g() ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass29 = anonymousClass29;
                    if (anonymousClass29.A09 == null) {
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

    public final boolean A0g() {
        AnonymousClass29 anonymousClass29 = this;
        boolean z = false;
        char c = anonymousClass29.A0S ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass29 = anonymousClass29;
                    if (!anonymousClass29.A0T) {
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

    public final boolean A0h() {
        return this.A0V;
    }

    public final boolean A0i() {
        AnonymousClass29 anonymousClass29 = this;
        boolean z = false;
        char c = K1.A18(anonymousClass29.A08) ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass29 = anonymousClass29;
                    if (!anonymousClass29.A0g()) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    anonymousClass29 = anonymousClass29;
                    if (!anonymousClass29.A0X) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    z = true;
                    c = 5;
                    break;
                case 5:
                    return z;
                case 6:
                    z = false;
                    c = 5;
                    break;
            }
        }
    }

    public final boolean A0j() {
        AnonymousClass29 anonymousClass29 = this;
        boolean z = false;
        char c = K1.A18(anonymousClass29.A08) ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass29 = anonymousClass29;
                    if (!anonymousClass29.A0g()) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    anonymousClass29 = anonymousClass29;
                    if (!anonymousClass29.A0Y) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    z = true;
                    c = 5;
                    break;
                case 5:
                    return z;
                case 6:
                    z = false;
                    c = 5;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C1V, com.facebook.ads.redexgen.X.InterfaceC01851h
    public final String A3P() {
        return this.A0K;
    }

    @Override // com.facebook.ads.redexgen.X.C1V
    public final Collection<String> A3R() {
        return this.A0P;
    }

    @Override // com.facebook.ads.redexgen.X.C1V
    public final C1U A3a() {
        return this.A0A;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC01851h
    public AdPlacementType A3d() {
        return AdPlacementType.NATIVE;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC01851h
    public final void onDestroy() {
    }
}
