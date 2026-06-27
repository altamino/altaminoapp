package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class RI extends C01931p {
    public final /* synthetic */ RG A00;

    public RI(RG rg) {
        this.A00 = rg;
    }

    @Override // com.facebook.ads.redexgen.X.C01931p, com.facebook.ads.redexgen.X.InterfaceC01921o
    public final void A5L(int i, @Nullable String str) {
        this.A00.A08.set(true);
        this.A00.A06.A5i();
    }

    @Override // com.facebook.ads.redexgen.X.C01931p, com.facebook.ads.redexgen.X.InterfaceC01921o
    public final void A5R() {
        RI ri = this;
        char c = !ri.A00.A08.get() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    ri = ri;
                    if (!ri.A00.A07.compareAndSet(false, true)) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    ri = ri;
                    ri.A00.A06.A5R();
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }
}
