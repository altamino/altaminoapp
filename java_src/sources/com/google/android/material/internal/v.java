package com.google.android.material.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes7.dex */
@SuppressLint({"AppCompatCustomView"})
@RestrictTo
public class v extends ImageButton {
    private int userSetVisibility;

    public v(Context context) {
        this(context, null);
    }

    public final int getUserSetVisibility() {
        return this.userSetVisibility;
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i10) {
        b(i10, true);
    }

    public v(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public v(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.userSetVisibility = getVisibility();
    }

    public final void b(int i10, boolean z6) {
        super.setVisibility(i10);
        if (z6) {
            this.userSetVisibility = i10;
        }
    }
}
