package com.narvii.scene.view;

import android.app.Dialog;
import android.content.Context;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.mediaeditor.R;
import com.narvii.util.Log;
import com.narvii.widget.CircleProgressBar;
import com.narvii.widget.TintButton;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ProgressRingDialog.kt */
/* loaded from: classes3.dex */
public final class ProgressRingDialog extends Dialog {
    public static final Companion Companion = new Companion(null);
    public static final String TAG = "ProgressRingDialog";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProgressRingDialog(Context context, int i) {
        super(context, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        setContentView(R.layout.dialog_ring_progress_layout);
        setBackgroundAlpha(0.8f);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProgressRingDialog(Context context) {
        this(context, R.style.CustomDialog);
        Intrinsics.checkParameterIsNotNull(context, "context");
    }

    /* compiled from: ProgressRingDialog.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final void updateProgress(int i) {
        CircleProgressBar circleProgressBar = (CircleProgressBar) findViewById(R.id.progress_bar);
        if (circleProgressBar != null) {
            circleProgressBar.setProgress(i);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(i);
        sb.append('%');
        String string = sb.toString();
        TextView textView = (TextView) findViewById(R.id.progress_text);
        if (textView != null) {
            textView.setText(string);
        }
    }

    public final void setPromptTitle(String title) {
        Intrinsics.checkParameterIsNotNull(title, "title");
        TextView textView = (TextView) findViewById(R.id.prompt_title);
        if (textView != null) {
            textView.setText(title);
        }
    }

    public final void setPromptTitle(int i) {
        TextView textView = (TextView) findViewById(R.id.prompt_title);
        if (textView != null) {
            textView.setText(getContext().getString(i));
        }
    }

    public final void setPromptText(String text) {
        Intrinsics.checkParameterIsNotNull(text, "text");
        TextView textView = (TextView) findViewById(R.id.prompt_text);
        if (textView != null) {
            textView.setText(text);
        }
    }

    public final void setPromptText(int i) {
        TextView textView = (TextView) findViewById(R.id.prompt_text);
        if (textView != null) {
            textView.setText(getContext().getString(i));
        }
    }

    public final void setBackgroundAlpha(float f) {
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.root);
        if (linearLayout != null) {
            linearLayout.setAlpha(f);
        }
    }

    public final void success() {
        TextView textView = (TextView) findViewById(R.id.progress_text);
        if (textView != null) {
            textView.setVisibility(8);
        }
        TintButton tintButton = (TintButton) findViewById(R.id.success_icon);
        if (tintButton != null) {
            tintButton.setVisibility(0);
        }
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            LinearLayout linearLayout = (LinearLayout) findViewById(R.id.root);
            if (linearLayout != null) {
                linearLayout.setKeepScreenOn(true);
            }
            super.show();
        } catch (Exception e) {
            Log.d(TAG, "error : " + e.getMessage());
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.root);
        if (linearLayout != null) {
            linearLayout.setKeepScreenOn(false);
        }
        super.dismiss();
    }
}
