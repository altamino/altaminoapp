package com.facebook.ads.redexgen.X;

import android.content.DialogInterface;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class SW implements DialogInterface.OnClickListener {
    public final /* synthetic */ SY A00;
    public final /* synthetic */ String A01;
    public final /* synthetic */ Map A02;

    public SW(SY sy, String str, Map map) {
        this.A00 = sy;
        this.A01 = str;
        this.A02 = map;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.A00.A04.A4Y(this.A01, this.A02);
    }
}
