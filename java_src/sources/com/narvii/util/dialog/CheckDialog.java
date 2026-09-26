package com.narvii.util.dialog;

import android.animation.AnimatorSet;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import com.narvii.app.NVDialog;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes7.dex */
public class CheckDialog extends NVDialog {
    AnimatorSet animatorSet;
    private boolean attached;
    private View content;

    public CheckDialog(Context context) {
        super(context, R.style.CustomDialogWithAnimation);
        setContentView(R.layout.dialog_check_layout);
        this.content = findViewById(R.id.check_dialog_layout);
        getWindow().getAttributes().windowAnimations = R.style.DialogAnimationSlow;
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.narvii.util.dialog.CheckDialog.1
            @Override // java.lang.Runnable
            public void run() {
                if (CheckDialog.this.isShowing() && CheckDialog.this.attached) {
                    CheckDialog.this.dismiss();
                }
            }
        }, 1200L);
    }

    public void setText(String str) {
        int i10 = R.id.check_dialog_content;
        ((TextView) findViewById(i10)).setText(str);
        findViewById(i10).setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attached = true;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attached = false;
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.animatorSet.cancel();
        }
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        super.show();
        this.content.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.toast_scale_in));
    }
}
