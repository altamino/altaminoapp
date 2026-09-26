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

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentSetPhoneNumberBinding implements ViewBinding {

    @NonNull
    public final ImageView actionbarBack;

    @NonNull
    public final ImageView icon;

    @NonNull
    public final TextInputLayout phoneInputLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public final RelativeLayout titleBar;

    @NonNull
    public final TextView titleTV;

    @NonNull
    public final Button verifyPhone;

    @NonNull
    public static FragmentSetPhoneNumberBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentSetPhoneNumberBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_set_phone_number, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentSetPhoneNumberBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextInputLayout textInputLayout, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView2, @NonNull Button button) {
        this.rootView = linearLayout;
        this.actionbarBack = imageView;
        this.icon = imageView2;
        this.phoneInputLayout = textInputLayout;
        this.title = textView;
        this.titleBar = relativeLayout;
        this.titleTV = textView2;
        this.verifyPhone = button;
    }

    @NonNull
    public static FragmentSetPhoneNumberBinding bind(@NonNull View view) {
        int i10 = R.id.actionbar_back;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.actionbar_back);
        if (imageView != null) {
            i10 = R.id.icon;
            ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.icon);
            if (imageView2 != null) {
                i10 = R.id.phone_input_layout;
                TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.a(view, R.id.phone_input_layout);
                if (textInputLayout != null) {
                    i10 = R.id.title;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.title);
                    if (textView != null) {
                        i10 = R.id.title_bar;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.title_bar);
                        if (relativeLayout != null) {
                            i10 = R.id.titleTV;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.titleTV);
                            if (textView2 != null) {
                                i10 = R.id.verify_phone;
                                Button button = (Button) ViewBindings.a(view, R.id.verify_phone);
                                if (button != null) {
                                    return new FragmentSetPhoneNumberBinding((LinearLayout) view, imageView, imageView2, textInputLayout, textView, relativeLayout, textView2, button);
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
