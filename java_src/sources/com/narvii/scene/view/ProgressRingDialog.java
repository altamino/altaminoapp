package com.narvii.scene.view;

import android.app.Dialog;
import android.content.Context;
import android.widget.LinearLayout;
import com.narvii.mediaeditor.R;
import com.narvii.mediaeditor.databinding.DialogRingProgressLayoutBinding;
import com.narvii.util.Log;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class ProgressRingDialog extends Dialog {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String TAG = "ProgressRingDialog";

    @NotNull
    private DialogRingProgressLayoutBinding binding;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProgressRingDialog(@NotNull Context context, int i10) {
        super(context, i10);
        t.j(context, "context");
        DialogRingProgressLayoutBinding dialogRingProgressLayoutBindingInflate = DialogRingProgressLayoutBinding.inflate(getLayoutInflater());
        t.i(dialogRingProgressLayoutBindingInflate, "inflate(...)");
        this.binding = dialogRingProgressLayoutBindingInflate;
        setContentView(dialogRingProgressLayoutBindingInflate.root);
        setBackgroundAlpha(0.8f);
    }

    public final void setPromptText(@NotNull String text) {
        t.j(text, "text");
        this.binding.promptText.setText(text);
    }

    public final void setPromptTitle(@NotNull String title) {
        t.j(title, "title");
        this.binding.promptTitle.setText(title);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        LinearLayout linearLayout = this.binding.root;
        if (linearLayout != null) {
            linearLayout.setKeepScreenOn(false);
        }
        super.dismiss();
    }

    public final void setBackgroundAlpha(float f) {
        this.binding.root.setAlpha(f);
    }

    public final void setPromptText(int i10) {
        this.binding.promptText.setText(getContext().getString(i10));
    }

    public final void setPromptTitle(int i10) {
        this.binding.promptTitle.setText(getContext().getString(i10));
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            this.binding.root.setKeepScreenOn(true);
            super.show();
        } catch (Exception e) {
            Log.d(TAG, "error : " + e.getMessage());
        }
    }

    public final void success() {
        this.binding.progressText.setVisibility(8);
        this.binding.successIcon.setVisibility(0);
    }

    public final void updateProgress(int i10) {
        this.binding.progressBar.setProgress(i10);
        StringBuilder sb = new StringBuilder();
        sb.append(i10);
        sb.append('%');
        this.binding.progressText.setText(sb.toString());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProgressRingDialog(@NotNull Context context) {
        this(context, R.style.CustomDialog);
        t.j(context, "context");
    }
}
