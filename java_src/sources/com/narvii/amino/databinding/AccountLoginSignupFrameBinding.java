package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.GradientView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes2.dex */
public final class AccountLoginSignupFrameBinding implements ViewBinding {

    @NonNull
    public final FrameLayout frame;

    @NonNull
    public final GradientView gradient;

    @NonNull
    public final SpinningView progress;

    @NonNull
    public final TextView progressText;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final LinearLayout submitFrame;

    @NonNull
    public static AccountLoginSignupFrameBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AccountLoginSignupFrameBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.account_login_signup_frame, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AccountLoginSignupFrameBinding(@NonNull RelativeLayout relativeLayout, @NonNull FrameLayout frameLayout, @NonNull GradientView gradientView, @NonNull SpinningView spinningView, @NonNull TextView textView, @NonNull LinearLayout linearLayout) {
        this.rootView = relativeLayout;
        this.frame = frameLayout;
        this.gradient = gradientView;
        this.progress = spinningView;
        this.progressText = textView;
        this.submitFrame = linearLayout;
    }

    @NonNull
    public static AccountLoginSignupFrameBinding bind(@NonNull View view) {
        int i10 = R.id.frame;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.frame);
        if (frameLayout != null) {
            i10 = R.id.gradient;
            GradientView gradientView = (GradientView) ViewBindings.a(view, R.id.gradient);
            if (gradientView != null) {
                i10 = android.R.id.progress;
                SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
                if (spinningView != null) {
                    i10 = R.id.progress_text;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.progress_text);
                    if (textView != null) {
                        i10 = R.id.submit_frame;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.submit_frame);
                        if (linearLayout != null) {
                            return new AccountLoginSignupFrameBinding((RelativeLayout) view, frameLayout, gradientView, spinningView, textView, linearLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
