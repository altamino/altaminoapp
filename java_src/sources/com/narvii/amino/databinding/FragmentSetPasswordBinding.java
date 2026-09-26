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

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentSetPasswordBinding implements ViewBinding {

    @NonNull
    public final TextInputLayout confirmPasswordLayout;

    @NonNull
    public final ImageView icon;

    @NonNull
    public final Button next;

    @NonNull
    public final TextView passLimitInfo;

    @NonNull
    public final TextInputLayout passwordLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView subtitle;

    @NonNull
    public final TextView titleIdentified;

    @NonNull
    public static FragmentSetPasswordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentSetPasswordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_set_password, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentSetPasswordBinding(@NonNull LinearLayout linearLayout, @NonNull TextInputLayout textInputLayout, @NonNull ImageView imageView, @NonNull Button button, @NonNull TextView textView, @NonNull TextInputLayout textInputLayout2, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.confirmPasswordLayout = textInputLayout;
        this.icon = imageView;
        this.next = button;
        this.passLimitInfo = textView;
        this.passwordLayout = textInputLayout2;
        this.subtitle = textView2;
        this.titleIdentified = textView3;
    }

    @NonNull
    public static FragmentSetPasswordBinding bind(@NonNull View view) {
        int i10 = R.id.confirm_password_layout;
        TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.a(view, R.id.confirm_password_layout);
        if (textInputLayout != null) {
            i10 = R.id.icon;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.icon);
            if (imageView != null) {
                i10 = R.id.next;
                Button button = (Button) ViewBindings.a(view, R.id.next);
                if (button != null) {
                    i10 = R.id.pass_limit_info;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.pass_limit_info);
                    if (textView != null) {
                        i10 = R.id.password_layout;
                        TextInputLayout textInputLayout2 = (TextInputLayout) ViewBindings.a(view, R.id.password_layout);
                        if (textInputLayout2 != null) {
                            i10 = R.id.subtitle;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.subtitle);
                            if (textView2 != null) {
                                i10 = R.id.title_identified;
                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.title_identified);
                                if (textView3 != null) {
                                    return new FragmentSetPasswordBinding((LinearLayout) view, textInputLayout, imageView, button, textView, textInputLayout2, textView2, textView3);
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
