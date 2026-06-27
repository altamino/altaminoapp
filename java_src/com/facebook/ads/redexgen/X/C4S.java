package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import com.facebook.ads.RewardData;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.RewardedVideoAdListener;
import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4S, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C4S {
    public int A00 = -1;
    public long A01 = -1;

    @Nullable
    public RewardData A02;

    @Nullable
    public RewardedVideoAdListener A03;

    @Nullable
    public String A04;

    @Nullable
    public String A05;

    @Nullable
    public String A06;
    public boolean A07;
    public boolean A08;

    @Nullable
    private RewardedVideoAd A09;
    private WeakReference<RewardedVideoAd> A0A;
    public final Context A0B;
    public final String A0C;

    public C4S(Context context, String str, @Nullable RewardedVideoAd rewardedVideoAd) {
        this.A0B = context;
        this.A0C = str;
        this.A09 = rewardedVideoAd;
        this.A0A = new WeakReference<>(rewardedVideoAd);
    }

    @Nullable
    public final RewardedVideoAd A00() {
        C4S c4s = this;
        RewardedVideoAd rewardedVideoAd = null;
        char c = c4s.A09 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c4s = c4s;
                    rewardedVideoAd = c4s.A09;
                    c = 3;
                    break;
                case 3:
                    return rewardedVideoAd;
                case 4:
                    c4s = c4s;
                    rewardedVideoAd = c4s.A0A.get();
                    c = 3;
                    break;
            }
        }
    }

    public final void A01(@Nullable RewardedVideoAd rewardedVideoAd) {
        C4S c4s = this;
        char c = rewardedVideoAd == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c4s = c4s;
                    if (!K1.A0q(c4s.A0B)) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    c4s = c4s;
                    rewardedVideoAd = rewardedVideoAd;
                    c4s.A09 = rewardedVideoAd;
                    c = 3;
                    break;
            }
        }
    }
}
