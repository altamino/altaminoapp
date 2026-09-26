package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public final class FragmentLoginBinding implements ViewBinding {

    @NonNull
    public final ImageView aminoLogo;

    @NonNull
    public final EditText emailOrPhoneET;

    @NonNull
    public final LinearLayout facebook;

    @NonNull
    public final TextView forgot;

    @NonNull
    public final LinearLayout google;

    @NonNull
    public final Button login;

    @NonNull
    public final TextView or;

    @NonNull
    public final EditText passwordET;

    @NonNull
    public final TextView phoneValidationTV;

    @NonNull
    private final ScrollView rootView;

    @NonNull
    public final TextView screenTitle;

    @NonNull
    public final TextView signupLinkTV;

    @NonNull
    public static FragmentLoginBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ScrollView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentLoginBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_login, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentLoginBinding(@NonNull ScrollView scrollView, @NonNull ImageView imageView, @NonNull EditText editText, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull Button button, @NonNull TextView textView2, @NonNull EditText editText2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.rootView = scrollView;
        this.aminoLogo = imageView;
        this.emailOrPhoneET = editText;
        this.facebook = linearLayout;
        this.forgot = textView;
        this.google = linearLayout2;
        this.login = button;
        this.or = textView2;
        this.passwordET = editText2;
        this.phoneValidationTV = textView3;
        this.screenTitle = textView4;
        this.signupLinkTV = textView5;
    }

    @NonNull
    public static FragmentLoginBinding bind(@NonNull View view) {
        int i10 = R.id.aminoLogo;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.aminoLogo);
        if (imageView != null) {
            i10 = R.id.emailOrPhoneET;
            EditText editText = (EditText) ViewBindings.a(view, R.id.emailOrPhoneET);
            if (editText != null) {
                i10 = R.id.facebook;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.facebook);
                if (linearLayout != null) {
                    i10 = R.id.forgot;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.forgot);
                    if (textView != null) {
                        i10 = R.id.google;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.google);
                        if (linearLayout2 != null) {
                            i10 = R.id.login;
                            Button button = (Button) ViewBindings.a(view, R.id.login);
                            if (button != null) {
                                i10 = R.id.or;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.or);
                                if (textView2 != null) {
                                    i10 = R.id.passwordET;
                                    EditText editText2 = (EditText) ViewBindings.a(view, R.id.passwordET);
                                    if (editText2 != null) {
                                        i10 = R.id.phoneValidationTV;
                                        TextView textView3 = (TextView) ViewBindings.a(view, R.id.phoneValidationTV);
                                        if (textView3 != null) {
                                            i10 = R.id.screenTitle;
                                            TextView textView4 = (TextView) ViewBindings.a(view, R.id.screenTitle);
                                            if (textView4 != null) {
                                                i10 = R.id.signupLinkTV;
                                                TextView textView5 = (TextView) ViewBindings.a(view, R.id.signupLinkTV);
                                                if (textView5 != null) {
                                                    return new FragmentLoginBinding((ScrollView) view, imageView, editText, linearLayout, textView, linearLayout2, button, textView2, editText2, textView3, textView4, textView5);
                                                }
                                            }
                                        }
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
