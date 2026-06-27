package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import com.facebook.ads.RewardData;
import com.facebook.ads.RewardedAdListener;
import com.facebook.ads.internal.api.InterstitialAdApi;
import java.util.Arrays;
import java.util.EnumSet;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.9A, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C9A implements InterstitialAdApi {
    private static byte[] A03;
    private final InterstitialAd A00;
    private final C4J A01;
    private final C4K A02;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 47);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A03 = new byte[]{39, 0, 26, 11, 28, 29, 26, 7, 26, 7, 15, 2, 78, 15, 10, 78, 10, 11, 29, 26, 28, 1, 23, 11, 10, 86, 113, 107, 122, 109, 108, 107, 118, 107, 118, 126, 115, 63, 126, 123, 63, 115, 112, 126, 123, 63, 109, 122, 110, 106, 122, 108, 107, 122, 123, 57, 56, 46, 41, 47, 50, 36, 57, 110, 55, 62, 61, 54, 107, 62, 63, 110, 48, 58, 61, 60, 62, 60, 22, 67, 22, 16, 64, 64, 17, 16, 37, 2, 24, 9, 30, 31, 24, 5, 24, 5, 13, 0, 76, 13, 8, 76, 31, 4, 3, 27, 76, 15, 13, 0, 0, 9, 8, 10, 17, 22, 14, 11, 0, 35, 0, 14, 11, 46, 11};
    }

    public C9A(Context context, String str, InterstitialAd interstitialAd) {
        this.A00 = interstitialAd;
        this.A02 = new C4K(context.getApplicationContext(), interstitialAd, str);
        this.A01 = new C4J(this.A02);
    }

    public final void A02(RewardData rewardData) {
        this.A02.A02 = rewardData;
    }

    public final void A03(EnumSet<CacheFlag> enumSet, @Nullable String str) {
        C0695Lf.A05(A00(117, 8, 64), A00(25, 30, 48), A00(62, 8, 32));
        this.A01.A0B(this.A00, enumSet, str);
    }

    public final InterstitialAd.InterstitialAdLoadConfigBuilder buildLoadAdConfig() {
        return new C9B(this);
    }

    public final InterstitialAd.InterstitialAdShowConfigBuilder buildShowAdConfig() {
        return new C9C();
    }

    public final void destroy() {
        C0695Lf.A05(A00(55, 7, 114), A00(0, 25, 65), A00(70, 8, 39));
        this.A01.A09();
    }

    public final void finalize() {
        this.A01.A04();
    }

    public final String getPlacementId() {
        return this.A02.A0B;
    }

    public final boolean isAdInvalidated() {
        return this.A01.A0C();
    }

    public final boolean isAdLoaded() {
        return this.A01.A0D();
    }

    public final void loadAd() {
        loadAd(CacheFlag.ALL);
    }

    public final void loadAd(InterstitialAd.InterstitialLoadAdConfig interstitialLoadAdConfig) {
        ((C9B) interstitialLoadAdConfig).A00();
    }

    public final void loadAd(EnumSet<CacheFlag> enumSet) {
        A03(enumSet, null);
    }

    public final void loadAdFromBid(String str) {
        A03(CacheFlag.ALL, str);
    }

    public final void loadAdFromBid(EnumSet<CacheFlag> cacheFlags, String str) {
        A03(cacheFlags, str);
    }

    public final void setAdListener(InterstitialAdListener interstitialAdListener) {
        this.A02.A01 = interstitialAdListener;
    }

    public final void setExtraHints(ExtraHints extraHints) {
        this.A02.A05 = extraHints.getHints();
        this.A02.A06 = extraHints.getMediationData();
    }

    public final void setRewardedAdListener(RewardedAdListener rewardedAdListener) {
        this.A02.A03 = rewardedAdListener;
    }

    public final boolean show() {
        C0695Lf.A05(A00(113, 4, 86), A00(86, 27, 67), A00(78, 8, 13));
        return this.A01.A0E(this.A00, new C9C());
    }

    public final boolean show(InterstitialAd.InterstitialShowAdConfig interstitialShowAdConfig) {
        return this.A01.A0E(this.A00, interstitialShowAdConfig);
    }
}
