package com.narvii.util.text;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public interface OnTagClickListener {
    public static final int TYPE_HASHTAG = 1;
    public static final int TYPE_LINK = 5;

    void onClick(View view, NVText nVText, int i10, String str);
}
