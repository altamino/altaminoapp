package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import com.facebook.ads.AdError;
import com.facebook.ads.S2SRewardedVideoAdExtendedListener;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4Y, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C4Y extends C4V implements S2SRewardedVideoAdExtendedListener {
    private static byte[] A02;
    private final C4E A00;
    private final C4S A01;

    static {
        A01();
    }

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 76);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A02 = new byte[]{124, 123, 125, 112, 106, 125, 125, 96, 125, 112, 98, 106, 124, 124, 110, 104, 106, 112, 100, 106, 118, 20, 19, 9, 2, 24, 15, 15, 18, 15, 2, 30, 18, 25, 24, 2, 22, 24, 4, 41, 42, 43, 34, 58, 44, 43, 51, 36, 41, 44, 33, 36, 49, 44, 42, 43, 58, 49, 44, 40, 32, 58, 46, 32, 60, 106, 109, 119, 124, 113, 117, 124, 117, 106, 103, 102, 108, 124, 103, 118, 113, 98, 119, 106, 108, 109, 124, 104, 102, 122};
    }

    public C4Y(String str, AnonymousClass42 anonymousClass42, C4E c4e, C4S c4s) {
        super(str, anonymousClass42);
        this.A00 = c4e;
        this.A01 = c4s;
    }

    public final void onAdClicked(com.facebook.ads.Ad ad) {
        super.A00.A5m(2104, super.A01, null);
    }

    public final void onAdLoaded(com.facebook.ads.Ad ad) {
        Bundle bundle = new Bundle();
        bundle.putLong(A00(39, 26, 41), this.A00.A0A());
        bundle.putInt(A00(65, 25, 111), this.A01.A00);
        super.A00.A5m(2100, super.A01, bundle);
    }

    public final void onError(com.facebook.ads.Ad ad, AdError adError) {
        Bundle bundle = new Bundle();
        bundle.putString(A00(0, 21, 99), adError.getErrorMessage());
        bundle.putInt(A00(21, 18, 17), adError.getErrorCode());
        super.A00.A5m(2103, super.A01, bundle);
    }

    public final void onLoggingImpression(com.facebook.ads.Ad ad) {
        super.A00.A5m(2105, super.A01, null);
    }

    public final void onRewardServerFailed() {
        super.A00.A5m(AuthApiStatusCodes.AUTH_API_CLIENT_ERROR, super.A01, null);
    }

    public final void onRewardServerSuccess() {
        super.A00.A5m(AuthApiStatusCodes.AUTH_API_ACCESS_FORBIDDEN, super.A01, null);
    }

    public final void onRewardedVideoActivityDestroyed() {
        super.A00.A5m(2106, super.A01, null);
    }

    public final void onRewardedVideoClosed() {
        super.A00.A5m(2110, super.A01, null);
    }

    public final void onRewardedVideoCompleted() {
        super.A00.A5m(3000, super.A01, null);
    }
}
