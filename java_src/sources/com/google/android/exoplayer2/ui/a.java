package com.google.android.exoplayer2.ui;

import android.view.View;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public static final int PURPOSE_CLOSE_AD = 2;
    public static final int PURPOSE_CONTROLS = 1;
    public static final int PURPOSE_NOT_VISIBLE = 4;
    public static final int PURPOSE_OTHER = 3;
    public final int purpose;

    @Nullable
    public final String reasonDetail;
    public final View view;

    @Deprecated
    public a(View view, int i10) {
        this(view, i10, null);
    }

    @Deprecated
    public a(View view, int i10, @Nullable String str) {
        this.view = view;
        this.purpose = i10;
        this.reasonDetail = str;
    }
}
