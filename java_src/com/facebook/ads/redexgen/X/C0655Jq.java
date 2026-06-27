package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseIntArray;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.settings.MultithreadedBundleWrapper;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Jq, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0655Jq {
    private static byte[] A00;
    private static final SparseIntArray A01;
    private static final Map<String, Integer> A02;

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 4);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A00 = new byte[]{-48, -36, -37, -31, -46, -27, -31, -99, -103, -104, -52, -69, -64, -68, -59, -70, -68, -91, -68, -53, -50, -58, -55, -62, -126, -119, -124, -124, -123, -110, 127, -108, -113, -117, -123, -114, -113, -128, -104, -117, -114, -128, -125, 116, -116, -118, -111, -111, -118, -113, -120, 65, -118, -113, -118, -107, 65, -123, -106, -122, 65, -107, -112, 65, -115, -126, -124, -116, 65, -112, -121, 65, -124, -112, -113, -113, -122, -124, -107, -118, -105, -118, -107, -102, 79, -112, -125, -113, -109, -125, -111, -110, -91, -79, -80, -80, -89, -91, -74, -85, -72, -85, -74, -69, -57, -58, -62, -43, -42, -45, -58, -64, -60, -48, -49, -57, -54, -56, -104, -108, -119, -117, -115, -107, -115, -106, -100, -121, -111, -116, -101, -54, -58, -69, -67, -65, -57, -65, -56, -50, -71, -64, -55, -52, -57, -69, -50, -51, -96, -93, -90, -90, 85, 81, 70, 72, 74, 82, 74, 83, 89, 88, 100, 80, 74, 94, 126, -111, -118, -128, -120, -127, -113};
    }

    static {
        A02();
        A02 = new HashMap();
        A01 = new SparseIntArray();
        A01.put(19, 1);
        A01.put(18, 2);
        A01.put(20, 4);
        A01.put(36, 6);
        A01.put(40, 3);
        A01.put(61, 5);
    }

    private C0655Jq() {
    }

    public static synchronized Integer A00(String str) {
        int iValueOf;
        Integer num = A02.get(str);
        if (num != null) {
            iValueOf = Integer.valueOf(A01.get(num.intValue()));
        } else {
            iValueOf = 0;
        }
        return iValueOf;
    }

    public static void A03(Context context, MultithreadedBundleWrapper multithreadedBundleWrapper) throws JSONException {
        ArrayList<String> placementIds;
        NetworkInfo activeNetwork;
        String bidderToken = DynamicLoaderFactory.makeLoader(context).createBidderTokenProviderApi().getBidderToken(context);
        String bidderToken2 = A01(92, 12, 62);
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(bidderToken2);
        if (connectivityManager != null && ((activeNetwork = connectivityManager.getActiveNetworkInfo()) == null || !activeNetwork.isConnectedOrConnecting())) {
            if (BuildConfigApi.isDebug()) {
                Log.e(A01(7, 17, 83), A01(43, 42, 29));
                return;
            }
            return;
        }
        MQ mqA02 = C0780Op.A02(context, false);
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(A01(24, 12, 28), bidderToken);
        if (multithreadedBundleWrapper != null && (placementIds = multithreadedBundleWrapper.getStringArrayList(A01(Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT, 14, 1))) != null) {
            JSONArray jSONArray = new JSONArray();
            Iterator<String> it = placementIds.iterator();
            while (it.hasNext()) {
                String placement = it.next();
                jSONArray.put(placement);
            }
            jSONObject2.put(A01(118, 13, 36), jSONArray);
        }
        A04(context, jSONObject2);
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put(A01(131, 17, 86), A01(148, 4, 54));
        jSONObject3.put(A01(104, 14, 93), A01(148, 4, 54));
        jSONObject.put(A01(0, 7, 105), jSONObject2);
        jSONObject.put(A01(85, 7, 26), jSONObject3);
        C0718Me c0718Me = new C0718Me();
        c0718Me.put(A01(36, 7, 27), jSONObject.toString());
        C0716Mc c0716McA0K = mqA02.A0K(M2.A02(), c0718Me);
        if (c0716McA0K == null || c0716McA0K.A00() != 200) {
            return;
        }
        String strA01 = c0716McA0K.A01();
        if (TextUtils.isEmpty(strA01)) {
            return;
        }
        JSONObject jSONObjectOptJSONObject = new JSONObject(strA01).optJSONObject(A01(166, 7, 24));
        JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject(A01(131, 17, 86));
        String strOptString = jSONObjectOptJSONObject.optString(A01(104, 14, 93));
        if (!TextUtils.isEmpty(strOptString)) {
            K1.A0Z(context).A28(strOptString);
        }
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObjectOptJSONObject2.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String key = jSONObjectOptJSONObject2.getString(next);
            map.put(next, Integer.valueOf(Integer.parseInt(key)));
        }
        synchronized (A02) {
            A02.putAll(map);
        }
    }

    private static void A04(Context context, JSONObject jSONObject) throws JSONException {
        InterfaceC0652Jm evnData = Jn.A00().A02(context, true);
        Iterator<Map.Entry<String, String>> it = evnData.A3T().entrySet().iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    jSONObject = jSONObject;
                    it = it;
                    Map.Entry<String, String> next = it.next();
                    jSONObject.put(next.getKey(), next.getValue());
                    c = 2;
                    break;
                case 4:
                    return;
            }
        }
    }
}
