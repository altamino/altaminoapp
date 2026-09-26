package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes6.dex */
public final class FragmentSearchBaseBinding implements ViewBinding {

    @NonNull
    public final FrameLayout masterBackground;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final GlobalSearchBarBinding searchBar;

    @NonNull
    public final FrameLayout searchContainer;

    @NonNull
    public static FragmentSearchBaseBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentSearchBaseBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_search_base, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentSearchBaseBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull GlobalSearchBarBinding globalSearchBarBinding, @NonNull FrameLayout frameLayout3) {
        this.rootView = frameLayout;
        this.masterBackground = frameLayout2;
        this.searchBar = globalSearchBarBinding;
        this.searchContainer = frameLayout3;
    }

    @NonNull
    public static FragmentSearchBaseBinding bind(@NonNull View view) {
        int i10 = R.id.master_background;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.master_background);
        if (frameLayout != null) {
            i10 = R.id.search_bar;
            View viewA = ViewBindings.a(view, R.id.search_bar);
            if (viewA != null) {
                GlobalSearchBarBinding globalSearchBarBindingBind = GlobalSearchBarBinding.bind(viewA);
                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.search_container);
                if (frameLayout2 != null) {
                    return new FragmentSearchBaseBinding((FrameLayout) view, frameLayout, globalSearchBarBindingBind, frameLayout2);
                }
                i10 = R.id.search_container;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
