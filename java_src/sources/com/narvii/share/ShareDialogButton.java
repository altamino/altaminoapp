package com.narvii.share;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes8.dex */
public class ShareDialogButton extends LinearLayout {
    private final TextView textView;

    public void setIcon(Drawable drawable) {
        this.textView.setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
    }

    public void setText(String str) {
        this.textView.setText(str);
    }

    public void setIcon(int i10) {
        setIcon(getContext().getResources().getDrawable(i10));
    }

    public void setText(int i10) {
        setText(getContext().getString(i10));
    }

    public ShareDialogButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(context, R.layout.button_share_dialog, this);
        this.textView = (TextView) findViewById(R.id.text);
    }
}
