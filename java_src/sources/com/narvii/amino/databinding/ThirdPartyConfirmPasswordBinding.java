package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.SpinningView;
import com.narvii.widget.TextLoadingLayout;

/* JADX INFO: loaded from: classes9.dex */
public final class ThirdPartyConfirmPasswordBinding implements ViewBinding {

    @NonNull
    public final EditText editPass;

    @NonNull
    public final TextView forgetPassword;

    @NonNull
    private final ScrollView rootView;

    @NonNull
    public final SpinningView spinner;

    @NonNull
    public final TextView text;

    @NonNull
    public final TextLoadingLayout textLoading;

    @NonNull
    public final TextView title;

    @NonNull
    public static ThirdPartyConfirmPasswordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ScrollView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ThirdPartyConfirmPasswordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.third_party_confirm_password, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ThirdPartyConfirmPasswordBinding(@NonNull ScrollView scrollView, @NonNull EditText editText, @NonNull TextView textView, @NonNull SpinningView spinningView, @NonNull TextView textView2, @NonNull TextLoadingLayout textLoadingLayout, @NonNull TextView textView3) {
        this.rootView = scrollView;
        this.editPass = editText;
        this.forgetPassword = textView;
        this.spinner = spinningView;
        this.text = textView2;
        this.textLoading = textLoadingLayout;
        this.title = textView3;
    }

    @NonNull
    public static ThirdPartyConfirmPasswordBinding bind(@NonNull View view) {
        int i10 = R.id.edit_pass;
        EditText editText = (EditText) ViewBindings.a(view, R.id.edit_pass);
        if (editText != null) {
            i10 = R.id.forget_password;
            TextView textView = (TextView) ViewBindings.a(view, R.id.forget_password);
            if (textView != null) {
                i10 = R.id.spinner;
                SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.spinner);
                if (spinningView != null) {
                    i10 = R.id.text;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.text);
                    if (textView2 != null) {
                        i10 = R.id.text_loading;
                        TextLoadingLayout textLoadingLayout = (TextLoadingLayout) ViewBindings.a(view, R.id.text_loading);
                        if (textLoadingLayout != null) {
                            i10 = R.id.title;
                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.title);
                            if (textView3 != null) {
                                return new ThirdPartyConfirmPasswordBinding((ScrollView) view, editText, textView, spinningView, textView2, textLoadingLayout, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
