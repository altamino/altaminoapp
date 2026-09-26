package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoCompleteEmailView;
import com.narvii.widget.TextInputLayout;

/* JADX INFO: loaded from: classes8.dex */
public final class FragmentSignupEmailBinding implements ViewBinding {

    @NonNull
    public final View divider;

    @NonNull
    public final AutoCompleteEmailView edit;

    @NonNull
    public final EditText fakeEdit;

    @NonNull
    public final ImageView icon;

    @NonNull
    public final TextView inputErrorHint;

    @NonNull
    public final TextInputLayout inputLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public final Button verifyEmail;

    @NonNull
    public static FragmentSignupEmailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentSignupEmailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_signup_email, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentSignupEmailBinding(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull AutoCompleteEmailView autoCompleteEmailView, @NonNull EditText editText, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextInputLayout textInputLayout, @NonNull TextView textView2, @NonNull Button button) {
        this.rootView = linearLayout;
        this.divider = view;
        this.edit = autoCompleteEmailView;
        this.fakeEdit = editText;
        this.icon = imageView;
        this.inputErrorHint = textView;
        this.inputLayout = textInputLayout;
        this.title = textView2;
        this.verifyEmail = button;
    }

    @NonNull
    public static FragmentSignupEmailBinding bind(@NonNull View view) {
        int i10 = R.id.divider;
        View viewA = ViewBindings.a(view, R.id.divider);
        if (viewA != null) {
            i10 = R.id.edit;
            AutoCompleteEmailView autoCompleteEmailView = (AutoCompleteEmailView) ViewBindings.a(view, R.id.edit);
            if (autoCompleteEmailView != null) {
                i10 = R.id.fake_edit;
                EditText editText = (EditText) ViewBindings.a(view, R.id.fake_edit);
                if (editText != null) {
                    i10 = R.id.icon;
                    ImageView imageView = (ImageView) ViewBindings.a(view, R.id.icon);
                    if (imageView != null) {
                        i10 = R.id.input_error_hint;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.input_error_hint);
                        if (textView != null) {
                            i10 = R.id.input_layout;
                            TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.a(view, R.id.input_layout);
                            if (textInputLayout != null) {
                                i10 = R.id.title;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                                if (textView2 != null) {
                                    i10 = R.id.verify_email;
                                    Button button = (Button) ViewBindings.a(view, R.id.verify_email);
                                    if (button != null) {
                                        return new FragmentSignupEmailBinding((LinearLayout) view, viewA, autoCompleteEmailView, editText, imageView, textView, textInputLayout, textView2, button);
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
