package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdsManager;
import com.facebook.ads.internal.api.NativeAdsManagerApi;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.9h, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C03889h implements NativeAdsManagerApi {
    private static byte[] A0A;
    private static final String A0B;
    private NativeAdsManager.Listener A01;
    private C02473r A02;
    private String A03;
    private final int A06;
    private final Context A07;
    private final String A08;
    private final List<NativeAd> A09;
    private int A00 = -1;
    private boolean A04 = false;
    private boolean A05 = false;

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 67);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A0A = new byte[]{-21, 6, 14, 17, 10, 9, -59, 25, 20, -59, 14, 19, 14, 25, 14, 6, 17, 14, 31, 10, -59, -24, 20, 20, 16, 14, 10, -14, 6, 19, 6, 12, 10, 23, -45};
    }

    static {
        A01();
        A0B = NativeAdsManager.class.getSimpleName();
    }

    @SuppressLint({"CatchGeneralException"})
    public C03889h(Context context, String str, int i) {
        this.A07 = context;
        this.A08 = str;
        this.A06 = Math.max(i, 0);
        this.A09 = new ArrayList(i);
        try {
            CookieManager.getInstance();
            if (Build.VERSION.SDK_INT < 21) {
                CookieSyncManager.createInstance(context);
            }
        } catch (Exception e) {
            Log.w(A0B, A00(0, 35, 98), e);
        }
    }

    public final NativeAdsManager.Listener A02() {
        return this.A01;
    }

    public final C02473r A03() {
        return this.A02;
    }

    public final void A04() {
        this.A09.clear();
    }

    public final void A05(int i) {
        this.A00 = i;
    }

    public final void A06(NativeAd nativeAd) {
        this.A09.add(nativeAd);
    }

    public final void A07(boolean z) {
        this.A04 = z;
    }

    public final void disableAutoRefresh() {
        this.A05 = true;
        if (this.A02 != null) {
            this.A02.A07();
        }
    }

    public final int getUniqueNativeAdCount() {
        return this.A09.size();
    }

    public final boolean isLoaded() {
        return this.A04;
    }

    public final void loadAds() {
        loadAds(NativeAdBase.MediaCacheFlag.ALL);
    }

    public final void loadAds(NativeAdBase.MediaCacheFlag mediaCacheFlag) {
        C03889h c03889h = this;
        LW lw = LW.A06;
        int i = c03889h.A06;
        char c = c03889h.A02 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c03889h = c03889h;
                    c03889h.A02.A06();
                    c = 3;
                    break;
                case 3:
                    c03889h = c03889h;
                    lw = lw;
                    c03889h.A02 = new C02473r(c03889h.A07, c03889h.A08, lw, null, i);
                    if (!c03889h.A05) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c03889h = c03889h;
                    c03889h.A02.A07();
                    c = 5;
                    break;
                case 5:
                    C03889h c03889h2 = c03889h;
                    c03889h2.A02.A0A(c03889h2.A03);
                    c03889h2.A02.A09(new C03929l(c03889h2, c03889h2.A07, mediaCacheFlag));
                    c03889h2.A02.A08();
                    return;
            }
        }
    }

    public final NativeAd nextNativeAd() {
        C03889h c03889h = this;
        NativeAd nativeAd = null;
        char c = c03889h.A09.size() == 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    nativeAd = null;
                    c = 3;
                    break;
                case 3:
                    return nativeAd;
                case 4:
                    c03889h = c03889h;
                    int i = c03889h.A00;
                    c03889h.A00 = i + 1;
                    nativeAd = c03889h.A09.get(i % c03889h.A09.size());
                    if (i < c03889h.A09.size()) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c03889h = c03889h;
                    nativeAd = new NativeAd(c03889h.A07, nativeAd);
                    c = 3;
                    break;
            }
        }
    }

    public final void setExtraHints(String str) {
        this.A03 = str;
    }

    public final void setListener(NativeAdsManager.Listener listener) {
        this.A01 = listener;
    }
}
