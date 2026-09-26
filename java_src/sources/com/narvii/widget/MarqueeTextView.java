package com.narvii.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class MarqueeTextView extends TextView {
    public MarqueeTextView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setSingleLine();
        setEllipsize(TextUtils.TruncateAt.MARQUEE);
        setMarqueeRepeatLimit(-1);
        setSelected(true);
    }
}
