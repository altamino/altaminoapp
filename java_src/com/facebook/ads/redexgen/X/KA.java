package com.facebook.ads.redexgen.X;

import java.util.Comparator;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class KA implements Comparator<K5> {
    public final /* synthetic */ KD A00;

    public KA(KD kd) {
        this.A00 = kd;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.Comparator
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final int compare(K5 k5, K5 k52) {
        return k5.name().compareTo(k52.name());
    }
}
