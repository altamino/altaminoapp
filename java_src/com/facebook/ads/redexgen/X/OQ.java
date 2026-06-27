package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.net.Uri;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.facebook.ads.AdSettings;
import com.facebook.ads.RewardData;
import com.narvii.util.ws.WsMessage;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.Executor;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class OQ {
    private static byte[] A05;
    private Executor A00 = O4.A05;
    private final Context A01;
    private final InterfaceC03688m A02;
    private final RK A03;

    @Nullable
    private final String A04;

    static {
        A04();
    }

    private static String A02(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 115);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A05 = new byte[]{83, 95, 95, 91, 94, 37, 26, 26, 98, 98, 98, 25, 16, 94, 25, 81, 76, 78, 80, 77, 90, 90, 86, 25, 78, 90, 88, 26, 76, 96, 79, 84, 80, 89, 78, 80, 74, 89, 80, 95, 98, 90, 93, 86, 26, 94, 80, 93, 97, 80, 93, 74, 94, 84, 79, 80, 74, 93, 80, 98, 76, 93, 79, 7, 11, 0, -5, 80, 95, 95, 88, 83, 43, 48, 36, 31, -8, 4, 4, 0, 3, -54, -65, -65, 7, 7, 7, -66, -10, -15, -13, -11, -14, -1, -1, -5, -66, -13, -1, -3, -65, -15, 5, -12, -7, -11, -2, -13, -11, -17, -2, -11, 4, 7, -1, 2, -5, -65, 3, -11, 2, 6, -11, 2, -17, 3, -7, -12, -11, -17, 2, -11, 7, -15, 2, -12, -21, -34};
    }

    public OQ(Context context, RK rk, @Nullable String str, InterfaceC03688m interfaceC03688m) {
        this.A01 = context;
        this.A03 = rk;
        this.A04 = str;
        this.A02 = interfaceC03688m;
    }

    @Nullable
    public static String A03(@Nullable RewardData rewardData, String str, String str2) {
        String urlPrefix = null;
        String strA02 = null;
        String string = null;
        char c = rewardData != null ? (char) 2 : '\b';
        while (true) {
            switch (c) {
                case 2:
                    urlPrefix = AdSettings.getUrlPrefix();
                    if (urlPrefix == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    urlPrefix = urlPrefix;
                    if (!urlPrefix.isEmpty()) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    strA02 = A02(76, 60, 29);
                    c = 5;
                    break;
                case 5:
                    rewardData = rewardData;
                    str = str;
                    str2 = str2;
                    strA02 = strA02;
                    Uri uri = Uri.parse(strA02);
                    Uri.Builder builder = new Uri.Builder();
                    builder.scheme(uri.getScheme());
                    builder.authority(uri.getAuthority());
                    builder.path(uri.getPath());
                    builder.query(uri.getQuery());
                    builder.fragment(uri.getFragment());
                    builder.appendQueryParameter(A02(72, 4, 72), rewardData.getUserID());
                    builder.appendQueryParameter(A02(WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST, 2, 8), rewardData.getCurrency());
                    builder.appendQueryParameter(A02(63, 4, 36), str);
                    builder.appendQueryParameter(A02(67, 5, 124), str2);
                    string = builder.build().toString();
                    c = 6;
                    break;
                case 6:
                    return string;
                case 7:
                    urlPrefix = urlPrefix;
                    strA02 = String.format(Locale.US, A02(0, 63, 120), urlPrefix);
                    c = 5;
                    break;
                case '\b':
                    string = null;
                    c = 6;
                    break;
            }
        }
    }

    public final void A05() {
        if (!TextUtils.isEmpty(this.A04)) {
            AsyncTaskC0782Or asyncTaskC0782Or = new AsyncTaskC0782Or(this.A01, new HashMap());
            asyncTaskC0782Or.A07(new OT(this));
            asyncTaskC0782Or.executeOnExecutor(this.A00, this.A04);
        }
    }
}
