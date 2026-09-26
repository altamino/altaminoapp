package com.google.android.material.appbar;

import android.view.View;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes8.dex */
class i {
    private int layoutLeft;
    private int layoutTop;
    private int offsetLeft;
    private int offsetTop;
    private final View view;
    private boolean verticalOffsetEnabled = true;
    private boolean horizontalOffsetEnabled = true;

    public int b() {
        return this.layoutTop;
    }

    public int c() {
        return this.offsetTop;
    }

    void a() {
        View view = this.view;
        ViewCompat.e0(view, this.offsetTop - (view.getTop() - this.layoutTop));
        View view2 = this.view;
        ViewCompat.d0(view2, this.offsetLeft - (view2.getLeft() - this.layoutLeft));
    }

    void d() {
        this.layoutTop = this.view.getTop();
        this.layoutLeft = this.view.getLeft();
    }

    public boolean e(int i10) {
        if (!this.horizontalOffsetEnabled || this.offsetLeft == i10) {
            return false;
        }
        this.offsetLeft = i10;
        a();
        return true;
    }

    public boolean f(int i10) {
        if (!this.verticalOffsetEnabled || this.offsetTop == i10) {
            return false;
        }
        this.offsetTop = i10;
        a();
        return true;
    }

    public i(View view) {
        this.view = view;
    }
}
