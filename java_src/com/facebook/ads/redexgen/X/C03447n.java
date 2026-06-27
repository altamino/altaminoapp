package com.facebook.ads.redexgen.X;

import android.database.Observable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.7n, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C03447n extends Observable<AbstractC03457o> {
    public final void A00() {
        C03447n c03447n = this;
        int size = c03447n.mObservers.size() - 1;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (size < 0) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c03447n = c03447n;
                    ((AbstractC03457o) c03447n.mObservers.get(size)).A00();
                    size--;
                    c = 2;
                    break;
                case 4:
                    return;
            }
        }
    }
}
