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

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentMobileResetPasswordBinding implements ViewBinding {

    @NonNull
    public final ImageView actionbarBack;

    @NonNull
    public final TextView descriptionTV;

    @NonNull
    public final ImageView icon;

    @NonNull
    public final TextInputLayout phoneInputLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final Button send;

    @NonNull
    public final TextView title;

    @NonNull
    public final RelativeLayout titleBar;

    @NonNull
    public final TextView titleTV;

    @NonNull
    public static FragmentMobileResetPasswordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentMobileResetPasswordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_mobile_reset_password, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentMobileResetPasswordBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull TextInputLayout textInputLayout, @NonNull Button button, @NonNull TextView textView2, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.actionbarBack = imageView;
        this.descriptionTV = textView;
        this.icon = imageView2;
        this.phoneInputLayout = textInputLayout;
        this.send = button;
        this.title = textView2;
        this.titleBar = relativeLayout;
        this.titleTV = textView3;
    }

    @NonNull
    public static FragmentMobileResetPasswordBinding bind(@NonNull View view) {
        int i10 = R.id.actionbar_back;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.actionbar_back);
        if (imageView != null) {
            i10 = R.id.descriptionTV;
            TextView textView = (TextView) ViewBindings.a(view, R.id.descriptionTV);
            if (textView != null) {
                i10 = R.id.icon;
                ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.icon);
                if (imageView2 != null) {
                    i10 = R.id.phone_input_layout;
                    TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.a(view, R.id.phone_input_layout);
                    if (textInputLayout != null) {
                        i10 = R.id.send;
                        Button button = (Button) ViewBindings.a(view, R.id.send);
                        if (button != null) {
                            i10 = R.id.title;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                            if (textView2 != null) {
                                i10 = R.id.title_bar;
                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.title_bar);
                                if (relativeLayout != null) {
                                    i10 = R.id.titleTV;
                                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.titleTV);
                                    if (textView3 != null) {
                                        return new FragmentMobileResetPasswordBinding((LinearLayout) view, imageView, textView, imageView2, textInputLayout, button, textView2, relativeLayout, textView3);
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
