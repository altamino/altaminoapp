package com.facebook.ads.redexgen.X;

import com.facebook.ads.RewardData;
import com.facebook.ads.internal.protocol.AdPlacementType;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.2G, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public abstract class C2G implements InterfaceC01851h {
    public int A00;
    public RewardData A01;

    public abstract int A0B();

    public abstract boolean A0C();

    public final void A00(int i) {
        this.A00 = i;
    }

    public final void A01(RewardData rewardData) {
        this.A01 = rewardData;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC01851h
    public final AdPlacementType A3d() {
        return AdPlacementType.REWARDED_VIDEO;
    }
}
