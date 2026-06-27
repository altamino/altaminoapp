package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;

/* loaded from: classes2.dex */
final class zzbgt implements DialogInterface.OnClickListener {
    private final /* synthetic */ JsResult zzeix;

    zzbgt(JsResult jsResult) {
        this.zzeix = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzeix.cancel();
    }
}
