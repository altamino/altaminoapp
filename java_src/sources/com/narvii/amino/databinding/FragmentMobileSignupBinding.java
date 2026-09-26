package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.TextInputLayout;

/* JADX INFO: loaded from: classes9.dex */
public final class FragmentMobileSignupBinding implements ViewBinding {

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
    public static FragmentMobileSignupBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentMobileSignupBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_mobile_signup, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentMobileSignupBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextInputLayout textInputLayout, @NonNull Button button, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.icon = imageView;
        this.phoneInputLayout = textInputLayout;
        this.send = button;
        this.title = textView;
    }

    @NonNull
    public static FragmentMobileSignupBinding bind(@NonNull View view) {
        int i10 = R.id.icon;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.icon);
        if (imageView != null) {
            i10 = R.id.phone_input_layout;
            TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.a(view, R.id.phone_input_layout);
            if (textInputLayout != null) {
                i10 = R.id.send;
                Button button = (Button) ViewBindings.a(view, R.id.send);
                if (button != null) {
                    i10 = R.id.title;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.title);
                    if (textView != null) {
                        return new FragmentMobileSignupBinding((LinearLayout) view, imageView, textInputLayout, button, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
