package com.narvii.util.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.app.NVDialog;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes8.dex */
public class RealtimeBlurDialog extends NVDialog {
    RealtimeBlurView blurView;
    FrameLayout container;

    public RealtimeBlurDialog(Context context) {
        this(context, R.style.CustomDialog);
    }

    public RealtimeBlurView getRealtimeBlurView() {
        return this.blurView;
    }

    public ViewGroup getViewContainer() {
        return this.container;
    }

    @Override // android.app.Dialog
    public void setContentView(int i10) {
        clearView();
        LayoutInflater.from(getContext()).inflate(i10, (ViewGroup) this.container, true);
    }

    public RealtimeBlurDialog(Context context, int i10) {
        super(context, i10);
        super.setContentView(R.layout.dialog_realtime_blur_layout);
        this.blurView = (RealtimeBlurView) findViewById(R.id.blur_bg);
        this.container = (FrameLayout) findViewById(R.id.root);
    }

    private void clearView() {
        while (this.container.getChildCount() > 1) {
            FrameLayout frameLayout = this.container;
            frameLayout.removeViewAt(frameLayout.getChildCount() - 1);
        }
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        clearView();
        this.container.addView(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        clearView();
        this.container.addView(view, layoutParams);
    }
}
