package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import com.facebook.ads.AdError;
import com.facebook.ads.InterstitialAdExtendedListener;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4W, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C4W extends C4V implements InterstitialAdExtendedListener {
    private static byte[] A01;
    private final C4B A00;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 111);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{7, 0, 6, 11, 17, 6, 6, 27, 6, 11, 25, 17, 7, 7, 21, 19, 17, 11, 31, 17, 13, 48, 55, 45, 38, 60, 43, 43, 54, 43, 38, 58, 54, 61, 60, 38, 50, 60, 32, 60, 63, 62, 55, 47, 57, 62, 38, 49, 60, 57, 52, 49, 36, 57, 63, 62, 47, 36, 57, 61, 53, 47, 59, 53, 41};
    }

    public C4W(String str, AnonymousClass42 anonymousClass42, C4B c4b) {
        super(str, anonymousClass42);
        this.A00 = c4b;
    }

    public final void onAdClicked(com.facebook.ads.Ad ad) {
        super.A00.A5m(1024, this.A01, null);
    }

    public final void onAdLoaded(com.facebook.ads.Ad ad) {
        Bundle bundle = new Bundle();
        bundle.putLong(A00(39, 26, 31), this.A00.A08());
        super.A00.A5m(1020, this.A01, bundle);
    }

    public final void onError(com.facebook.ads.Ad ad, AdError adError) {
        Bundle bundle = new Bundle();
        bundle.putString(A00(0, 21, 59), adError.getErrorMessage());
        bundle.putInt(A00(21, 18, 22), adError.getErrorCode());
        super.A00.A5m(1023, this.A01, bundle);
    }

    public final void onInterstitialActivityDestroyed() {
        super.A00.A5m(1026, this.A01, null);
        C02634h.A00().A09(this.A01);
    }

    public final void onInterstitialDismissed(com.facebook.ads.Ad ad) {
        super.A00.A5m(1022, this.A01, null);
    }

    public final void onInterstitialDisplayed(com.facebook.ads.Ad ad) {
        super.A00.A5m(1021, this.A01, null);
    }

    public final void onLoggingImpression(com.facebook.ads.Ad ad) {
        super.A00.A5m(1025, this.A01, null);
    }

    public final void onRewardedAdCompleted() {
        super.A00.A5m(3000, this.A01, null);
    }

    public final void onRewardedAdServerFailed() {
        super.A00.A5m(AuthApiStatusCodes.AUTH_API_CLIENT_ERROR, this.A01, null);
    }

    public final void onRewardedAdServerSucceeded() {
        super.A00.A5m(AuthApiStatusCodes.AUTH_API_ACCESS_FORBIDDEN, this.A01, null);
    }
}
