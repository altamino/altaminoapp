package com.facebook.ads.redexgen.X;

import android.content.ContentResolver;
import android.content.Context;
import android.util.DisplayMetrics;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class DL extends C0454Bw {
    public ContentResolver A00;
    public DisplayMetrics A01;

    public DL(Context context, C0430Ay c0430Ay) {
        super(context, c0430Ay);
        this.A01 = context.getResources().getDisplayMetrics();
        this.A00 = context.getContentResolver();
    }

    public final InterfaceC0442Bk A0G() {
        return new DK(this);
    }

    public final InterfaceC0442Bk A0H() {
        return new DH(this);
    }

    public final InterfaceC0442Bk A0I() {
        return new DI(this);
    }

    public final InterfaceC0442Bk A0J() {
        return new DG(this);
    }

    public final InterfaceC0442Bk A0K() {
        return new DJ(this);
    }
}
