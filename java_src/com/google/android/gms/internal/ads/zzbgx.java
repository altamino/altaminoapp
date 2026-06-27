package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;

/* loaded from: classes2.dex */
final class zzbgx implements DialogInterface.OnClickListener {
    private final /* synthetic */ JsPromptResult zzeiy;
    private final /* synthetic */ EditText zzeiz;

    zzbgx(JsPromptResult jsPromptResult, EditText editText) {
        this.zzeiy = jsPromptResult;
        this.zzeiz = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzeiy.confirm(this.zzeiz.getText().toString());
    }
}
