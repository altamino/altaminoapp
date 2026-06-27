package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import com.facebook.ads.AdSettings;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.RewardData;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.EnumSet;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.3V, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C3V {
    public int A00;

    @Nullable
    public RewardData A01;

    @Nullable
    public EnumC0685Kv A02;

    @Nullable
    public String A03;

    @Nullable
    public String A04;
    public boolean A05;
    public final LV A06;
    public final LW A07;
    public final String A08;

    @Nullable
    public final EnumSet<CacheFlag> A09;
    private final int A0A;
    private final AdPlacementType A0B;

    public C3V(String str, LW lw, AdPlacementType adPlacementType, LV lv, int i) {
        this(str, lw, adPlacementType, lv, i, EnumSet.of(CacheFlag.NONE));
    }

    public C3V(String str, LW lw, AdPlacementType adPlacementType, LV lv, int i, EnumSet<CacheFlag> enumSet) {
        this.A08 = str;
        this.A0B = adPlacementType;
        this.A06 = lv;
        this.A0A = i;
        this.A09 = enumSet;
        this.A07 = lw;
        this.A00 = -1;
    }

    public final int A00() {
        return this.A00;
    }

    public final AdPlacementType A01() {
        C3V c3v = this;
        AdPlacementType adPlacementType = null;
        char c = c3v.A0B != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c3v = c3v;
                    adPlacementType = c3v.A0B;
                    c = 3;
                    break;
                case 3:
                    return adPlacementType;
                case 4:
                    c3v = c3v;
                    if (c3v.A06 != null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    adPlacementType = AdPlacementType.NATIVE;
                    c = 3;
                    break;
                case 6:
                    c3v = c3v;
                    if (c3v.A06 != LV.A07) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    adPlacementType = AdPlacementType.INTERSTITIAL;
                    c = 3;
                    break;
                case '\b':
                    adPlacementType = AdPlacementType.BANNER;
                    c = 3;
                    break;
            }
        }
    }

    public final C0700Lk A02(Context context, C0691Lb c0691Lb) {
        C0764Nz c0764Nz;
        String str = this.A08;
        if (this.A06 != null) {
            c0764Nz = new C0764Nz(this.A06.getHeight(), this.A06.getWidth());
        } else {
            c0764Nz = null;
        }
        return new C0700Lk(context, str, c0764Nz, this.A07, AdSettings.getTestAdType() != AdSettings.TestAdType.DEFAULT ? AdSettings.getTestAdType().getAdTypeString() : null, this.A0A, AdSettings.isTestMode(context), AdSettings.isChildDirected() || AdSettings.isMixedAudience(), c0691Lb, OE.A01(K1.A0P(context)), this.A03);
    }

    public final void A03(int i) {
        this.A00 = i;
    }

    public final void A04(@Nullable RewardData rewardData) {
        this.A01 = rewardData;
    }

    public final void A05(@Nullable EnumC0685Kv enumC0685Kv) {
        this.A02 = enumC0685Kv;
    }

    public final void A06(@Nullable String str) {
        this.A03 = str;
    }

    public final void A07(@Nullable String str) {
        this.A04 = str;
    }

    public final void A08(boolean z) {
        this.A05 = z;
    }
}
