package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: classes9.dex */
public class CheckWindowChangeView extends View {
    OnWindowFocusChangedListener onWindowFocusChangedListener;
    onWindowVisibilityChangedListener onWindowVisibilityChangedListener;

    public interface OnWindowFocusChangedListener {
        void onChanged(boolean z6);
    }

    public interface onWindowVisibilityChangedListener {
        void onChanged(int i10);
    }

    public void setOnWindowFocusChangedListener(OnWindowFocusChangedListener onWindowFocusChangedListener) {
        this.onWindowFocusChangedListener = onWindowFocusChangedListener;
    }

    public void setOnWindowVisibilityChangedListener(onWindowVisibilityChangedListener onwindowvisibilitychangedlistener) {
        this.onWindowVisibilityChangedListener = onwindowvisibilitychangedlistener;
    }

    public CheckWindowChangeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setVisibility(8);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z6) {
        super.onWindowFocusChanged(z6);
        OnWindowFocusChangedListener onWindowFocusChangedListener = this.onWindowFocusChangedListener;
        if (onWindowFocusChangedListener != null) {
            onWindowFocusChangedListener.onChanged(z6);
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        onWindowVisibilityChangedListener onwindowvisibilitychangedlistener = this.onWindowVisibilityChangedListener;
        if (onwindowvisibilitychangedlistener != null) {
            onwindowvisibilitychangedlistener.onChanged(i10);
        }
    }
}
