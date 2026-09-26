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

/* JADX INFO: loaded from: classes2.dex */
public final class InterestSearchViewBinding implements ViewBinding {

    @NonNull
    private final ConstraintLayout rootView;

    @NonNull
    public final TintButton searchButton;

    @NonNull
    public final ConstraintLayout searchLayout;

    @NonNull
    public final View view;

    @NonNull
    public static InterestSearchViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static InterestSearchViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.interest_search_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private InterestSearchViewBinding(@NonNull ConstraintLayout constraintLayout, @NonNull TintButton tintButton, @NonNull ConstraintLayout constraintLayout2, @NonNull View view) {
        this.rootView = constraintLayout;
        this.searchButton = tintButton;
        this.searchLayout = constraintLayout2;
        this.view = view;
    }

    @NonNull
    public static InterestSearchViewBinding bind(@NonNull View view) {
        int i10 = R.id.search_button;
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.search_button);
        if (tintButton != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            View viewA = ViewBindings.a(view, R.id.view);
            if (viewA != null) {
                return new InterestSearchViewBinding(constraintLayout, tintButton, constraintLayout, viewA);
            }
            i10 = R.id.view;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
