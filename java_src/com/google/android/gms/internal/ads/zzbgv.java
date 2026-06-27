package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;

/* loaded from: classes2.dex */
final class zzbgv implements DialogInterface.OnCancelListener {
    private final /* synthetic */ JsPromptResult zzeiy;

    zzbgv(JsPromptResult jsPromptResult) {
        this.zzeiy = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.zzeiy.cancel();
    }
}
