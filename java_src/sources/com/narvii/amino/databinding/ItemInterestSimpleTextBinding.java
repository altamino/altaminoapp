package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemInterestSimpleTextBinding implements ViewBinding {

    @NonNull
    public final View interestIndicator;

    @NonNull
    public final AutoSizingTextView interestName;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemInterestSimpleTextBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemInterestSimpleTextBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_interest_simple_text, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemInterestSimpleTextBinding(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull AutoSizingTextView autoSizingTextView) {
        this.rootView = linearLayout;
        this.interestIndicator = view;
        this.interestName = autoSizingTextView;
    }

    @NonNull
    public static ItemInterestSimpleTextBinding bind(@NonNull View view) {
        int i10 = R.id.interest_indicator;
        View viewA = ViewBindings.a(view, R.id.interest_indicator);
        if (viewA != null) {
            i10 = R.id.interest_name;
            AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.interest_name);
            if (autoSizingTextView != null) {
                return new ItemInterestSimpleTextBinding((LinearLayout) view, viewA, autoSizingTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
