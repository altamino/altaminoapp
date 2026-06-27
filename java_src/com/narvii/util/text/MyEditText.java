package com.narvii.util.text;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.EditText;
import com.narvii.util.Callback;

/* loaded from: classes3.dex */
public class MyEditText extends EditText {
    public Callback<KeyEvent> onKeyPreImeListener;

    public MyEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        Callback<KeyEvent> callback = this.onKeyPreImeListener;
        if (callback != null) {
            callback.call(keyEvent);
        }
        return super.onKeyPreIme(i, keyEvent);
    }
}
