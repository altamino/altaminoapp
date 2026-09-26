package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;
import com.narvii.widget.CircleProgressBar;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogRingProgressLayoutBinding implements ViewBinding {

    @NonNull
    public final CircleProgressBar progressBar;

    @NonNull
    public final TextView progressText;

    @NonNull
    public final TextView promptText;

    @NonNull
    public final TextView promptTitle;

    @NonNull
    public final LinearLayout root;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TintButton successIcon;

    @NonNull
    public static DialogRingProgressLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogRingProgressLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.progress_bar;
        CircleProgressBar circleProgressBar = (CircleProgressBar) ViewBindings.a(view, i10);
        if (circleProgressBar != null) {
            i10 = R.id.progress_text;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                i10 = R.id.prompt_text;
                TextView textView2 = (TextView) ViewBindings.a(view, i10);
                if (textView2 != null) {
                    i10 = R.id.prompt_title;
                    TextView textView3 = (TextView) ViewBindings.a(view, i10);
                    if (textView3 != null) {
                        LinearLayout linearLayout = (LinearLayout) view;
                        i10 = R.id.success_icon;
                        TintButton tintButton = (TintButton) ViewBindings.a(view, i10);
                        if (tintButton != null) {
                            return new DialogRingProgressLayoutBinding(linearLayout, circleProgressBar, textView, textView2, textView3, linearLayout, tintButton);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DialogRingProgressLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_ring_progress_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogRingProgressLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull CircleProgressBar circleProgressBar, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout2, @NonNull TintButton tintButton) {
        this.rootView = linearLayout;
        this.progressBar = circleProgressBar;
        this.progressText = textView;
        this.promptText = textView2;
        this.promptTitle = textView3;
        this.root = linearLayout2;
        this.successIcon = tintButton;
    }
}
