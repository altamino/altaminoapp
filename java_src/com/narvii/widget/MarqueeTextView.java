package com.narvii.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;

/* loaded from: classes3.dex */
public class MarqueeTextView extends TextView {
    public MarqueeTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setSingleLine();
        setEllipsize(TextUtils.TruncateAt.MARQUEE);
        setMarqueeRepeatLimit(-1);
        setSelected(true);
    }
}
