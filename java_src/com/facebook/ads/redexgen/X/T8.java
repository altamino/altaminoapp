package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class T8 extends AnonymousClass27 {
    public final /* synthetic */ TC A00;

    public T8(TC tc) {
        this.A00 = tc;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass27
    public final void A03() {
        T8 t8 = this;
        char c = t8.A00.A02 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    t8 = t8;
                    if (t8.A00.A01 != null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    t8 = t8;
                    t8.A00.A02.setToolbarListener(t8.A00.A01);
                    t8.A00.A02.setToolbarActionMode(0);
                    t8.A00.A02.setToolbarActionMessage("");
                    c = 3;
                    break;
            }
        }
    }
}
