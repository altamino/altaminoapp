package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.protocol.AdErrorType;
import io.agora.rtc.Constants;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Lb, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0691Lb {
    private static byte[] A05;
    private final EnumC0690La A00;

    @Nullable
    private final Long A01;

    @Nullable
    private final String A02;

    @Nullable
    private final String A03;

    @Nullable
    private final String A04;

    static {
        A02();
    }

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 7);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A05 = new byte[]{41, 34, 47, 20, 63, 34, 38, 46, 20, 63, 36, 32, 46, 37, 43, 26, 18, 15, 19, 30, 11, 26, 95, 90, 12, 95, 22, 12, 95, 17, 16, 11, 95, 9, 30, 19, 22, 27, 95, 29, 30, 17, 17, 26, 13, 95, 11, 26, 18, 15, 19, 30, 11, 26, 24, 21, 28, 9, 67, 82, 74, 95, 92, 82, 87, 90, 113, 124, 56, 61, 124, 56, 126, 119, 106, 56, 81, 92, 94, 89, 56, 61, 107, 56, 122, 125, 113, 118, 127, 56, 109, 107, 125, 124, 56, 119, 118, 56, 81, 92, 94, 89, 56, 61, 107, 110, 69, 72, 12, 9, 72, 12, 74, 67, 94, 12, 88, 73, 65, 92, 64, 77, 88, 73, 12, 9, 95, 12, 78, 73, 69, 66, 75, 12, 89, 95, 73, 72, 12, 67, 66, 12, 88, 73, 65, 92, 64, 77, 88, 73, 12, 9, 95, 13, 28, 5, 51, 8, 21, 19, 22, 22, 9, 20, 18, 3, 2, 70, 36, 15, 2, 54, 7, 31, 10, 9, 7, 2, 70, 18, 31, 22, 3, 70, 72, 99, 110, 42, 47, 110, 42, 108, 101, 120, 42, 122, 102, 107, 105, 111, 103, 111, 100, 126, 42, 47, 121, 42, 104, 111, 99, 100, 109, 42, 127, 121, 111, 110, 42, 101, 100, 42, 122, 102, 107, 105, 111, 103, 111, 100, 126, 42, 47, 121, 117, 94, 83, 23, 18, 83, 23, 81, 88, 69, 23, 100, 115, 124, 23, 65, 82, 69, 68, 94, 88, 89, 23, 18, 68, 23, 85, 82, 94, 89, 80, 23, 66, 68, 82, 83, 23, 88, 89, 23, 100, 115, 124, 23, 65, 82, 69, 68, 94, 88, 89, 23, 18, 68, 109, 122, 108, 112, 115, 105, 122, 123, 64, 111, 115, 126, 124, 122, 114, 122, 113, 107, 64, 118, 123, 40, 63, 48, 4, 45, 62, 41, 40, 50, 52, 53, 36, 53, 61, 32, 60, 49, 36, 53, 108, 109, 126, 97, 107, 109, 87, 97, 108, 29, 22, 27, 32, 22, 27, 7, 32, 56, 47, 34, 39, 42, 110, 12, 39, 42, 30, 47, 55, 34, 33, 47, 42};
    }

    public C0691Lb(Context context) {
        this.A00 = EnumC0690La.A04;
        this.A01 = null;
        this.A03 = null;
        this.A04 = null;
        this.A02 = null;
    }

    public C0691Lb(Context context, @Nullable String str, String str2, LW lw) throws LR {
        if (TextUtils.isEmpty(str)) {
            this.A00 = EnumC0690La.A04;
            this.A01 = null;
            this.A03 = null;
            this.A04 = null;
            this.A02 = null;
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            switch (LZ.A00[EnumC0690La.valueOf(jSONObject.getString(A01(54, 4, 107)).toUpperCase()).ordinal()]) {
                case 1:
                    this.A00 = EnumC0690La.A03;
                    this.A01 = Long.valueOf(jSONObject.getString(A01(337, 6, 120)));
                    this.A02 = jSONObject.optString(A01(0, 14, 76), null);
                    this.A03 = jSONObject.getString(A01(328, 9, 15));
                    this.A04 = null;
                    break;
                case 2:
                    this.A00 = EnumC0690La.A02;
                    this.A01 = Long.valueOf(jSONObject.getString(A01(337, 6, 120)));
                    this.A02 = jSONObject.optString(A01(0, 14, 76), null);
                    this.A03 = jSONObject.getString(A01(328, 9, 15));
                    this.A04 = new JSONObject(jSONObject.getString(A01(58, 7, 52))).toString();
                    break;
                default:
                    throw new LR(AdErrorType.BID_PAYLOAD_ERROR, A01(Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED, 28, 97) + jSONObject.getString(A01(54, 4, 107)));
            }
            if (!jSONObject.getString(A01(309, 11, 92)).equals(BuildConfigApi.getVersionName(context))) {
                throw new LR(AdErrorType.BID_IMPRESSION_MISMATCH, String.format(Locale.US, A01(234, 54, 48), this.A01, jSONObject.getString(A01(309, 11, 92)), BuildConfigApi.getVersionName(context)));
            }
            if (!jSONObject.getString(A01(288, 21, 24)).equals(str2)) {
                throw new LR(AdErrorType.BID_IMPRESSION_MISMATCH, String.format(Locale.US, A01(184, 50, 13), this.A01, jSONObject.getString(A01(288, 21, 24)), str2));
            }
            HashSet hashSet = new HashSet(Arrays.asList(Integer.valueOf(LW.A0D.A03()), Integer.valueOf(LW.A0G.A03()), Integer.valueOf(LW.A0E.A03()), Integer.valueOf(LW.A0F.A03())));
            if (jSONObject.getInt(A01(320, 8, 87)) == lw.A03()) {
                return;
            }
            if (hashSet.contains(Integer.valueOf(jSONObject.getInt(A01(320, 8, 87)))) && hashSet.contains(Integer.valueOf(lw.A03()))) {
            } else {
                throw new LR(AdErrorType.BID_IMPRESSION_MISMATCH, String.format(Locale.US, A01(105, 48, 43), this.A01, Integer.valueOf(jSONObject.getInt(A01(320, 8, 87))), lw));
            }
        } catch (JSONException e) {
            P7.A07(context, A01(Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, 3, 107), P8.A0D, new PA(e));
            throw new LR(AdErrorType.BID_PAYLOAD_ERROR, A01(343, 18, 73), e);
        }
    }

    @Nullable
    public static LW A00(String str) throws LR {
        try {
            JSONObject json = new JSONObject(str);
            return LW.A00(json.getInt(A01(320, 8, 87)));
        } catch (JSONException e) {
            throw new LR(AdErrorType.BID_PAYLOAD_ERROR, A01(343, 18, 73), e);
        }
    }

    public static void A03(LW lw) throws LR {
        char c = !LW.A0C.equals(lw) ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    lw = lw;
                    if (!LW.A0A.equals(lw)) {
                        c = 3;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 3:
                    lw = lw;
                    if (!LW.A0B.equals(lw)) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 4:
                    lw = lw;
                    if (!LW.A09.equals(lw)) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    throw new LR(AdErrorType.BID_IMPRESSION_MISMATCH, String.format(Locale.US, A01(14, 40, 120), Integer.valueOf(lw.A03())));
                case 6:
                    return;
            }
        }
    }

    @Nullable
    public final String A04() {
        C0691Lb c0691Lb = this;
        String string = null;
        char c = c0691Lb.A01 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    string = null;
                    c = 3;
                    break;
                case 3:
                    return string;
                case 4:
                    c0691Lb = c0691Lb;
                    string = c0691Lb.A01.toString();
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    public final String A05() {
        return this.A02;
    }

    @Nullable
    public final String A06() {
        return this.A04;
    }

    public final void A07(String str) throws LR {
        if (!this.A03.equals(str)) {
            throw new LR(AdErrorType.BID_IMPRESSION_MISMATCH, String.format(Locale.US, A01(65, 40, 31), this.A01, this.A03, str));
        }
    }

    public final boolean A08() {
        boolean z = false;
        char c = this.A00 != EnumC0690La.A04 ? (char) 2 : (char) 4;
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

    public final boolean A09() {
        boolean z = false;
        char c = this.A00 == EnumC0690La.A02 ? (char) 2 : (char) 4;
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
}
