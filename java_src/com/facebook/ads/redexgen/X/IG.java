package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.view.View;
import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class IG implements View.OnClickListener {
    public final /* synthetic */ IE A00;

    public IG(IE ie) {
        this.A00 = ie;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        IG ig = this;
        C1S c1sA00 = null;
        char c = ig.A00.getVideoView() == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    ig = ig;
                    Uri uri = Uri.parse(ig.A00.A05);
                    ig.A00.getVideoView().getEventBus().A02(new LO(uri));
                    c1sA00 = C1T.A00(ig.A00.getContext(), ig.A00.A03, ig.A00.A04, uri, new HashMap());
                    if (c1sA00 == null) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c1sA00 = c1sA00;
                    c1sA00.A02();
                    c = 2;
                    break;
            }
        }
    }
}
