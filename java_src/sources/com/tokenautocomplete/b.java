package com.tokenautocomplete;

import android.content.Context;
import android.widget.TextView;

/* JADX INFO: loaded from: classes7.dex */
public class b extends e {
    public String text;

    public b(int i10, Context context, int i11, int i12, int i13) {
        super(new TextView(context), i13);
        this.text = "";
        TextView textView = (TextView) this.view;
        textView.setTextColor(i11);
        textView.setTextSize(0, i12);
        b(i10);
    }

    public void b(int i10) {
        String str = org.slf4j.c.ANY_NON_NULL_MARKER + i10;
        this.text = str;
        ((TextView) this.view).setText(str);
    }
}
