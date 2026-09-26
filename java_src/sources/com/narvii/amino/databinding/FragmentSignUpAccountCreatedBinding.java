package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes8.dex */
public final class FragmentSignUpAccountCreatedBinding implements ViewBinding {

    @NonNull
    public final View oval;

    @NonNull
    private final ConstraintLayout rootView;

    @NonNull
    public final TintButton success;

    @NonNull
    public static FragmentSignUpAccountCreatedBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentSignUpAccountCreatedBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_sign_up_account_created, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentSignUpAccountCreatedBinding(@NonNull ConstraintLayout constraintLayout, @NonNull View view, @NonNull TintButton tintButton) {
        this.rootView = constraintLayout;
        this.oval = view;
        this.success = tintButton;
    }

    @NonNull
    public static FragmentSignUpAccountCreatedBinding bind(@NonNull View view) {
        int i10 = R.id.oval;
        View viewA = ViewBindings.a(view, R.id.oval);
        if (viewA != null) {
            i10 = R.id.success;
            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.success);
            if (tintButton != null) {
                return new FragmentSignUpAccountCreatedBinding((ConstraintLayout) view, viewA, tintButton);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
