package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.TextInputLayout;

/* JADX INFO: loaded from: classes8.dex */
public final class FragmentConfirmPasswordBinding implements ViewBinding {

    @NonNull
    public final ImageView actionbarBack;

    @NonNull
    public final TextView forgot;

    @NonNull
    public final ImageView icon;

    @NonNull
    public final Button next;

    @NonNull
    public final TextInputLayout passwordLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public final RelativeLayout titleBar;

    @NonNull
    public final TextView titleConfirmPass;

    @NonNull
    public static FragmentConfirmPasswordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentConfirmPasswordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_confirm_password, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentConfirmPasswordBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull Button button, @NonNull TextInputLayout textInputLayout, @NonNull TextView textView2, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.actionbarBack = imageView;
        this.forgot = textView;
        this.icon = imageView2;
        this.next = button;
        this.passwordLayout = textInputLayout;
        this.title = textView2;
        this.titleBar = relativeLayout;
        this.titleConfirmPass = textView3;
    }

    @NonNull
    public static FragmentConfirmPasswordBinding bind(@NonNull View view) {
        int i10 = R.id.actionbar_back;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.actionbar_back);
        if (imageView != null) {
            i10 = R.id.forgot;
            TextView textView = (TextView) ViewBindings.a(view, R.id.forgot);
            if (textView != null) {
                i10 = R.id.icon;
                ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.icon);
                if (imageView2 != null) {
                    i10 = R.id.next;
                    Button button = (Button) ViewBindings.a(view, R.id.next);
                    if (button != null) {
                        i10 = R.id.password_layout;
                        TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.a(view, R.id.password_layout);
                        if (textInputLayout != null) {
                            i10 = R.id.title;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                            if (textView2 != null) {
                                i10 = R.id.title_bar;
                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.title_bar);
                                if (relativeLayout != null) {
                                    i10 = R.id.titleConfirmPass;
                                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.titleConfirmPass);
                                    if (textView3 != null) {
                                        return new FragmentConfirmPasswordBinding((LinearLayout) view, imageView, textView, imageView2, button, textInputLayout, textView2, relativeLayout, textView3);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
