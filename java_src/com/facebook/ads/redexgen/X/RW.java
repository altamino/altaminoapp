package com.facebook.ads.redexgen.X;

import android.widget.ImageView;
import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class RW implements InterfaceC02072d {
    public final WeakReference<ImageView> A00;

    private RW(ImageView imageView) {
        this.A00 = new WeakReference<>(imageView);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC02072d
    public final void A5P(boolean z) {
        RW rw = this;
        char c = !z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    rw = rw;
                    if (rw.A00.get() == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    rw = rw;
                    rw.A00.get().setVisibility(8);
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }
}
