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

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentTopicSearchBinding implements ViewBinding {

    @NonNull
    public final FrameLayout masterBackground;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final GlobalSearchBarBinding searchBar;

    @NonNull
    public static FragmentTopicSearchBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentTopicSearchBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_topic_search, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentTopicSearchBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull GlobalSearchBarBinding globalSearchBarBinding) {
        this.rootView = frameLayout;
        this.masterBackground = frameLayout2;
        this.searchBar = globalSearchBarBinding;
    }

    @NonNull
    public static FragmentTopicSearchBinding bind(@NonNull View view) {
        int i10 = R.id.master_background;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.master_background);
        if (frameLayout != null) {
            i10 = R.id.search_bar;
            View viewA = ViewBindings.a(view, R.id.search_bar);
            if (viewA != null) {
                return new FragmentTopicSearchBinding((FrameLayout) view, frameLayout, GlobalSearchBarBinding.bind(viewA));
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
