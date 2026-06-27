package com.tokenautocomplete;

import android.content.Context;
import android.widget.TextView;

/* loaded from: classes3.dex */
public class CountSpan extends ViewSpan {
    public String text;

    public CountSpan(int i, Context context, int i2, int i3, int i4) {
        super(new TextView(context), i4);
        this.text = "";
        TextView textView = (TextView) this.view;
        textView.setTextColor(i2);
        textView.setTextSize(0, i3);
        setCount(i);
    }

    public void setCount(int i) {
        this.text = "+" + i;
        ((TextView) this.view).setText(this.text);
    }
}
