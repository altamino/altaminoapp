package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes3.dex */
public class CheckWindowChangeView extends View {
    OnWindowFocusChangedListener onWindowFocusChangedListener;
    onWindowVisibilityChangedListener onWindowVisibilityChangedListener;

    public interface OnWindowFocusChangedListener {
        void onChanged(boolean z);
    }

    public interface onWindowVisibilityChangedListener {
        void onChanged(int i);
    }

    public CheckWindowChangeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setVisibility(8);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        onWindowVisibilityChangedListener onwindowvisibilitychangedlistener = this.onWindowVisibilityChangedListener;
        if (onwindowvisibilitychangedlistener != null) {
            onwindowvisibilitychangedlistener.onChanged(i);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        OnWindowFocusChangedListener onWindowFocusChangedListener = this.onWindowFocusChangedListener;
        if (onWindowFocusChangedListener != null) {
            onWindowFocusChangedListener.onChanged(z);
        }
    }

    public void setOnWindowFocusChangedListener(OnWindowFocusChangedListener onWindowFocusChangedListener) {
        this.onWindowFocusChangedListener = onWindowFocusChangedListener;
    }

    public void setOnWindowVisibilityChangedListener(onWindowVisibilityChangedListener onwindowvisibilitychangedlistener) {
        this.onWindowVisibilityChangedListener = onwindowvisibilitychangedlistener;
    }
}
