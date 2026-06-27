package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.RewardData;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.RewardedVideoAdListener;
import com.facebook.ads.internal.api.RewardedVideoAdApi;
import com.tonyodev.fetch.FetchConst;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class A0 implements RewardedVideoAdApi {
    private static byte[] A04;
    private boolean A00 = false;
    private final RewardedVideoAd A01;
    private final C4R A02;
    private final C4S A03;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_UNKNOWN);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A04 = new byte[]{-13, 6, 24, 2, 19, 5, 6, 5, -63, 23, 10, 5, 6, 16, -63, 2, 5, -63, 5, 6, 20, 21, 19, 16, 26, 6, 5, 43, 46, 32, 35, 0, 35, 5, 49, 46, 44, 1, 40, 35, -4, -4, -3, -4, 43, 40, 42, -10, 16, 19, 5, 8, -27, 8, 52, 53, 67, 68, 66, 63, 73, 3, 3, -40, 2, -46, -42, -25, -26, 28, 23, -21, 23, -19, -19, -73, -72, -28, -28, -78, -77, -78, -45, 2, -50, -46, 2, -49, -43, -48, 7, 56, 8, 56, 6, 11, 57, 9, -47, -48, -52, -49, -3, -1, -49, -5, -40, -36, -37, -39, -44, -43, -42, 7, -4, 15, 33, 11, 28, 14, 15, 14, -54, 32, 19, 14, 15, 25, -54, 11, 14, -54, 22, 25, 11, 14, -54, 28, 15, 27, 31, 15, 29, 30, 15, 14, 28, 47, 65, 43, 60, 46, 47, 46, -22, 64, 51, 46, 47, 57, -22, 43, 46, -22, 61, 50, 57, 65, -22, 45, 43, 54, 54, 47, 46, -14, -25, -18, -10};
    }

    public A0(Context context, String str, RewardedVideoAd rewardedVideoAd) {
        this.A01 = rewardedVideoAd;
        this.A03 = new C4S(context.getApplicationContext(), str, this.A01);
        this.A02 = new C4R(this.A03);
    }

    public final void A02(@Nullable String str, boolean z) {
        this.A02.A0C(this.A01, str, z, this.A00);
    }

    public final RewardedVideoAd.RewardedVideoAdLoadConfigBuilder buildLoadAdConfig() {
        return new A1(this);
    }

    public final RewardedVideoAd.RewardedVideoAdShowConfigBuilder buildShowAdConfig() {
        return new A2();
    }

    public final void destroy() {
        C0695Lf.A05(A00(54, 7, 107), A00(0, 27, 60), A00(90, 8, 111));
        this.A02.A09();
    }

    public final void enableRVChain(boolean z) {
        this.A00 = z;
    }

    public final void finalize() {
        this.A02.A04();
    }

    public final String getPlacementId() {
        return this.A03.A0C;
    }

    public final int getVideoDuration() {
        return this.A03.A00;
    }

    public final boolean isAdInvalidated() {
        return this.A02.A0D();
    }

    public final boolean isAdLoaded() {
        return this.A02.A0E();
    }

    public final void loadAd() {
        C0695Lf.A05(A00(48, 6, 63), A00(114, 32, 69), A00(98, 8, 53));
        A02(null, true);
    }

    public final void loadAd(RewardedVideoAd.RewardedVideoLoadAdConfig rewardedVideoLoadAdConfig) {
        ((A1) rewardedVideoLoadAdConfig).A00();
    }

    public final void loadAd(boolean z) {
        C0695Lf.A05(A00(48, 6, 63), A00(114, 32, 69), A00(40, 8, 96));
        A02(null, z);
    }

    public final void loadAdFromBid(String str) {
        C0695Lf.A05(A00(27, 13, 90), A00(114, 32, 69), A00(75, 7, 26));
        A02(str, true);
    }

    public final void loadAdFromBid(String str, boolean z) {
        C0695Lf.A05(A00(27, 13, 90), A00(114, 32, 69), A00(67, 8, 81));
        A02(str, z);
    }

    public final void setAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        this.A03.A03 = rewardedVideoAdListener;
    }

    public final void setExtraHints(ExtraHints extraHints) {
        this.A03.A05 = extraHints.getHints();
        this.A03.A06 = extraHints.getMediationData();
    }

    public final void setRewardData(RewardData rewardData) {
        this.A02.A0B(rewardData);
    }

    public final boolean show() {
        C0695Lf.A05(A00(175, 4, 26), A00(146, 29, 101), A00(106, 8, 63));
        return show(-1);
    }

    public final boolean show(int i) {
        C0695Lf.A05(A00(175, 4, 26), A00(146, 29, 101), A00(82, 8, 55));
        return this.A02.A0F(this.A01, new A2().withAppOrientation(i).build());
    }

    public final boolean show(RewardedVideoAd.RewardedVideoShowAdConfig rewardedVideoShowAdConfig) {
        C0695Lf.A05(A00(175, 4, 26), A00(146, 29, 101), A00(61, 6, 58));
        return this.A02.A0F(this.A01, rewardedVideoShowAdConfig);
    }
}
