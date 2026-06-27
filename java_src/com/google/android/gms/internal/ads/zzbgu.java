package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;

/* loaded from: classes2.dex */
final class zzbgu implements DialogInterface.OnClickListener {
    private final /* synthetic */ JsResult zzeix;

    zzbgu(JsResult jsResult) {
        this.zzeix = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzeix.confirm();
    }
}
