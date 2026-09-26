package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class AccountPasswordBinding implements ViewBinding {

    @NonNull
    public final EditText edit;

    @NonNull
    public final View editStatusLine;

    @NonNull
    public final NVImageView passToggle;

    @NonNull
    public final TextView passwordHint;

    @NonNull
    private final ConstraintLayout rootView;

    @NonNull
    public static AccountPasswordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AccountPasswordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.account_password, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AccountPasswordBinding(@NonNull ConstraintLayout constraintLayout, @NonNull EditText editText, @NonNull View view, @NonNull NVImageView nVImageView, @NonNull TextView textView) {
        this.rootView = constraintLayout;
        this.edit = editText;
        this.editStatusLine = view;
        this.passToggle = nVImageView;
        this.passwordHint = textView;
    }

    @NonNull
    public static AccountPasswordBinding bind(@NonNull View view) {
        int i10 = R.id.edit;
        EditText editText = (EditText) ViewBindings.a(view, R.id.edit);
        if (editText != null) {
            i10 = R.id.edit_status_line;
            View viewA = ViewBindings.a(view, R.id.edit_status_line);
            if (viewA != null) {
                i10 = R.id.pass_toggle;
                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.pass_toggle);
                if (nVImageView != null) {
                    i10 = R.id.password_hint;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.password_hint);
                    if (textView != null) {
                        return new AccountPasswordBinding((ConstraintLayout) view, editText, viewA, nVImageView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
