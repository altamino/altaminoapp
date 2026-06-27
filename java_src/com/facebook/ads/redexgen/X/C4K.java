package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import com.facebook.ads.RewardData;
import com.facebook.ads.RewardedAdListener;
import java.lang.ref.WeakReference;
import java.util.EnumSet;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4K, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C4K {
    public long A00 = -1;

    @Nullable
    public InterstitialAdListener A01;

    @Nullable
    public RewardData A02;

    @Nullable
    public RewardedAdListener A03;

    @Nullable
    public String A04;

    @Nullable
    public String A05;

    @Nullable
    public String A06;
    public EnumSet<CacheFlag> A07;

    @Nullable
    private InterstitialAd A08;
    private WeakReference<InterstitialAd> A09;
    public final Context A0A;
    public final String A0B;

    public C4K(Context context, @Nullable InterstitialAd interstitialAd, String str) {
        this.A0A = context;
        this.A0B = str;
        this.A08 = interstitialAd;
        this.A09 = new WeakReference<>(interstitialAd);
    }

    @Nullable
    public final InterstitialAd A00() {
        C4K c4k = this;
        InterstitialAd interstitialAd = null;
        char c = c4k.A08 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c4k = c4k;
                    interstitialAd = c4k.A08;
                    c = 3;
                    break;
                case 3:
                    return interstitialAd;
                case 4:
                    c4k = c4k;
                    interstitialAd = c4k.A09.get();
                    c = 3;
                    break;
            }
        }
    }

    public final void A01(@Nullable InterstitialAd interstitialAd) {
        C4K c4k = this;
        char c = interstitialAd == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c4k = c4k;
                    if (!K1.A0q(c4k.A0A)) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    c4k = c4k;
                    interstitialAd = interstitialAd;
                    c4k.A08 = interstitialAd;
                    c = 3;
                    break;
            }
        }
    }
}
