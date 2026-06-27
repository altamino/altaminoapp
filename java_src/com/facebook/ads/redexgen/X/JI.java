package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.dto.AdCookieData;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class JI {
    private static byte[] A05;
    public String A00;
    public String A01;
    public String A02;
    public Date A03;
    public boolean A04;

    static {
        A02();
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 6);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A05 = new byte[]{25, 23, 11, 82, 88, 65, 56, 63, 33, 29, 29, 29, 116, 120, 60, 60, 117, 21, 21, 21, 117, 33, 33, 33, 33, 120, 16, 16, 98, 53, 53, 98, 43, 43, 120, 34, 34, 34, 80, 71, 74, 83, 67, 68, 89, 81, 72, 83, 64, 85, 72, 78, 79};
    }

    private JI(String str, String str2, String str3, Date date) {
        this.A01 = str;
        this.A00 = str2;
        this.A02 = str3;
        this.A03 = date;
        this.A04 = (str2 == null || str3 == null) ? false : true;
    }

    private JI(JSONObject jSONObject) {
        this(jSONObject.optString(A00(6, 3, 75)), jSONObject.optString(A00(0, 3, 116)), jSONObject.optString(A00(38, 5, 32)), new Date(jSONObject.optLong(A00(43, 10, 39)) * 1000));
    }

    public static List<JI> A01(String str) throws JSONException {
        JI ji;
        List<AdCookieData> cookies = null;
        if (str != null) {
            JSONArray jSONArray = null;
            try {
                JSONArray jsonArray = new JSONArray(str);
                jSONArray = jsonArray;
            } catch (JSONException unused) {
            }
            if (jSONArray != null) {
                cookies = new ArrayList<>();
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject = null;
                    try {
                        jSONObject = jSONArray.getJSONObject(i);
                    } catch (JSONException unused2) {
                    }
                    if (jSONObject != null && (ji = new JI(jSONObject)) != null) {
                        cookies.add(ji);
                    }
                }
            }
        }
        return cookies;
    }

    public final String A03() {
        Date expirationDate = this.A03;
        if (expirationDate == null) {
            expirationDate = new Date();
            expirationDate.setTime(expirationDate.getTime() + 3600000);
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(A00(9, 29, 94));
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone(A00(3, 3, 19)));
        return simpleDateFormat.format(expirationDate);
    }

    public final boolean A04() {
        JI ji = this;
        boolean z = false;
        char c = ji.A00 != null ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    ji = ji;
                    if (ji.A02 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    ji = ji;
                    if (ji.A01 == null) {
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
}
