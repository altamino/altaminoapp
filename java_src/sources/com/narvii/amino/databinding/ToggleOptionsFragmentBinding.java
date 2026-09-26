package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.Switch;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes7.dex */
public final class ToggleOptionsFragmentBinding implements ViewBinding {

    @NonNull
    public final TextView attestationTokenLabel;

    @NonNull
    public final Switch attestationTokenSwitch;

    @NonNull
    public final TextView errorMessage;

    @NonNull
    public final ProgressBar progressIndicator;

    @NonNull
    private final ConstraintLayout rootView;

    @NonNull
    public final TextView toggleTitle;

    @NonNull
    public static ToggleOptionsFragmentBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ToggleOptionsFragmentBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.toggle_options_fragment, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ToggleOptionsFragmentBinding(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull Switch r5, @NonNull TextView textView2, @NonNull ProgressBar progressBar, @NonNull TextView textView3) {
        this.rootView = constraintLayout;
        this.attestationTokenLabel = textView;
        this.attestationTokenSwitch = r5;
        this.errorMessage = textView2;
        this.progressIndicator = progressBar;
        this.toggleTitle = textView3;
    }

    @NonNull
    public static ToggleOptionsFragmentBinding bind(@NonNull View view) {
        int i10 = R.id.attestation_token_label;
        TextView textView = (TextView) ViewBindings.a(view, R.id.attestation_token_label);
        if (textView != null) {
            i10 = R.id.attestation_token_switch;
            Switch r5 = (Switch) ViewBindings.a(view, R.id.attestation_token_switch);
            if (r5 != null) {
                i10 = R.id.error_message;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.error_message);
                if (textView2 != null) {
                    i10 = R.id.progress_indicator;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.a(view, R.id.progress_indicator);
                    if (progressBar != null) {
                        i10 = R.id.toggle_title;
                        TextView textView3 = (TextView) ViewBindings.a(view, R.id.toggle_title);
                        if (textView3 != null) {
                            return new ToggleOptionsFragmentBinding((ConstraintLayout) view, textView, r5, textView2, progressBar, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
