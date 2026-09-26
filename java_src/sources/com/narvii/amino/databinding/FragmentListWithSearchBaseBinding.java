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
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes8.dex */
public final class FragmentListWithSearchBaseBinding implements ViewBinding {

    @NonNull
    public final TintButton icSearch;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final LinearLayout searchLayout;

    @NonNull
    public final LinearLayout searchLayoutContainer;

    @NonNull
    public static FragmentListWithSearchBaseBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentListWithSearchBaseBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_list_with_search_base, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentListWithSearchBaseBinding(@NonNull LinearLayout linearLayout, @NonNull TintButton tintButton, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3) {
        this.rootView = linearLayout;
        this.icSearch = tintButton;
        this.searchLayout = linearLayout2;
        this.searchLayoutContainer = linearLayout3;
    }

    @NonNull
    public static FragmentListWithSearchBaseBinding bind(@NonNull View view) {
        int i10 = R.id.ic_search;
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.ic_search);
        if (tintButton != null) {
            i10 = R.id.search_layout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.search_layout);
            if (linearLayout != null) {
                i10 = R.id.search_layout_container;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.search_layout_container);
                if (linearLayout2 != null) {
                    return new FragmentListWithSearchBaseBinding((LinearLayout) view, tintButton, linearLayout, linearLayout2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
