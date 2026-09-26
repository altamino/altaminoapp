package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class AccountPasswordEditBinding implements ViewBinding {

    @NonNull
    public final EditText edit;

    @NonNull
    public final NVImageView passToggle;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static AccountPasswordEditBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AccountPasswordEditBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.account_password_edit, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AccountPasswordEditBinding(@NonNull LinearLayout linearLayout, @NonNull EditText editText, @NonNull NVImageView nVImageView) {
        this.rootView = linearLayout;
        this.edit = editText;
        this.passToggle = nVImageView;
    }

    @NonNull
    public static AccountPasswordEditBinding bind(@NonNull View view) {
        int i10 = R.id.edit;
        EditText editText = (EditText) ViewBindings.a(view, R.id.edit);
        if (editText != null) {
            i10 = R.id.pass_toggle;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.pass_toggle);
            if (nVImageView != null) {
                return new AccountPasswordEditBinding((LinearLayout) view, editText, nVImageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
