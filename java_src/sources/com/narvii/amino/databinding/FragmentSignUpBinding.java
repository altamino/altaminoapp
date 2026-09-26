package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes8.dex */
public final class FragmentSignUpBinding implements ViewBinding {

    @NonNull
    public final ImageView aminoLogo;

    @NonNull
    public final Button emailSignup;

    @NonNull
    public final LinearLayout facebook;

    @NonNull
    public final LinearLayout google;

    @NonNull
    public final Button phoneSignup;

    @NonNull
    private final ScrollView rootView;

    @NonNull
    public final TextView signupLinkTV;

    @NonNull
    public final TextView tvOr;

    @NonNull
    public final TextView tvWelcome;

    @NonNull
    public static FragmentSignUpBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ScrollView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentSignUpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_sign_up, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentSignUpBinding(@NonNull ScrollView scrollView, @NonNull ImageView imageView, @NonNull Button button, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull Button button2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = scrollView;
        this.aminoLogo = imageView;
        this.emailSignup = button;
        this.facebook = linearLayout;
        this.google = linearLayout2;
        this.phoneSignup = button2;
        this.signupLinkTV = textView;
        this.tvOr = textView2;
        this.tvWelcome = textView3;
    }

    @NonNull
    public static FragmentSignUpBinding bind(@NonNull View view) {
        int i10 = R.id.aminoLogo;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.aminoLogo);
        if (imageView != null) {
            i10 = R.id.emailSignup;
            Button button = (Button) ViewBindings.a(view, R.id.emailSignup);
            if (button != null) {
                i10 = R.id.facebook;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.facebook);
                if (linearLayout != null) {
                    i10 = R.id.google;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.google);
                    if (linearLayout2 != null) {
                        i10 = R.id.phoneSignup;
                        Button button2 = (Button) ViewBindings.a(view, R.id.phoneSignup);
                        if (button2 != null) {
                            i10 = R.id.signupLinkTV;
                            TextView textView = (TextView) ViewBindings.a(view, R.id.signupLinkTV);
                            if (textView != null) {
                                i10 = R.id.tvOr;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.tvOr);
                                if (textView2 != null) {
                                    i10 = R.id.tvWelcome;
                                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.tvWelcome);
                                    if (textView3 != null) {
                                        return new FragmentSignUpBinding((ScrollView) view, imageView, button, linearLayout, linearLayout2, button2, textView, textView2, textView3);
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
