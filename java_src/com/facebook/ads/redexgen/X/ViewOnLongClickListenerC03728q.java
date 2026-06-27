package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8q, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class ViewOnLongClickListenerC03728q implements View.OnLongClickListener {
    public final /* synthetic */ C8s A00;

    private ViewOnLongClickListenerC03728q(C8s c8s) {
        this.A00 = c8s;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        ViewOnLongClickListenerC03728q viewOnLongClickListenerC03728q = this;
        SL sl = null;
        boolean z = false;
        char c = viewOnLongClickListenerC03728q.A00.A0B != null ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    viewOnLongClickListenerC03728q = viewOnLongClickListenerC03728q;
                    if (viewOnLongClickListenerC03728q.A00.A06 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    viewOnLongClickListenerC03728q = viewOnLongClickListenerC03728q;
                    z = false;
                    viewOnLongClickListenerC03728q.A00.A0B.setBounds(0, 0, viewOnLongClickListenerC03728q.A00.A06.getWidth(), viewOnLongClickListenerC03728q.A00.A06.getHeight());
                    sl = viewOnLongClickListenerC03728q.A00.A0B;
                    if (!viewOnLongClickListenerC03728q.A00.A0B.A0E()) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    z = true;
                    c = 5;
                    break;
                case 5:
                    sl = sl;
                    sl.A0D(z);
                    c = 6;
                    break;
                case 6:
                    return true;
            }
        }
    }
}
