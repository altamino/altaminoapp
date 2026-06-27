package com.facebook.ads.redexgen.X;

import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class KC {
    private Map<K5, KB> A00;

    private KC() {
        this.A00 = new HashMap();
    }

    public /* synthetic */ KC(KA ka) {
        this();
    }

    public final KC A00(K5 k5, KB kb) {
        this.A00.put(k5, kb);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final KD A01() {
        return new KD(null, K5.A02(), this.A00, 0 == true ? 1 : 0);
    }

    public final KD A02(Throwable th) {
        return new KD(th, K5.A02(), this.A00, null);
    }
}
