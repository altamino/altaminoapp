package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;

/* loaded from: classes2.dex */
final class zzbgw implements DialogInterface.OnClickListener {
    private final /* synthetic */ JsPromptResult zzeiy;

    zzbgw(JsPromptResult jsPromptResult) {
        this.zzeiy = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzeiy.cancel();
    }
}
