package com.narvii.comment.post;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.EditText;
import com.narvii.util.Callback;

/* JADX INFO: loaded from: classes10.dex */
public class CommentEditText extends EditText {
    public Callback<KeyEvent> onKeyPreImeListener;

    @Override // android.widget.TextView, android.view.View
    public boolean onKeyPreIme(int i10, KeyEvent keyEvent) {
        Callback<KeyEvent> callback = this.onKeyPreImeListener;
        if (callback != null) {
            callback.call(keyEvent);
        }
        return super.onKeyPreIme(i10, keyEvent);
    }

    public CommentEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
