package com.narvii.share;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.lib.R;

/* loaded from: classes3.dex */
public class ShareDialogButton extends LinearLayout {
    private final TextView textView;

    public ShareDialogButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LinearLayout.inflate(context, R.layout.button_share_dialog, this);
        this.textView = (TextView) findViewById(R.id.text);
    }

    public void setText(String str) {
        this.textView.setText(str);
    }

    public void setText(int i) {
        setText(getContext().getString(i));
    }

    public void setIcon(Drawable drawable) {
        this.textView.setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
    }

    public void setIcon(int i) {
        setIcon(getContext().getResources().getDrawable(i));
    }
}
