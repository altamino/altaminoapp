package com.google.android.material.snackbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import d3.d;
import d3.f;

/* JADX INFO: loaded from: classes6.dex */
@RestrictTo
public class SnackbarContentLayout extends LinearLayout implements a {
    private Button actionView;
    private int maxInlineActionWidth;
    private TextView messageView;

    public SnackbarContentLayout(@NonNull Context context) {
        this(context, null);
    }

    public Button getActionView() {
        return this.actionView;
    }

    public TextView getMessageView() {
        return this.messageView;
    }

    public void setMaxInlineActionWidth(int i10) {
        this.maxInlineActionWidth = i10;
    }

    public SnackbarContentLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.snackbar.a
    public void a(int i10, int i11) {
        this.messageView.setAlpha(0.0f);
        long j6 = i11;
        long j10 = i10;
        this.messageView.animate().alpha(1.0f).setDuration(j6).setStartDelay(j10).start();
        if (this.actionView.getVisibility() == 0) {
            this.actionView.setAlpha(0.0f);
            this.actionView.animate().alpha(1.0f).setDuration(j6).setStartDelay(j10).start();
        }
    }

    @Override // com.google.android.material.snackbar.a
    public void b(int i10, int i11) {
        this.messageView.setAlpha(1.0f);
        long j6 = i11;
        long j10 = i10;
        this.messageView.animate().alpha(0.0f).setDuration(j6).setStartDelay(j10).start();
        if (this.actionView.getVisibility() == 0) {
            this.actionView.setAlpha(1.0f);
            this.actionView.animate().alpha(0.0f).setDuration(j6).setStartDelay(j10).start();
        }
    }

    void c(float f) {
        if (f != 1.0f) {
            this.actionView.setTextColor(i3.a.h(i3.a.d(this, d3.b.colorSurface), this.actionView.getCurrentTextColor(), f));
        }
    }

    private static void d(@NonNull View view, int i10, int i11) {
        if (ViewCompat.Z(view)) {
            ViewCompat.M0(view, ViewCompat.I(view), i10, ViewCompat.H(view), i11);
        } else {
            view.setPadding(view.getPaddingLeft(), i10, view.getPaddingRight(), i11);
        }
    }

    private boolean e(int i10, int i11, int i12) {
        boolean z6;
        if (i10 != getOrientation()) {
            setOrientation(i10);
            z6 = true;
        } else {
            z6 = false;
        }
        if (this.messageView.getPaddingTop() == i11 && this.messageView.getPaddingBottom() == i12) {
            return z6;
        }
        d(this.messageView, i11, i12);
        return true;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.messageView = (TextView) findViewById(f.snackbar_text);
        this.actionView = (Button) findViewById(f.snackbar_action);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        boolean z6;
        super.onMeasure(i10, i11);
        if (getOrientation() == 1) {
            return;
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(d.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(d.design_snackbar_padding_vertical);
        if (this.messageView.getLayout().getLineCount() > 1) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (z6 && this.maxInlineActionWidth > 0 && this.actionView.getMeasuredWidth() > this.maxInlineActionWidth) {
            if (!e(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
                return;
            }
        } else {
            if (!z6) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (!e(0, dimensionPixelSize, dimensionPixelSize)) {
                return;
            }
        }
        super.onMeasure(i10, i11);
    }
}
